<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <!-- Montserrat Font -->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <div class="grid-container">
    <!-- Header -->
    <header class="header">
      <div class="menu-icon" onclick="openSidebar()">
        <span class="material-icons-outlined">menu</span>
      </div>
      <div class="header-left">
        <span class="material-icons-outlined">search</span>
      </div>
      <div class="header-right">
        <span class="material-icons-outlined">notifications</span>
        <span class="material-icons-outlined">email</span>
        <span class="material-icons-outlined">account_circle</span>
      </div>
    </header>
    <!-- End Header -->
    <!-- Sidebar -->
    <aside id="sidebar">
      <div class="sidebar-title">
        <div class="sidebar-brand">
          <span class="material-icons-outlined">inventory</span> Language Learning Admin
        </div>
        <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
      </div>
      <ul class="sidebar-list">
        <li class="sidebar-list-item">
          <a href="#" onclick="loadDashboard()">
            <span class="material-icons-outlined">dashboard</span> Dashboard
          </a>
        </li>
        <li class="sidebar-list-item">
          <a href="#" onclick="loadUploadQuiz()">
            <span class="material-icons-outlined">note_add</span> Upload Quiz Questions
          </a>
        </li>
        <li class="sidebar-list-item">
          <a href="#" onclick="loadViewUsers()">
            <span class="material-icons-outlined">group</span> View Users
          </a>
        </li>
        <li class="sidebar-list-item">
          <a href="#" target="_blank">
            <span class="material-icons-outlined">settings</span> Settings
          </a>
        </li>
      </ul>
    </aside>
    <!-- End Sidebar -->
    <!-- Main -->
    <main class="main-container" id="main-content">
      <!-- Dynamic content will be loaded here -->
    </main>
    <!-- End Main -->
  </div>
  <!-- Scripts -->
  <!-- ApexCharts -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.35.3/apexcharts.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
  <!-- Custom JS -->
  <script src="js/scripts.js"></script>
</body>
</html>
