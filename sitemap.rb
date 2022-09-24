require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://www.dlf.immo'
SitemapGenerator::Sitemap.create do
  add '/admin', :changefreq => 'daily', :priority => 0.9
  add '/mentions-legales', :changefreq => 'weekly'
  add '/admin/sign_in', :changefreq => 'weekly'
  add '/admin/password/new', :changefreq => 'weekly'
  add '/admin/password/edit', :changefreq => 'weekly'
  add '/admin/houses', :changefreq => 'daily', :priority => 0.9
  add '/admin/houses/new', :changefreq => 'daily', :priority => 0.9
  add '/admin/houses/:id/edit', :changefreq => 'daily', :priority => 0.9
  add '/contact_us', :changefreq => 'weekly'
end
