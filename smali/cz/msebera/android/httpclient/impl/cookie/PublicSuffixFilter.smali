.class public Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V
    .locals 0
    .param p1, "wrapped"    # Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 57
    return-void
.end method

.method private isForPublicSuffix(Lcz/msebera/android/httpclient/cookie/Cookie;)Z
    .locals 6
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "domain":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    :cond_1
    :goto_0
    return v2

    .line 111
    :cond_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 116
    :cond_3
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 117
    goto :goto_0

    .line 120
    :cond_4
    const-string v4, "*."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 124
    .local v1, "nextdot":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lcz/msebera/android/httpclient/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    .line 76
    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "suffixes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    .line 67
    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 94
    return-void
.end method
