<script>
	import Menu from './Menu.svelte';
	import { page } from '$app/stores';

	

	let scrollRef;

	

	function scrollLeft() {
		if (!scrollRef) return;
		scrollRef.scrollBy({ left: -scrollRef.clientWidth * 0.9, behavior: 'smooth' });
	}

	function scrollRight() {
		if (!scrollRef) return;
		scrollRef.scrollBy({ left: scrollRef.clientWidth * 0.9, behavior: 'smooth' });
	}
</script>

<!-- Replace old navbar with this -->
<Menu />

<!-- Dark blue bg-->
<div class="flex flex-col relative bg-gradient-to-tr from-[#020912] via-[#0b1320] to-[#101a2a] pb-24">

	<!-- About TIQ -->
	<div class="flex flex-col lg:flex-row items-center mt-16 px-4 sm:px-10 lg:mx-20 gap-10">
		<div class="flex flex-col flex-1">
			<h1 class="text-4xl sm:text-5xl lg:text-6xl font-[merriweather] text-[#70B5F4]">About TIQ</h1>
			<p class="mt-6 text-sm sm:text-base leading-relaxed font-light text-white pr-0 sm:pr-10">
				The Illuminati Quiz (TIQ), the annual inter collegiate quiz competition organised by Govt.
				Model Engineering College is one of the largest student organised Quiz in South India. Held
				in memory of the late Sandeep Menon. Like the last edition, Illuminati Quiz will also be
				open to all categories testing the experience and mettle of working professionals against
				the young blood of quizzing.
			</p>
			<p class="mt-4 text-sm sm:text-base leading-relaxed font-light text-white pr-0 sm:pr-10">
				The new normal paved way for quizeers across the country to be part of this prestigious
				event. It also garners a large number of participants from elite colleges like IIMs and
				IITs, and numerous schools across South India and is well known not just for its attractive
				prize money but also for providing a convivial quizzing experience.
			</p>
		</div>
		<img 
  class="w-40 sm:w-52 lg:w-96 mx-auto lg:mx-0 mt-6 lg:mt-0 mb-12 lg:mb-0"
  src="/media/tiq_lightblue.png" 
  alt="tiqlogo" 
/>

	</div>
</div>

<!-- Sandeep Menon -->
<div class="flex flex-col lg:flex-row bg-[#A9D1F7] px-4 sm:px-10 py-10 lg:py-20 gap-6">
	<img class="w-40 sm:w-60 mx-auto lg:mx-0" src="/media/sandeep_menon.png" alt="Sandeep Menon" />
	<div class="flex flex-col lg:ml-10 text-center lg:text-left">
		<h1 class="text-3xl sm:text-4xl lg:text-6xl font-[merriweather] text-[#020913] font-normal">Sandeep Menon</h1>
		<h2 class="mt-2 sm:mt-4 text-xl sm:text-2xl lg:text-4xl italic font-[merriweather] text-[#020913]">(1984) - (2008)</h2>
		<p class="mt-4 sm:mt-6 text-sm sm:text-base lg:text-base leading-relaxed text-[#020913]">
			Sandeep Menon (batch of 2006 - Model Engineering College) is the founder and guiding spirit of
			the 'The Illuminati'. An exceptional quizzer, he is affectionately known in local quizzing
			circles as 'The Illuminatus'. He was diagnosed with cancer in 2005. Despite deteriorating
			health, Sandeep pursued his academics with utmost commitment, led the placement cell to bring
			record number of jobs on campus and instilled the spirit of quizzing in MEC. Yet, his dream
			lives on through The Illuminati and its marquee event, The Illuminati Quiz.
		</p>
	</div>
</div>

<!-- Govt Model Engineering College -->
<div class="flex flex-col relative bg-gradient-to-tr from-[#020912] via-[#0b1320] to-[#101a2a] px-4 sm:px-10 lg:px-20 py-10 lg:py-20 gap-8">
	<div class="flex flex-col lg:flex-row items-center gap-6">
		<img 
  src="/media/college.png" 
  alt="college" 
  class="w-48 sm:w-64 lg:w-[28rem] mx-auto lg:mx-0 h-auto"
/>

		<h1 class="text-3xl sm:text-4xl lg:text-6xl text-[#70B5F4] font-light font-[merriweather] text-center lg:text-left">
			Govt. Model <br />Engineering College
		</h1>
	</div>
	<div class="flex flex-col lg:flex-row gap-6 font-light text-white leading-relaxed">
		<p class="flex-1">
			Govt. Model Engineering College, Kochi, a premier institute of engineering education in Kerala
			is not just another engineering college producing hordes of engineering graduates every year.
			Nurturing a very diverse community of budding innovators and entrepreneurs, MEC has emblazoned
			its name as one of the most sought-after destinations for students and recruiters alike. This
			attests to MEC being ranked the 27th best engineering institute in the country.<br /><br />
			Illuminati, the quizzing fraternity of Govt. Model Engineering College, Kochi is among the
			most active students' societies of the college having conducted at least over a hundred intra
			and inter collegiate quizzes.
		</p>
		<p class="flex-1">
			Founded by the late Sandeep Menon to foster the spirit of quizzing in the student community,
			Illuminati has grown into a recognisable name all across South India. The Illuminati organizes
			the weekly Thank God Ifs Anyday (TGIX) intra college student quiz which spans a wide range of
			subjects while bringing together avid quizzers from among the students to test their mettle
			against each other in a battle of wits.
		</p>
	</div>
</div>

