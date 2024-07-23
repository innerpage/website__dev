import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";
import { Var } from "./src/script/var";

// https://astro.build/config
export default defineConfig({
  site: Var.app.website.url,
  integrations: [sitemap()],
});
