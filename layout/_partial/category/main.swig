<main class="page__container page__main">
    <div class="page__content page__content__mini">
        <div class="categories-wrapper">
            <ul>
                <li class="category-list-item category-item-cur"><a class="category-list-link" href="/">所有文章</a></li>
            </ul>
            {{ list_categories() }}
        </div>

        <div class="page__posts clearfix">
            {% for post in page.posts %}
                <div class="page__post">
                    {% include '../post/mini.swig' with { post: post } %}
                </div>
            {% endfor %}
        </div>
        
        {{ s_paginator(3) }}
    </div>

</main>