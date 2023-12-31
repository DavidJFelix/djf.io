import starlight from '@astrojs/starlight'
import {defineConfig} from 'astro/config'

// https://astro.build/config
export default defineConfig({
  integrations: [
    starlight({
      title: 'DJF.io',
      social: {
        github: 'https://github.com/davidjfelix',
        twitter: 'https://twitter.com/davidjfelix',
      },
      sidebar: [
        {
          label: 'Blog',
          autogenerate: {directory: 'blog'},
        },
      ],
    }),
  ],
})
