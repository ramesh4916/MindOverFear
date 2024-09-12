<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file='all_component/allcss.jsp' %>

    <meta charset="UTF-8">
    <title>Success Stories - Mind over Fear</title>
    <link rel="stylesheet" href="styles.css">
    
     <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color:#9bb6b8;
            color: #202a2c;
        }
        .story-section {
            padding: 50px 15px;
        }
        .story-header {
            font-size: 36px;
            font-weight: 600;
            text-align: center;
            color: #202a2c;
            margin-bottom: 40px;
        }
        .story {
            margin-bottom: 50px;
        }
        .story-title {
            font-size: 28px;
            color: #343a40;
            margin-bottom: 15px;
        }
        .story-content {
            font-size: 18px;
            line-height: 1.6;
        }
        .story img {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }
        
       
       }
    </style>
</head>
<body>
<%@include file='all_component/navbar.jsp'  %>
<section class="story-section">
    <div class="container">
        <div class="story-header">
            Seven Stories of People Who Overcame the Fear of Public Speaking
        </div>

        <!-- Story 1: Karen -->
        <div class="story">
            <h2 class="story-title">Karen's Story</h2>
            <p class="story-content">
                Karen's fear of public speaking began after a panic attack during an orchestra audition at age 12. She spent years avoiding public situations, pursuing a career in IT. However, after taking the Fear-less course, she realized her fear was exaggerated in her own mind. Today, Karen confidently addresses classrooms as a primary school teacher.
            </p>
            <blockquote class="story-quote">
                "The nerves were always worse in my head than they appeared to others."
            </blockquote>
        </div>

        <!-- Story 2: Hamish -->
        <div class="story">
            <h2 class="story-title">Hamish's Story</h2>
            <p class="story-content">
                Hamish avoided public speaking for years after freezing during a wedding toast. His fear paralyzed him in social situations. With preparation and small steps through the Fear-less course, he gradually gained confidence. Now, Hamish embraces opportunities to speak, especially at family gatherings.
            </p>
            <blockquote class="story-quote">
                "Taking one step at a time made all the difference in overcoming my fear."
            </blockquote>
        </div>

        <!-- Story 3: Melissa and Charlotte -->
        <div class="story">
            <h2 class="story-title">Melissa and Charlotte's Stories</h2>
            <p class="story-content">
                Despite excelling in their careers, Melissa and Charlotte both struggled with imposter syndrome and avoided leadership roles that required public speaking. Through the Fear-less course, they learned to see public speaking as a skill rather than a fear. Now, they actively seek leadership opportunities that involve speaking.
            </p>
            <blockquote class="story-quote">
                "Public speaking is a skill you can develop – it doesn't have to be a fear you avoid."
            </blockquote>
        </div>

        <!-- Story 4: Reza -->
        <div class="story">
            <h2 class="story-title">Reza's Story</h2>
            <p class="story-content">
                Reza, a GP and entrepreneur, struggled with anxiety despite his strong communication skills. After joining Toastmasters and practicing mindfulness, he reduced his anxiety and now confidently speaks at international conferences and leads major meetings.
            </p>
            <blockquote class="story-quote">
                "Mindfulness helped me stay present and in control during my speeches."
            </blockquote>
        </div>

        <!-- Story 5: Sharon -->
        <div class="story">
            <h2 class="story-title">Sharon's Story</h2>
            <p class="story-content">
                Sharon's confidence crumbled after a shaky presentation at a course launch. Joining the Fear-less course helped her regain her self-belief, and now she's applying for new roles and speaking confidently in professional settings.
            </p>
            <blockquote class="story-quote">
                "Regaining my confidence was key to moving forward in my career."
            </blockquote>
        </div>

        <!-- Story 6: My Story -->
        <div class="story">
            <h2 class="story-title">My Story</h2>
            <p class="story-content">
                I founded Fear-less because I experienced firsthand the debilitating effects of public speaking anxiety. After joining Toastmasters, I rebuilt my confidence, and now I help others conquer their own fears of public speaking.
            </p>
            <blockquote class="story-quote">
                "If I could overcome my fear, anyone can. It's about taking control."
            </blockquote>
        </div>
    </div>
</section>

    
    <%@ include file="/all_component/footer.jsp" %>
</body>
</html>
