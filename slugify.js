#!/usr/bin/env node

function slugify(text) {
  return text.toString().toLowerCase().trim()
    .replace(/^.*?(?=[\d]+:)/g,'')
    .replace(/\s+/g, '-')           // Replace spaces with -
    .replace(/[^\w\-]+/g, '')       // Remove all non-word chars
    .replace(/\-\-+/g, '-')        // Replace multiple - with single -
    .replace(/-$/, '');
}

if ( process.argv[2] ) {
  console.log( slugify( process.argv[2] ) );
}
