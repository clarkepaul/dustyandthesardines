<div class="container">
    <h1 class="underline">$Title</h1>
</div>

<% loop $Processes %>
    <section id="$Anchor" class="process process--$EvenOdd">
        <span class="process__background"></span>
        <div class="container process__wrapper">
            <div class="process__left">
                <div class="process__icon process__icon--$IconClass"></div>
                <h2 class="process__title h4">$Title</h3>
                <p class="process__description">$Description</p>
                <% loop $Tags %>
                    <v-popover v-cloak>
                        <button class="tooltip__link">$Title</button>
                        <div slot="popover">
                            $Description
                        </div>
                    </v-popover>
                <% end_loop %>
            </div>
            <% if $Categories %>
                <div class="process__right">
                    <% loop $Categories %>
                        <a href="$Link" class="process__category-link">
                            <% if $Thumbnail %>
                                <div class="process__category-image" style="background-image: url({$Thumbnail.ScaleMaxWidth(150).URL})"></div>
                            <% else_if $FeaturedImage %>
                                <div class="process__category-image" style="background-image: url({$FeaturedImage.ScaleMaxWidth(150).URL})"></div>
                            <% end_if %>
                            <div>
                                <h3 class="h5 process__category-title link link--arrow-dark">$Title</h4>
                                <p class="process__category-description">$Description</p>
                            </div>
                        </a>
                    <% end_loop %>
                </div>
            <% end_if %>
        </div>
    </section>
<% end_loop %>

<div class="container">
    $ElementalArea
</div>
