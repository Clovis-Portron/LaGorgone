<app-article>
    <app-header></app-header>
    <div class='article'>
        <div class="picture" style="background-image: url('{article.picture.path}');">
            <h2>{ article.name }</h2>
        </div>
        <div class="content" ref="content">
        </div>
    </div>
    <app-footer></app-footer>
    <app-sponsors></app-sponsors>
    <script>
        var tag = this;

        tag.article = null;

        tag.on("before-mount", function(){
            tag.article = tag.opts.article;
            if(tag.article == null)
                throw new Error("Article cant be null.");
        });

        tag.on("mount", function(){
            if(tag.article != null)
            {
                tag.refs.content.innerHTML = tag.article.content;
            }
        });
    </script>
</app-article>