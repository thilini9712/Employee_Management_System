<nav class="navbar navbar-expand-lg bg-light " style="background-color: #1266f1 !important;">
  <div class="container-fluid ">
    <a class="navbar-brand" href="#"><span class="sinhala-name-nav">EMS</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item" onclick="clickStudent()">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home">Home</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${pageContext.request.contextPath}/addNew">ADD Employee</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/view" >VIEW Employee</a>
        </li>
      </ul>

      <a href="${pageContext.request.contextPath}/logout">
        <button class="logout-btn" type="submit"> Log out </button>
      </a>

    </div>
  </div>
</nav>


