<script>
	import { page } from '$app/stores';
import Menu from './Menu.svelte';
	

	// Gallery state
	let selectedYear = $state(2024);
	let preview = null;

	const gallery = {
		2021: ["/media/2021(1).webp","/media/2021(2).webp","/media/2021(3).webp"],
		2022: ["/media/2022(1).webp","/media/2022(2).webp","/media/2022(3).webp"],
		2023: ["/media/2023(1).webp","/media/2023(2).webp","/media/2023(3).webp"],
		2024: ["/media/2024(1).webp","/media/2024(2)-2.webp","/media/2024(3).webp"]
	};

	function setYear(year) { selectedYear = year; }
</script>

<style>
	.no-scrollbar::-webkit-scrollbar { display: none; }
	.no-scrollbar { -ms-overflow-style: none; scrollbar-width: none; }
</style>
<Menu/>


<!-- MAIN GALLERY -->
<div class="min-h-screen bg-gradient-to-tr from-[#101a2a] via-[#101a2a] to-[#101a2a] py-16 px-4 sm:px-6 lg:px-12">
	
	<h1 class="text-center text-4xl md:text-5xl font-[Merriweather] text-[#70B5F4] mb-12">
		Gallery
	</h1>

	<!-- YEAR SELECTOR -->
	<div class="flex justify-center gap-3 sm:gap-6 flex-wrap mb-10">
		{#each [2021,2022, 2023, 2024] as yr}
			<button
				on:click={() => setYear(yr)}
				class={`px-5 py-2 rounded-full border border-[#70B5F4] transition
					${selectedYear === yr ? 'bg-[#70B5F4] text-black font-semibold' : 'text-[#70B5F4] hover:bg-[#143253]'}`}
			>
				{yr}
			</button>
		{/each}
	</div>

	<!-- IMAGE GRID 
	<div class="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-6 mx-auto max-w-6xl no-scrollbar">-->
	<div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 md:gap-6 mx-auto max-w-6xl no-scrollbar">

		{#each gallery[selectedYear] as img}
			<img
				src={img}
				alt="gallery"
				loading="lazy"
                decoding="async"
				class="rounded-lg border border-[#1a2a40] cursor-pointer hover:opacity-80 transition  w-full aspect-[4/3] object-cover"
				on:click={() => preview = img}
			/>
		{/each}
	</div>

	<!-- IMAGE PREVIEW -->
	{#if preview}
		<div class="fixed inset-0 bg-black/80 flex justify-center items-center p-4 z-50">
			<div class="relative max-w-[90vw] max-h-[90vh]">
				<img src={preview} loading="eager"
                     decoding="async" class="w-full h-full object-contain rounded-lg shadow-lg" />
				<button
					on:click={() => preview = null}
					class="absolute top-2 right-2 text-white text-3xl hover:scale-110"
				>✕</button>
			</div>
		</div>
	{/if}
</div>

