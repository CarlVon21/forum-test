class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def articles

    articles = []

    articles << {
        permalink: "article-1",
        title: "Article 1",
        summary: "Article 1 is about cool stuff"
    }

    articles << {
        permalink: "article-2",
        title: "Article 2",
        summary: "Article 2 is about other cool stuff"
    }

    articles << {
        permalink: "dogs-and-ruby",
        title: "Dogs And Ruby",
        summary: "Article 3 is about cool stuff"
    }

    @articles = articles

  end

  def view

    articles = []

    articles << {
        permalink: "article-1",
        title: "Article 1",
        summary: "Article 1 is about cool stuff"
    }

    articles << {
        permalink: "article-2",
        title: "Article 2",
        summary: "Article 2 is about other cool stuff"
    }

    articles << {
        permalink: "dogs-and-ruby",
        title: "Dogs And Ruby",
        summary: "Article 3 is about cool stuff"
    }

    @articles = articles

    @articles.each do |article|
      # found article
      if article[:permalink] == params[:permalink]
        @article = article
      end
    end

  end

end
