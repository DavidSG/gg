// Select the element with the id 'md'
const md = document.querySelector('#md');

// Assuming md_text is defined elsewhere in your code
// Convert Markdown text to HTML using marked.js
const htmlContent = marked(md_text);

// Create a new 'div' element
const mdDiv = document.createElement("div");

// Set the id attribute of the new 'div' element to 'content'
mdDiv.id = "content";

// Set the inner HTML of the new 'div' element to the converted Markdown content
mdDiv.innerHTML = htmlContent;

// Append the new 'div' element as a child of the selected 'md' element
md.appendChild(mdDiv);
