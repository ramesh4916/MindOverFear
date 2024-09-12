<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@include file='all_component/allcss.jsp' %>
    <meta charset="UTF-8">
    <title>Phobia Resources - Mind over Fear</title>
    <link rel="stylesheet" href="styles.css"> 
    <!-- Link to y
    our CSS -->
    
   <style>
/* General Styling */
body {
    font-family: 'Arial', sans-serif;
    background-color:#9bb6b8;
    color: #333;
    margin: 0;
    padding: 0;
    line-height: 1.6;
}

a {
    color: #3498db;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Header Styling */
header {
     background-color:#9bb6b8; /* Dark blue */
    color: white;
    text-align: center;
    padding: 20px;
}

header h1 {
    margin: 0;
    font-size: 36px;
}

/* Main Content Styling */
main {
    max-width: 1000px;
    margin: 30px auto;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

main h2 {
    font-size: 28px;
    color: #2c3e50;
    margin-bottom: 15px;
}

main p {
    margin-bottom: 20px;
    color: #6c757d;
    font-size: 16px;
}

ul {
    list-style-type: disc;
    margin-left: 20px;
}

li {
    margin-bottom: 10px;
    color: #6c757d;
    font-size: 16px;
}

li strong {
    color: #333;
}

/* Footer Styling */
footer {
    background-color: #2c3e50;
    color: white;
    text-align: center;
    padding: 20px;
}

footer a {
    color: #3498db;
}
   </style>
</head>



<body>
<%@include file='all_component/navbar.jsp'  %>
    <!-- Header Section -->
    <!-- Header Section -->
    <header>
        <h1>Phobia Resources</h1>
    </header>

    <!-- Main Content Section -->
    <main>
        <!-- Friends and Family as Resources -->
        <section>
            <h2>Friends and Family as Resources for Phobia Support</h2>
            <p>Friends and family can often be very important sources of support for those battling any disorder, and phobias are no exception. If properly trained, your loved ones can help you manage your fears by performing tasks ranging from talking to you through a guided visualization to previewing a potential trigger situation for you.</p>
            <p>Getting the support you need often involves your loved ones, so if you feel comfortable, tell your family and friends about your phobia. Once you have shared your phobia, you can start to ask for help, giving them concrete ideas and suggestions.</p>
            <p>These are the people who are likely closest to you, and more often than not, they will do what they can to help you in your time of need, just as you would help them if they asked.</p>
        </section>

        <!-- Support Groups for Phobias -->
        <section>
            <h2>Support Groups for Phobias</h2>
            <p>Support groups can act as another important source of support. These are groups of people who share similar concerns or disorders. They meet on a regular basis to discuss their concerns, share ideas and coping strategies, and socialize with each other.</p>
            <p>Support groups can be in-person or web-based. Some researchers question the therapeutic value of online groups, yet others feel they are a first step for those who suffer from severe social anxiety or agoraphobia.</p>
            <p>You can find both in-person and online support groups through a simple Internet search. Most groups list their membership requirements, meeting times, and other important information online.</p>
        </section>

        <!-- Organizations and Internet Resources -->
        <section>
            <h2>Organizations and Internet Resources</h2>
            <ul>
                <li><strong>National Alliance on Mental Illness:</strong> An excellent starting point for finding local resources, online communities, and detailed mental health information.</li>
                <li><strong>Mental Health America:</strong> One of the leading nonprofit mental health organizations in the U.S., providing fact sheets, support group locators, and more.</li>
                <li><strong>Healthy Minds:</strong> The consumer-education arm of the American Psychiatric Association, offering up-to-date information and treatment options for mental disorders.</li>
            </ul>
        </section>

        <!-- Books and Magazines -->
        <section>
            <h2>Books and Magazines</h2>
            <p>Phobias are a common disorder, and many sufferers have published books about their experiences. Reading about someone else's experiences can help to combat the isolation that many people with phobias experience.</p>
            <p>Remember that everyone's experiences are different, and what worked for someone else may not necessarily work for you.</p>
        </section>

        <!-- Expanding Your Network -->
        <section>
            <h2>Expanding Your Network</h2>
            <p>If you're battling phobias, your natural tendency may be to avoid many social contacts. However, expanding your network of support is crucial for long-term health. Most people are happy to help if they know what to do, so don't hesitate to ask for specific assistance.</p>
            <p>In addition, it's important to coordinate efforts between your entire support network to ensure all your needs are met. Coping with a phobia is an ongoing battle, but having the right support can make a huge difference.</p>
        </section>
    </main>

    <%@ include file="/all_component/footer.jsp" %>
</body>
</html>
