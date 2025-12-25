<script>
	
    
	let { children } = $props();
	import Footer from '/src/components/footer.svelte';
	 import '../app.css';
</script>

{@render children()}
<Footer/>
