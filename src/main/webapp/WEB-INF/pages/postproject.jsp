<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Post-Project</title>
      <link rel="shortcut icon" href="./files/images/favicon-32x32.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
    <style>

      html, body {
     
      background: linear-gradient(#b8c0ff,#83c5be );      }
      body, div, form, input, select, textarea, label, p { 
     
     
      line-height: 22px;
      color:pink:
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 40px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px  #669999; 
      }
      .banner {
      position: relative;
      height: 350px;
      background-image: url("https://images.pexels.com/photos/3184325/pexels-photo-3184325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" );  
      background-size: cover;
   
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #669999;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #669999;
      color: #669999;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justfiy-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color:  #a3c2c2;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #669999;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #669999;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      height: 50px;
      padding: 5px;
      border: none;
      border-radius: 5px; 
      background:  #669999;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #a3c2c2;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
       
      
     
    </style>
    
     <link rel="stylesheet" href="style.css" />
    
  </head>
  <body>
  
  
  
    <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="" href="homec">
            <img src="./files/images/logo.png" alt="" />
            <span>
             ProjectPulse
            </span>
          </a>
          <br>
          </nav>
           
    
    <div class="testbox">
    <form id="postProjectForm" action="postprojectdata" method="post" enctype="multipart/form-data">
    <div class="banner">
        <h1>Post Project <i class="fa-solid fa-laptop-code"></i>, What you need done?</h1>
    </div>
    <div class="colums">
        <div class="item">
            <label for="projectd">Project Description<span>*</span></label>
            <textarea id="projectDescription" name="projectd" rows="4" cols="50" ></textarea>
        </div>
        <div class="item">
            <label for="projectt">Project Title<span>*</span></label>
            <input type="text" id="projectTitle" name="projectt" placeholder="AI Chat bot" />
        </div>
        <div class="item">
            <label for="projectfile">Project Documentation<span>*</span></label>
            <input type="file" id="projectFile" name="projectfile" accept=".pdf,.doc,.docx" required />
        </div>
        <br><br>
        <div class="item">
            <label for="projects">Relevant skills needed for this Project?<span>*</span></label>
            <br>
            <small>Enter up to 5 skills that best describe your project. Freelancers will use these skills to find projects they are most interested and experienced in.</small>
            <input id="skills" name="projects" required />
            <h6>Suggested skills: MySQL, Web Hosting, Software Testing, Engineering, Software Architecture</h6>
        </div>
        <br><br>
        <div class="question">
            <label>What is your estimated budget or Salary for Project?</label>
            <input type="text" id="budget" name="projectb" placeholder="10000,20000" title="Please enter a valid number." required />
        </div>
        <br>
        <br>
         <br>
        <br>
         <br>
        <br>
           </div>
        <c:forEach items="${kk}" var="e">
        
            <label>Company Name</label>
            <input type="text" name="projectc" value="${e.name}" readonly />
            <label>Company Email</label>
            <input type="text" name="projecte" value="${e.email}" readonly />
        </c:forEach>
        <br>
        <h4>${message}</h4>
        <button type="submit">Submit</button>
 
</form>
    </div>
    
    <script>
document.getElementById('postProjectForm').addEventListener('submit', function(event) {
    var form = event.target;
    var projectDescription = form.elements['projectd'].value.trim();
    var projectTitle = form.elements['projectt'].value.trim();
    var skills = form.elements['projects'].value.trim();
    var budget = form.elements['projectb'].value.trim();

    // Ensure project description is not empty
    if (projectDescription === "") {
        alert('Project description cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure project title is not empty
    if (projectTitle === "") {
        alert('Project title cannot be empty.');
        event.preventDefault();
        return;
    }

    // Ensure skills are not empty
    if (skills === "") {
        alert('Please enter relevant skills.');
        event.preventDefault();
        return;
    }

    
});
</script>
    
    
    
    
    
    
      <!-- Footer section Start -->
  
   <%@ include file="footerfile.jsp" %>

  <!-- Footer Section end -->
    
    
    
  </body>
</html>