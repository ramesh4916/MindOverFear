<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="all_component/allcss.jsp"%>

<meta charset="UTF-8">
<title>Home Page</title>

<style type="text/css">
.main-div {
	width: 100%;
	height: 100vh;
	background-image:
		url(https://neurosciencenews.com/files/2023/07/depression-anxiety-concept-eurscience.jpg);
	background-size: cover;
}

#overlay {
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.659);
}

#overlay #mainHead {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #fff;
	text-align: center;
	font-family: sans-serif;
}

.main_heading {
	font-size: 4vw;
	letter-spacing: 3px;
	font-weight: bolder;
}

.main_para {
	color: #9E9E9E;
	font-family: cursive;
	font-style: italic;
}

.type_phobia {
	text-align: center;
	font-family: sans-serif;
	font-size: 3vw;
	font-weight: bolder;
}

.ppara1 {
	font-family: sans-serif;
	font-size: 1.6vw;
	text-align: justify;
}

.ppara {
	font-family: sans-serif;
	font-size: 1.4vw;
	text-align: justify;
}

.overview {
	font-family: sans-serif;
	font-weight: bold;
	font-size: 2.1vw;
}

.wap {
	font-family: sans-serif;
	font-weight: bold;
	font-size: 2vw;
}

.pparatable {
	font-family: sans-serif;
	font-size: 1vw;
}

.mcp {
	font-family: sans-serif;
	font-size: 1.5vw;
	font-weight: bold;
}

.mcppara {
	font-family: sans-serif;
	font-size: 1.2vw;
	text-align: justify;
}

.animal {
	font-family: sans-serif;
	font-weight: bold;
}

.pdiv {
	display: flex;
}

.left {
	width: 50%;
	height: 50vh;
	position: relative;
}

.lmain {
	width: 100%;
	font-family: sans-serif;
	font-size: 1.3vw;
	text-align: center;
	text-align: justify;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-family: sans-serif;
}

.leftother {
	width: 50%;
	height: 30vh;
}

.right {
	width: 50%;
	height: 50vh;
	position: relative;
	background: linear-gradient(to right, #e6e6fa, #ffffff);
	/* Example gradient from pink to orange */
	padding: 20px; /* Optional: add padding if needed */
	border-radius: 10px;
	/* Optional: add border-radius for rounded corners */
	display: flex;
	justify-content: center; /* Center the image horizontally */
	align-items: center; /* Center the image vertically */
}

#rimg2 {
	position: absolute;
	left: 20%;
}

.over-all {
	font-family: sans-serif;
	font-size: 1.2vw;
}
</style>

<style>
#contnr {
	margin-top: 30px;
	background-color: #385887;
}

.card-body {
	padding: 15px;
}

.plus-minus-icon {
	font-size: 20px;
	transition: transform 0.3s ease;
}

.collapse {
	padding: 15px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#headingOne {
	background-color:
}

.plusicons {
	color: #AE5D04;
	font-size: 1.5vw;
	font-weight: bold;
}

.hding {
	font-size: 1.5vw;
}

ul {
	list-style-type: none;
}
</style>




</head>
<body>
	<%@include file="all_component/navbar.jsp"%>



	<div class="main-div">

		<div id="overlay">

			<div id="mainHead">
				<h1 class="main_heading">
					<i class="fa-solid fa-brain"></i> Mind Over Fear
				</h1>
				<p class="main_para">Welcome to mind over fear platform designed
					to help you manage and overcome your fears and anxiety</p>
				<a href="login.jsp" class="btn btn-light"><i
					class="fa-solid fa-arrow-right"></i> Login</a>
			</div>

		</div>

	</div>







	<div
		class="container-sm p-3 mb-2 text-black text-center bg-secondary bg-gradient
	bg-opacity-10 mt-5 ">
		<h1 class="type_phobia">Phobias</h1>
		<p class="ppara1">A phobia is when you have intense or even
			overpowering fear and anxiety in certain situations or when you
			encounter certain objects. While phobias can involve the same things
			as ordinary fears, the effects of phobias are more severe. In the
			most severe cases, people with phobias critically limit their lives
			to avoid encountering what they fear.</p>
	</div>

	<div class="container-md mt-4">
		<h1 class="overview mb-0">Overview</h1>
		<br>
		<h2 class="wap">What are phobias?</h2>
		<p class="ppara">A phobia is when something causes you to feel
			fear or anxiety that’s so severe it consistently and overwhelmingly
			disrupts your life. Phobias are a type of anxiety disorder, and
			there’s one diagnosis for almost all of them: specific phobia. Only
			one phobia, agoraphobia, is a specific diagnosis.</p>
		<p class="ppara">When you aren’t in a situation that directly
			involves your phobia, you can recognize that the fear is much more
			severe than it should be. But knowing that doesn’t change how you
			feel. If you encounter something that triggers your phobia, you’ll
			feel overwhelming fear or anxiety. You might be able to keep
			functioning, but doing so will be extremely difficult.</p>







		<div class="container p-5 " id='contnr'>


			<!-- Example Content 1 -->
			<div class="card mb-3 p-4">
				<div class="" id="headingOne" data-toggle="collapse"
					data-target="#collapseOne">
					<h5 class="hding mb-2">
						<span class="plusicons">+</span> Type of Phobia
					</h5>
				</div>
				<div id="collapseOne" class="collapse">
					<div class="card-body">

						<p>There are three main groups of phobias which include:</p>
						<ul>
							<li><strong>Specific (simple) phobias</strong>, which are
								the most common and focus on specific objects.</li>
							<li><strong>Social phobia</strong>, which causes extreme
								anxiety in social or public situations.</li>
							<li><strong>Agoraphobia</strong>, which is the fear of being
								alone in public places from which there is no easy escape.</li>
						</ul>
						<p>
							<strong>Specific Or Simple Phobias</strong> produce intense fear
							of a particular object or situation that is, in fact, relatively
							safe. People who suffer from specific phobias are aware that
							their fear is irrational, but the thought of facing the object or
							situation often brings on a panic attack or severe anxiety.
						</p>
						<p>Specific phobias may include persistent fear of dogs,
							insects, or snakes; driving a car; heights; tunnels or bridges;
							thunderstorms; and/or flying. No one knows what causes them,
							though they seem to run in families and are slightly more
							prevalent in women. Specific phobias usually begin in adolescence
							or adulthood. They start suddenly and tend to be more persistent
							than childhood phobias. When children have specific phobias--for
							example, a fear of animals--those fears usually disappear over
							time, though they may continue into adulthood. No one knows why
							they persist in some people and disappear in others.</p>
						<p>
							<strong>Social Phobia</strong> can produce fear of being
							humiliated or embarrassed in front of other people. This problem
							may also be related to feelings of inferiority and low
							self-esteem, and can drive a person to drop out of school, avoid
							making friends, and remain unemployed.
						</p>
						<p>
							<strong>Agoraphobia</strong> causes people to suffer anxiety
							about being in places or situations from which it might be
							difficult or embarrassing to escape--such as being in a room full
							of people or in an elevator. In some cases, panic attacks can
							become so debilitating that the person may develop agoraphobia
							because they fear another panic attack. In extreme cases, a
							person with agoraphobia may be afraid to leave their house.
						</p>
						<p>Although this disorder is sometimes thought to be shyness,
							it is not the same thing. Shy people do not experience extreme
							anxiety in social situations, nor do they necessarily avoid them.
							In contrast, people with social phobia can be at ease with people
							most of the time, except in particular situations. Often social
							phobia is accompanied by depression or substance abuse.</p>
						<p>People suffering from social phobia may:</p>
						<ul>
							<li>1. View small mistakes as more exaggerated than they
								really are.</li>
							<li>2. Find blushing as painfully embarrassing.</li>
							<li>3. Feel that all eyes are on them.</li>
							<li>4. Fear speaking in public, dating, or talking with
								persons in authority.</li>
							<li>5. Fear using public restrooms or eating out.</li>
							<li>6. Fear talking on the phone or writing in front of
								others.</li>
						</ul>
					</div>
				</div>
			</div>



			<!-- Example Content 2 -->
			<div class="card mb-3 p-4">
				<div class="" id="headingTwo" data-toggle="collapse"
					data-target="#collapseTwo">
					<h5 class="hding mb-2">

						<span class="plusicons">+</span> Treatment
					</h5>
				</div>
				<div id="collapseTwo" class="collapse">
					<div class="card-body">

						<p>No one should have to endure the terror of phobias or the
							unrelenting anticipatory anxiety that often accompanies them.
							Phobias can be overcome with proper treatment. A person suffering
							from a phobia is suffering from a diagnosable illness, and mental
							health professionals take this illness very seriously. A complete
							medical and psychiatric evaluation should be conducted by a
							licensed physician or psychologist to obtain an accurate
							diagnosis and ensure that the symptoms are not being caused by
							another condition.</p>


						<p>Lastly, it is crucial to comply with treatment, and to work
							closely with the therapist in order to achieve success.
							Behavioral therapy and cognitive-behavioral therapy are very
							effective in treating these disorders. Behavioral therapy focuses
							on changing specific actions and uses different techniques to
							stop this behavior. One technique involves diaphragmatic
							breathing which is a form of deep-breathing. Another technique
							called exposure therapy gradually exposes the patient to the
							object or situation which frightens him/her and helps the patient
							to develop coping skills.</p>


						<p>Cognitive-behavioral therapy teaches the persons new skills
							in order to react differently to the situations which trigger the
							anxiety or panic attacks. Patients also learn to understand how
							their thinking patterns contribute to the symptoms and how to
							change their thinking to reduce or stop these symptoms.</p>
					</div>
				</div>
			</div>



			<!-- Example Content 3 -->
			<div class="card mb-2 p-4 ">
				<div class="" id="headingThree" data-toggle="collapse"
					data-target="#collapseThree">
					<h5 class="hding mb-2">
						<span class="plusicons">+</span> Other Resources
					</h5>
				</div>
				<div id="collapseThree" class="collapse">
					<div class="card-body">
						<ul>
							<li><strong>988 Suicide & Crisis Lifeline</strong><br>
								Phone: 988<br> Website: <a href="https://988lifeline.org"
								target="_blank">988lifeline.org</a></li>
							<li><strong>National Institute of Mental Health</strong><br>
							<br> Phone: 866-615-6464<br> Website: <a
								href="https://www.nimh.nih.gov" target="_blank">www.nimh.nih.gov</a>
							</li>
							<li><strong>Social Anxiety Association</strong><br>
							<br> Website: <a href="http://socialphobia.org/"
								target="_blank">socialphobia.org</a></li>
							<li><strong>American Psychiatric Association</strong><br>
							<br> Phone: 703-907-7300<br> Website: <a
								href="https://www.psychiatry.org/" target="_blank">www.psychiatry.org</a>
							</li>
							<li><strong>Anxiety and Depression Association of
									America</strong><br> Address: 8730 Georgia Ave # 600, Silver
								Spring, MD 20910<br> Phone: (240) 485-1001<br>
							<br> Website: <a href="https://www.adaa.org" target="_blank">www.adaa.org</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>













		<h4 class="mcp mt-4">The most common phobias</h4>
		<p class="mcppara">Some of the most common phobias, by category,
			include:</p>


		<h5 class="animal p-2">Animals</h5>
		<div class="pdiv">

			<div class="right">
				<img src="img/animals.png" class="img-fluid" alt="animal">
			</div>

			<div class="left">

				<div class='lmain'>
					<mark>
						<strong> Animal phobias</strong>
					</mark>
					are a specific type of phobia characterized by an intense,
					irrational fear of certain animals. These phobias can vary in
					severity, from mild anxiety to full-blown panic attacks when
					encountering or even thinking about the feared animal. Animal
					phobias are one of the most common types of specific phobias and
					can significantly impact an individual's quality of life.<br>
					<br> <a href="login.jsp" class="btn btn-primary">Learn
						More</a>

				</div>



			</div>





		</div>

		<h5 class="animal mt-3">Natural environment</h5>
		<div class="pdiv">
			<div class="left">

				<div class='lmain p-2'>
					<mark>
						<strong> Natural environment phobia</strong>
					</mark>
					is a specific type of phobia characterized by an intense,
					irrational fear of natural elements or environments, such as
					heights, storms, water, or darkness. Individuals with this phobia
					may experience significant anxiety or panic when exposed to these
					elements, which can interfere with daily activities and quality of
					life.<br> <br> <a href="login.jsp"
						class="btn btn-primary">Learn More</a>

				</div>


			</div>



			<div class="right">
				<img id="rimg2"
					src="https://png.pngtree.com/png-vector/20240130/ourmid/pngtree-man-with-fear-or-phobia-of-heights-flat-illustration-isolated-png-image_11519003.png"
					class="img-fluid" alt="animal">

			</div>
		</div>

		<h5 class="animal p-2">Blood, medical procedures or injuries</h5>
		<div class="pdiv">

			<div class="right">
				<img id="needles_img" src="img/nedles.png" class="img-fluid"
					alt="animal">

			</div>
			<div class="left mb-5">

				<div class='lmain p-2'>
					<mark>
						<strong> Blood, medical procedures, or injury phobia</strong>
					</mark>
					iis a specific type of phobia characterized by an intense,
					irrational fear of blood, medical procedures (such as injections or
					surgeries), or injuries. This phobia can lead to severe anxiety,
					dizziness, fainting, or panic attacks when confronted with these
					situations. It can also cause individuals to avoid necessary
					medical treatments, which may negatively impact their health and
					well-being.<br> <br> <a href="login.jsp"
						class="btn btn-primary">Learn More</a>

				</div>

			</div>


		</div>














		<div class="collapse" id="collapseExample">

			<div class="card card-body">phobia</div>

		</div>




		<div class="collapse" id="collapseExample1">

			<div class="card card-body">Axiety</div>

		</div>






	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<%@include file="all_component/footer.jsp"%>
</body>
</html>