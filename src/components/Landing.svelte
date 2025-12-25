<script>
	import { onMount } from 'svelte';
	import Footer from "./footer.svelte";
	import Sponsors from "./sponsors.svelte";

	let showMobileMenu = false;

	
	let tabs = [
		{ name: 'About Us', link: '/about' },
		{ name: 'Contact Us', link: '/contact' },
		{ name: 'Gallery', link: '/gallery' },
		{ name: 'Register', link: '/register' }
	];
</script>
<!--#0b1320. #101a2a-->
<div class="flex flex-col relative bg-gradient-to-tr from-[#101a2a] via-[#101a2a] to-[#101a2a]">

<header class="flex items-center justify-between px-4 md:px-10 py-4 bg-[#101a2a]">

  <!-- Logo -->
  <img class="w-20 h-21" src="/favicon.svg" alt="tiq" />

  <!-- Desktop Nav -->
  <nav class="hidden md:flex items-center space-x-6 text-[#F8F3E2] font-[merriweather] font-light text-lg tracking-wide">
    {#each tabs as tab}
      <a
        href={tab.link}
        class={tab.name === 'Register'
          ? 'bg-[#A9D1F7] text-[#020912] px-5 py-2 rounded-lg font-semibold hover:bg-[#8fc0f0]'
          : 'hover:text-[#70B5F4]'
        }
      >
        {tab.name}
      </a>
    {/each}
  </nav>

  <!-- Mobile Hamburger -->
  <button class="md:hidden" on:click={() => showMobileMenu = !showMobileMenu}>
    <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-[#F8F3E2]" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
        d={showMobileMenu ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16M4 18h16"} />
    </svg>
  </button>

</header>


<!-- Mobile Menu -->
{#if showMobileMenu}
  <div class="md:hidden flex flex-col bg-[#020912] font-[merriweather] text-[#F8F3E2] p-4 space-y-4">
    {#each tabs as tab}
      <a href={tab.link} class="hover:text-[#70B5F4]" on:click={() => showMobileMenu = false}>{tab.name}</a>
    {/each}
  </div>
{/if}


	

<div class="relative overflow-hidden flex flex-col lg:flex-row
             pt-6 md:pt-12 lg:pt-20
            min-h-[70vh] md:min-h-screen
            items-center justify-center lg:justify-between">

  <!-- MOBILE: TOP IMAGE -->
  <div class="lg:hidden w-full flex justify-center my-10">
  <img
    src="/media/pic1.png"
    alt="speaker"
    class="w-64 max-w-[80%] rounded-3xl shadow-xl"
  />
</div>

  <!-- TEXT -->
  <div class="flex flex-col flex-1 px-6 md:px-16 text-center lg:text-left my-10">
    <h1 class="text-[#70B5F4] font-[merriweather]
               text-2xl sm:text-5xl lg:text-7xl
               leading-snug sm:leading-tight">
      <span class="block">THE</span>
      <span class="block">ILLUMINATI QUIZ</span>
      <span class="block">2025</span>
    </h1>

    <p class="mt-2 text-sm sm:text-lg md:text-3xl text-[#70B5F4]">
      18th Edition
    </p>

    <p class="mt-2 text-xs sm:text-base md:text-xl text-[#70B5F4]">
      In memory of Sandeep Menon
    </p>

    <p class="mt-4 text-[#70B5F4]">
      3rd Jan 2026 · IMA House, Cochin
    </p>

    <a
  href="/register"
  class="mt-6 px-7 py-3 bg-[#70B5F4] rounded-full text-xl
         inline-flex w-fit self-center lg:self-start
         hover:bg-white"
>
  Register Now
</a>

  </div>

  <!-- MOBILE: BOTTOM IMAGE -->
  <div class="lg:hidden w-full flex justify-center my-10">
  <img
    src="/media/pic11.png"
    alt="audience"
    class="w-64 max-w-[80%] rounded-3xl shadow-xl"
  />
</div>


  <!-- DESKTOP ONLY (UNCHANGED) -->
  <img
    src="/media/pic1.png"
    class="hidden lg:block absolute -top-[72px] right-0 h-[60vh] rounded-b-[3rem]"
  />

  <img
    src="/media/pic2.png"
    class="hidden lg:block absolute -bottom-[72px] right-[22%] h-[50vh] rounded-t-[3rem]"
  />

</div>

 

<!-- Event Info Sections with Light Blue Background -->
<div class="flex flex-col gap-16 px-4 md:px-20 py-10 bg-[#A9D1F7]">
	
	<!-- Get ready for the Largest Quiz -->
	<div class="flex flex-col lg:flex-row items-center gap-10">
		<img class="w-full max-w-xs md:max-w-sm lg:max-w-sm" src="/media/pic3.png" alt="Frame49" />
		<div class="flex flex-col lg:w-1/2">
			<h1 class="text-4xl md:text-5xl lg:text-6xl font-[merriweather] text-[#020913]">
				Get ready for the Largest Quiz in India
			</h1>
			<p class="mt-4 text-base md:text-lg font-light text-[#020913]">
				With over 2000+ participants, including IIMs and IITs, here not just for our prize money but also for our convivial quizzing experience.
			</p>
		</div>
	</div>

	<!-- Cash Pool Section -->
	<div class="flex flex-col lg:flex-row items-center gap-10">
		<img class="w-full max-w-xs md:max-w-sm lg:max-w-sm" src="/media/pic4.png" alt="Frame48" />
		<div class="flex flex-col lg:w-1/2">
			<h1 class="text-4xl md:text-5xl lg:text-6xl font-[merriweather] text-[#020913]">
				With a Cash Pool totaling over ₹50,000
			</h1>
			<p class="mt-4 text-base md:text-lg font-light text-[#020913]">
				Cause nothing’s fun without proper incentive. Special thanks to our sponsors, primarily <b class="font-semibold">Ansys</b>
			</p>
			
		</div>
	</div>

	<!-- Hosted by Section -->
	<div class="flex flex-col lg:flex-row items-center gap-10">
		<div class="flex flex-col lg:w-1/2">
			<h1 class="text-4xl md:text-5xl lg:text-6xl font-[merriweather] text-[#020913]">
				Hosted by Major Chandrakanth Nair
			</h1>
			<p class="mt-4 text-base md:text-lg font-light text-[#020913]">
				One of India’s finest Quiz Masters, Major Chandrakanth Nair is here to give you that premium quizzing experience we know him for!
			</p>
		</div>
		<img class="w-full max-w-xs md:max-w-sm lg:max-w-sm" src="/media/pic5.png" alt="Frame47" />
	</div>
</div>



	<!-- TITLE SPONSOR SECTION -->
<div class="flex flex-col items-center bg-[#A9D1F7] py-16 px-4">
  <h1 class="text-4xl md:text-5xl font-[merriweather] text-[#020913] mb-10">
    Title Sponsor
  </h1>

  <img
    src="/media/ansys.png"
    alt="ANSYS"
    class="w-48 md:w-64 lg:w-72 object-contain"
  />
</div>


	<!-- CTA Section -->
	<div class="flex flex-col items-center bg-gradient-to-tr from-[#020912] via-[#0b1320] to-[#101a2a] text-center py-16 px-4">
		<h1 class="text-3xl sm:text-5xl md:text-6xl text-[#70B5F4] font-[merriweather]">Are you up against the best of India?</h1>
		<p class="mt-4 text-[#70B5F4] text-base font-[merriweather]">
			Register now to experience premium quizzing and win ₹55,000
		</p>
		<a href="/register" class="mt-6 px-5 py-2 bg-[#70B5F4] font-[merriweather] rounded-full text-xl hover:bg-white transition-all duration-300">
			Register Now
		</a>
		<p class="mt-4 text-[#70B5F4] font-[merriweather]"> Registration fees ₹200/Team. Free for School Students</p>
	</div>

	

</div>
