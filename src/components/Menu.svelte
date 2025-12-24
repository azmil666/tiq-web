<script>
    import { page } from '$app/stores';
let tabs = [
    { name: 'About Us', link: '/about' },
    { name: 'Contact Us', link: '/contact' },
    { name: 'Gallery', link: '/gallery' },
    { name: 'Register', link: '/register' }
  ];

  let showMenu = $state(false);
  function toggleMenu() {
    showMenu = !showMenu;
  }
</script>

<!-- NAVBAR WRAPPER -->
<div class="bg-gradient-to-tr from-[#020912] via-[#020912] to-[#020912]">
	
	<header class="flex items-center justify-between px-4 sm:px-6 lg:px-12 py-3 relative">

		<!-- Logo -->
		<a href="/" class="flex-shrink-0">
			<img class="w-16 sm:w-20 h-auto" src="/favicon.svg" alt="tiq" />
		</a>

		<!-- DESKTOP NAV 
		<nav class="hidden md:flex ml-auto gap-6 text-lg">
			{#each tabs as tab}
				<a
					href={tab.link}
					class="text-[#F8F3E2] px-4 py-1 font-light 
					{$page.url.pathname === tab.link ? 'underline underline-offset-4 font-extrabold' : ''}
					hover:text-[#70B5F4] transition"
				>
					{tab.name}
				</a>
			{/each}
		</nav> -->
		<nav class="hidden md:flex ml-auto gap-6 text-lg items-center">
  {#each tabs as tab}
    <a
      href={tab.link}
      class={`px-4 py-1 font-[merriweather] transition
        ${$page.url.pathname === tab.link ? ' font-[merriweather]' : ''}
        ${tab.name === 'Register'
          ? 'bg-[#A9D1F7] text-[#0b1320] rounded-lg px-5 py-2 font-semibold hover:bg-[#8fc0f0]'
          : 'text-[#F8F3E2] hover:text-[#70B5F4]'
        }
      `}
    >
      {tab.name}
    </a>
  {/each}
</nav>


		<!-- MOBILE HAMBURGER -->
		<button 
			class="md:hidden ml-auto text-[#F8F3E2] text-3xl"
			on:click={toggleMenu}
		>
			{showMenu ? "✕" : "☰"}
		</button>

		<!-- MOBILE MENU -->
		{#if showMenu}
			<div class="absolute top-full left-0 w-full bg-[#0b1320] border-t border-[#1a2a40] md:hidden shadow-lg z-20">
				<div class="flex flex-col p-4">
					{#each tabs as tab}
						<a
							href={tab.link}
							class="text-[#F8F3E2] py-2 px-1 text-lg border-b border-[#1a2a40] 
							hover:text-[#70B5F4] transition"
							on:click={toggleMenu}
						>
							{tab.name}
						</a>
					{/each}
				</div>
			</div>
		{/if}

	</header>
</div>