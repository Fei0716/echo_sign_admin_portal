<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    public function index()
    {
        $totalMeets = DB::table('meetings')->count();

        $totalVisitors = DB::table('participants_meetings')
            ->distinct('participant_id')
            ->count('participant_id');

        $todaysVisitors = DB::table('participants_meetings')
            ->whereDate('created_at', today())
            ->distinct('participant_id')
            ->count('participant_id');

        $totalGestures = 23;

        $totalMeetingMinutes = DB::table('participants_meetings')
            ->whereNotNull('updated_at')  // Or 'deleted_at'
            ->whereNotNull('created_at')
            ->selectRaw('SUM(TIMESTAMPDIFF(MINUTE, created_at, updated_at)) AS total_minutes')
            ->value('total_minutes');

        $userTraffic = DB::table('participants_meetings')
            ->select(DB::raw('DATE(created_at) as date'), DB::raw('COUNT(DISTINCT participant_id) as total_visitors'))
            ->groupBy(DB::raw('DATE(created_at)'))
            ->orderBy('date', 'asc')
            ->get();

        $totalMeetingHours = $totalMeetingMinutes / 60;
        // $totalGestures = $totalGestures ?? 0;

        return view('dashboardadmin', compact(
            'totalMeets', 
            'totalVisitors', 
            'todaysVisitors', 
            'totalGestures', 
            'totalMeetingHours',
            'userTraffic'
        ));
    }

}
