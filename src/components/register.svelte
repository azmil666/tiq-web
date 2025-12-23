<script>
  import { page } from '$app/stores';
import Menu from './Menu.svelte';
  
</script>
<Menu/>



<!-- REGISTER SECTION -->
<div class="flex flex-col lg:flex-row items-center lg:items-start justify-center gap-10 px-6 md:px-12 py-20 bg-[#0b1320] min-h-screen">
  <!-- LEFT BOX -->
  <div class="bg-[#A9D1F7] p-8 rounded-2xl flex-1 max-w-lg shadow-lg w-full">
    <h2 class="text-3xl text-[#0b1320] font-bold mb-4">General Rules</h2>

    <p class="text-[#0b1320]/90 text-lg mb-6 leading-relaxed">
      1. The organizers reserve the right to make final decisions.<br/>
      2. The organizers reserve the right to make final decisions.<br/>
      3. The organizers reserve the right to make final decisions.<br/>
      4. The organizers reserve the right to make final decisions.<br/>
      5. The organizers reserve the right to make final decisions.
    </p>

    <a href="/rules.pdf" download
       class="px-6 py-3 rounded-full bg-[#0b1320] text-[#A9D1F7] font-bold hover:bg-[#143253] transition-all duration-300">
      Download Rules PDF
    </a>
  </div>

  <!-- RIGHT -->
  <div class="flex flex-col justify-center flex-1 max-w-md text-[#AACCCE] w-full h-full lg:h-auto">
    <div class="space-y-3 mt-10 lg:mt-0">
      <p class="text-lg"><span class="font-semibold">Date:</span> 3 Jan 2026</p>
      <p class="text-lg"><span class="font-semibold">Time:</span> 10:00 AM - 3:00 PM</p>
      <p class="text-lg">
  <span class="font-semibold">Venue:</span>
  <a
    href="https://www.google.com/maps/search/?api=1&query=IMA+House+Cochin"
    target="_blank"
    rel="noopener noreferrer"
    class="underline hover:text-[#70B5F4] transition-colors"
  >
    IMA House, Cochin
  </a>
</p>

    </div>

    <div class="flex flex-col gap-4 mt-6 self-start w-full sm:w-auto">
  <a href="https://forms.gle/KNGZVa4qfeUWhTbU6" target="_blank"
     class="px-6 py-3 rounded-full bg-[#70B5F4] text-[#0b1320] font-bold
            hover:bg-[#5aa3e6] transition-all duration-300 text-center">
    Open & College Category
  </a>

  <a href="https://forms.gle/A9BKHdcjM7gAfDk79" target="_blank"
     class="px-6 py-3 rounded-full bg-[#70B5F4] text-[#0b1320] font-bold
            hover:bg-[#5aa3e6] transition-all duration-300 text-center">
    School Category
  </a>
</div>

  </div>
</div>
