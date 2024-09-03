import riot from 'riot-compiler';

export default function viteRiotPlugin() {
  return {
    name: 'vite-plugin-riot3',
    transform(code, id) {
      if (id.endsWith('.tag')) {
        // Compile the .tag file using Riot.js 3 compiler
        const compiled = riot.compile(code);

	//console.log(`${id} compiled: ${compiled}`)

        const with_import_riot_preamble = `
          import riot from 'riot';
          ${compiled}
        `;

        return {
          code: with_import_riot_preamble,
          map: null,
        };
      }
    },
  };
}

