run hugo shell: 
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/hugo:0.101.0-alpine \
  shell

create
hugo new site alice -f yml
cd alice

git clone https://github.com/adityatelange/hugo-PaperMod themes/PaperMod --depth=1

after seeting run server in host machine (Docker):
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.101.0 \
  server


  add new blog:
  hugo new posts/my-first-post.md
  hugo server -D

  hugo new posts/Publication.md

  hugo new project.md