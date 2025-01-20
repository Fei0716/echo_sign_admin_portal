import ApexCharts from 'apexcharts';

console.log("JavaScript file is loaded!");


const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})



//dem
// var options = {
// 	chart: {
// 	  type: 'line'
// 	},
// 	series: [{
// 	  name: 'sales',
// 	  data: [30,40,35,50,49,60,70,91,125]
// 	}],
// 	xaxis: {
// 	  categories: [1991,1992,1993,1994,1995,1996,1997, 1998,1999]
// 	}
//   }
  
//   var chart = new ApexCharts(document.querySelector("#chart"), options);
  
//   chart.render();

  //demm
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





const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})