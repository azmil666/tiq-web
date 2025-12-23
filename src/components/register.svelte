<script>
  import { page } from '$app/stores';
  import Menu from './Menu.svelte';
</script>

<Menu/>

<!-- REGISTER SECTION -->
<div class="flex flex-col lg:flex-row items-start justify-center gap-10 px-6 md:px-12 py-20 bg-[#0b1320] min-h-screen">
  <!-- LEFT BOX -->
  <div class="bg-[#A9D1F7] p-8 rounded-2xl flex-1 max-w-lg shadow-lg w-full">
    <h2 class="text-3xl text-[#0b1320] font-[merriweather] mb-4">General Rules</h2>

    <ul class="list-decimal list-inside text-[#0b1320]/90 text-lg mb-6 leading-relaxed space-y-2 font-lora">
      <li>The quizmaster’s decision will be final and binding.</li>
      <li>Teams must adhere strictly to the event schedule and reporting time.</li>
      <li>Use of mobile phones or external aids during the quiz is prohibited.</li>
      <li>The organizers reserve the right to modify the quiz format or rules if required.</li>
      <li>Any form of misconduct will result in immediate disqualification.</li>
    </ul>

    <a href="/media/TIQ.pdf" download
       class="px-6 py-3 rounded-full bg-[#0b1320] text-[#A9D1F7] font-[merriweather] hover:bg-[#143253] transition-all duration-300 inline-block">
      Download Rules PDF
    </a>
  </div>

  <!-- RIGHT -->
  <div class="flex flex-col flex-1 max-w-md w-full">
    <div class="bg-[#101a2a] rounded-2xl p-6 space-y-4 mb-8 border border-[#1f2a3d]">
      <!-- Date -->
      <div class="flex items-center gap-3">
        <svg class="w-5 h-5 text-[#70B5F4]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
          <rect x="3" y="4" width="18" height="18" rx="2"></rect>
          <line x1="16" y1="2" x2="16" y2="6"></line>
          <line x1="8" y1="2" x2="8" y2="6"></line>
          <line x1="3" y1="10" x2="21" y2="10"></line>
        </svg>
        <span class="text-lg text-[#AACCCE]">
          <span class="font-[merriweather] text-[#AACCCE]">Date:</span> 3 Jan 2026
        </span>
      </div>

      <!-- Time -->
      <div class="flex items-center gap-3">
        <svg class="w-5 h-5 text-[#70B5F4]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
          <circle cx="12" cy="12" r="10"></circle>
          <polyline points="12 6 12 12 16 14"></polyline>
        </svg>
        <span class="text-lg text-[#AACCCE]">
          <span class="font-[merriweather] text-[#AACCCE]">Time:</span> 10:00 AM – 3:00 PM
        </span>
      </div>

      <!-- Venue -->
      <div class="flex items-center gap-3">
        <svg class="w-5 h-5 text-[#70B5F4]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
          <path d="M21 10c0 6-9 13-9 13S3 16 3 10a9 9 0 1 1 18 0z"></path>
          <circle cx="12" cy="10" r="3"></circle>
        </svg>
        <a href="https://www.google.com/maps/search/?api=1&query=IMA+House+Kaloor+Cochin" target="_blank" rel="noopener noreferrer" class="text-lg underline hover:text-[#70B5F4] text-[#AACCCE]">
          <span class="font-[merriweather] text-[#AACCCE]">Venue:</span>
          IMA House, Kaloor, Cochin
        </a>
      </div>
    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6 mt-10 w-full max-w-xl">
      <!-- Open & College -->
      <div class="bg-[#101a2a] rounded-2xl p-6 border border-[#1f2a3d] hover:border-[#70B5F4] hover:-translate-y-1 hover:shadow-xl cursor-pointer transition-all duration-300 flex flex-col h-full">
        <div class="flex items-start gap-4 mb-4">
          <div class="w-12 h-12 rounded-full bg-[#101a2a]/20 flex items-center justify-center text-[#70B5F4] text-xl">
            🎓
          </div>
          <div class="min-h-[72px]">
            <h3 class="text-lg font-[merriweather] text-white leading-snug">
              Open & College Category
            </h3>
            <p class="text-sm text-[#AACCCE] font-[merriweather]">
              For college students & open teams
            </p>
          </div>
        </div>
        <div class="flex-grow">
          <p class="text-sm text-[#AACCCE] leading-6">
            Participate with your college or as an open team.
            Ideal for university students, working professionals,
            and independent quiz enthusiasts.
          </p>
        </div>
        <a href="https://forms.gle/KNGZVa4qfeUWhTbU6" target="_blank"
           class="block text-center px-6 py-3 rounded-full bg-[#70B5F4] text-[#0b1320] font-[merriweather] hover:bg-[#5aa3e6] transition-all duration-300">
          Register for Open / College
        </a>
        <p class="mt-2 text-xs text-[#AACCCE] text-center">
          Opens Google Form in a new tab
        </p>
      </div>

      <!-- School -->
      <div class="bg-[#101a2a] rounded-2xl p-6 border border-[#1f2a3d] hover:border-[#70B5F4] hover:-translate-y-1 hover:shadow-xl cursor-pointer transition-all duration-300 flex flex-col h-full">
        <div class="flex items-start gap-4 mb-4">
          <div class="w-12 h-12 rounded-full bg-[#101a2a]/20 flex items-center justify-center text-[#70B5F4] text-xl">
            🏫
          </div>
          <div class="min-h-[72px]">
            <h3 class="text-lg font-[merriweather] text-white leading-snug">
              School Category
            </h3>
            <p class="text-sm text-[#AACCCE] font-[merriweather]">
              Exclusively for school students
            </p>
          </div>
        </div>
        <div class="flex-grow">
          <p class="text-sm text-[#AACCCE] leading-6">
            Participate with your school as an official team.
            Ideal for motivated students interested in quizzes,
            learning, and competitive academic events.
          </p>
        </div>
        <a href="https://forms.gle/A9BKHdcjM7gAfDk79" target="_blank"
           class="block text-center px-6 py-3 rounded-full bg-[#70B5F4] text-[#0b1320] font-[merriweather] hover:bg-[#5aa3e6] transition-all duration-300">
          Register for School
        </a>
        <p class="mt-2 text-xs text-[#AACCCE] text-center">
          Opens Google Form in a new tab
        </p>
      </div>
    </div>
  </div>
</div>
