<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	{{-- @vite(['resources/js/app.js']) --}}
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	{{-- <script src="{{ asset('js/script.js') }}"></script>
	<script src="{{ mix('js/script.js') }}"></script> --}}
	<title>AdminHub</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">EchoSign</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			
		</ul>
		<ul class="side-menu">
			{{-- <li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li> --}}
			{{-- <li>
				<a href="{{ route('login') }}" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li> --}}
			{{-- <li>
				<form method="POST" action="{{ route('logout') }}">
					@csrf
					<button type="submit" class="logout">
						<i class='bx bxs-log-out-circle'></i>
						<span class="text">Logout</span>
					</button>
				</form>
			</li> --}}
			<li>
				<a href="{{ route('logout') }}" class="logout" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
					<i class='bx bxs-log-out-circle'></i>
					<span class="text">Logout</span>
				</a>
				<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
					@csrf
				</form>
			</li>
			
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			{{-- <i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				<img src="img/people.png">
			</a> --}}
		</nav>
		<!-- NAVBAR -->



		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				{{-- <a href="#" class="btn-download">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a> --}}
			</div>

			<ul class="box-info">
				<li>
					<i class='bx bx-video'></i>
					<span class="text">
						<h3>{{ $totalMeets }}</h3>
						<p>Total Meets Created</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-user' ></i>
					<span class="text">
						<h3>{{ $totalVisitors }}</h3>
						<p>Total Participants</p>
					</span>
				</li>
				<li>
					{{-- <i class='bx bx-male-female' ></i> --}}
					{{-- <i class='bx bxs-user-pin' ></i> --}}
					<i class='bx bxs-user-voice' ></i>
					<span class="text">
						<h3>{{ $todaysVisitors }}</h3>
						<p>Today's Total Visitors</p>
					</span>
				</li>
			</ul>

			<ul class="box-info2">
				<li>
					{{-- <i class='bx bxs-calendar-check' ></i> --}}
					<i class='bx bxs-hand' ></i>
					<span class="text">
						<h3>{{ $totalGestures }}</h3>
						<p>Total Gestures</p>
					</span>
				</li>
				<li>
					{{-- <i class='bx bxs-group' ></i> --}}
					<i class='bx bxs-time-five' ></i>
					<span class="text">
						<h3>{{ $totalMeetingHours }}</h3>
						<p>Average Participants per Meeting</p>
					</span>
				</li>
				{{-- <li>
					<i class='bx bxs-dollar-circle' ></i>
					<span class="text">
						<h3>$2543</h3>
						<p>Total Sales</p>
					</span>
				</li> --}}
			</ul>


			{{-- -------------------------------------------------CHART---------------------------------------------- --}}

			<section class="chart-section bar-chart" id="bar-chart">
				<div class="chart-wrapper">
					<div class="dem">
						<i class='bx bx-line-chart' ></i>
						<h2 class="chart-heading">User Traffic</h2>
					</div>
					<!-- chart canva -->
					{{-- <canvas id="js-bar-chart"></canvas>
					 --}}
					 <div class="chart">
						<div id="chart"></div>
					</div>
				</div>
			</section>

			


			{{-- <div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recent Orders</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th>User</th>
								<th>Date Order</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status process">Process</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="todo">
					<div class="head">
						<h3>Todos</h3>
						<i class='bx bx-plus' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<ul class="todo-list">
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
					</ul>
				</div>
			</div> --}}
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>


	{{-- <script>
			var options = {
		series: [{
		name: 'series1',
		data: [31, 40, 28, 51, 42, 109, 100]
	}, {
		name: 'series2',
		data: [11, 32, 45, 32, 34, 52, 41]
	}],
		chart: {
		height: 350,
		type: 'area'
	},
	dataLabels: {
		enabled: false
	},
	stroke: {
		curve: 'smooth'
	},
	xaxis: {
		type: 'datetime',
		categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
	},
	tooltip: {
		x: {
		format: 'dd/MM/yy HH:mm'
		},
	},
	};

	var chart = new ApexCharts(document.querySelector("#chart"), options);
	chart.render();
	</script> --}}

	{{-- -------------------------------------------------------------------------------------------- --}}

	<script>
		var trafficData = @json($userTraffic); // Convert PHP data to JavaScript

		// Format the data for ApexCharts
		var chartData = trafficData.map(function(item) {
			return {
				x: new Date(item.date),  // Convert date string to a Date object
				y: item.total_visitors   // Number of visitors
			};
		});

		var options = {
			series: [{
				name: 'User Traffic',
				data: chartData  // Use dynamic data here
			}],
			chart: {
				height: 350,
				type: 'area'
			},
			dataLabels: {
				enabled: false
			},
			stroke: {
				curve: 'smooth'
			},
			xaxis: {
				type: 'datetime',
				categories: trafficData.map(function(item) { return new Date(item.date).getTime(); })  // Use dates as categories (timestamps)
			},
			tooltip: {
				x: {
					format: 'dd/MM/yy'
				},
			},
		};

		var chart = new ApexCharts(document.querySelector("#chart"), options);
		chart.render();
	</script>
</body>
</html>