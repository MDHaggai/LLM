// SIDEBAR TOGGLE

let sidebarOpen = false;
const sidebar = document.getElementById('sidebar');

function openSidebar() {
  if (!sidebarOpen) {
    sidebar.classList.add('sidebar-responsive');
    sidebarOpen = true;
  }
}

function closeSidebar() {
  if (sidebarOpen) {
    sidebar.classList.remove('sidebar-responsive');
    sidebarOpen = false;
  }
}

// Load Dashboard
function loadDashboard() {
  document.getElementById('main-content').innerHTML = `
    <div class="main-title">
      <p class="font-weight-bold">DASHBOARD</p>
    </div>
    <div class="main-cards">
      <div class="card">
        <div class="card-inner">
          <p class="text-primary">USERS</p>
          <span class="material-icons-outlined text-blue">group</span>
        </div>
        <span class="text-primary font-weight-bold" id="user-count">Loading...</span>
      </div>
      <div class="card">
        <div class="card-inner">
          <p class="text-primary">QUIZZES UPLOADED</p>
          <span class="material-icons-outlined text-green">note_add</span>
        </div>
        <span class="text-primary font-weight-bold" id="quiz-count">Loading...</span>
      </div>
    </div>
    <div class="charts">
      <div class="charts-card">
        <p class="chart-title">Top 5 Quizzes</p>
        <div id="bar-chart"></div>
      </div>
      <div class="charts-card">
        <p class="chart-title">Quizzes Uploaded Over Time</p>
        <div id="area-chart"></div>
      </div>
    </div>
  `;
  loadDashboardData();
}

function loadUploadQuiz() {
  document.getElementById('main-content').innerHTML = `
    <div class="section-title">
      <h2>Upload Quiz Questions</h2>
    </div>
    <form action="upload_quiz.php" method="POST" class="needs-validation" novalidate>
      <div class="mb-3">
        <label for="language" class="form-label">Select Language</label>
        <select id="language" name="language" class="form-select" required>
          <option value="">Choose...</option>
          <option value="English">English</option>
          <option value="French">French</option>
          <option value="Spanish">Spanish</option>
          <option value="German">German</option>
          <option value="Russian">Russian</option>
          <option value="Chinese">Chinese</option>
          <option value="Italian">Italian</option>
        </select>
        <div class="invalid-feedback">
          Please select a language.
        </div>
      </div>
      <div class="mb-3">
        <label for="level" class="form-label">Select Level</label>
        <select id="level" name="level" class="form-select" required>
          <option value="">Choose...</option>
          <option value="beginner">Beginner</option>
          <option value="intermediate">Intermediate</option>
          <option value="advanced">Advanced</option>
        </select>
        <div class="invalid-feedback">
          Please select a level.
        </div>
      </div>
      <div class="mb-3">
        <label for="question" class="form-label">Question</label>
        <textarea id="question" name="question" class="form-control" rows="3" required></textarea>
        <div class="invalid-feedback">
          Please enter a question.
        </div>
      </div>
      <div class="mb-3">
        <label for="answer" class="form-label">Answer</label>
        <textarea id="answer" name="answer" class="form-control" rows="3" required></textarea>
        <div class="invalid-feedback">
          Please enter an answer.
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Upload</button>
    </form>
  `;

  // Enable Bootstrap validation styles
  (function () {
    'use strict';

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation');

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
  })();
}
function loadViewUsers() {
  fetch('../userview.php')
    .then(response => response.text())
    .then(data => {
      document.getElementById('main-content').innerHTML = `
        <div class="section-title">
          <h2>View Users</h2>
        </div>
        ${data}
      `;
    });
}

// Load Dashboard Data
function loadDashboardData() {
  // Fetch user count
  fetch('dashboard_user_count.php')
    .then(response => response.text())
    .then(data => {
      document.getElementById('user-count').innerText = data;
    });

  // Fetch quiz count
  fetch('dashboard_quiz_count.php')
    .then(response => response.text())
    .then(data => {
      document.getElementById('quiz-count').innerText = data;
    });

  // Render charts
  renderCharts();
}

function renderCharts() {
  // BAR CHART
  const barChartOptions = {
    series: [
      {
        data: [10, 8, 6, 4, 2] // Replace with dynamic data
      }
    ],
    chart: {
      type: 'bar',
      height: 350,
      toolbar: {
        show: false
      }
    },
    colors: ['#246dec', '#cc3c43', '#367952', '#f5b74f', '#4f35a1'],
    plotOptions: {
      bar: {
        distributed: true,
        borderRadius: 4,
        horizontal: false,
        columnWidth: '40%'
      }
    },
    dataLabels: {
      enabled: false
    },
    legend: {
      show: false
    },
    xaxis: {
      categories: ['English', 'French', 'Spanish', 'German', 'Russian'] // Replace with dynamic data
    },
    yaxis: {
      title: {
        text: 'Count'
      }
    }
  };

  const barChart = new ApexCharts(
    document.querySelector('#bar-chart'),
    barChartOptions
  );
  barChart.render();

  // AREA CHART
  const areaChartOptions = {
    series: [
      {
        name: 'Quizzes Uploaded',
        data: [31, 40, 28, 51, 42, 109, 100] // Replace with dynamic data
      }
    ],
    chart: {
      height: 350,
      type: 'area',
      toolbar: {
        show: false
      }
    },
    colors: ['#4f35a1'],
    dataLabels: {
      enabled: false
    },
    stroke: {
      curve: 'smooth'
    },
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'], // Replace with dynamic data
    markers: {
      size: 0
    },
    yaxis: {
      title: {
        text: 'Quizzes Uploaded'
      }
    },
    tooltip: {
      shared: true,
      intersect: false
    }
  };

  const areaChart = new ApexCharts(
    document.querySelector('#area-chart'),
    areaChartOptions
  );
  areaChart.render();
}

// Initialize the dashboard on page load
document.addEventListener('DOMContentLoaded', loadDashboard);
