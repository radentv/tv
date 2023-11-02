.class public Lcom/shtvreb/goldtv/remote/RetroConfection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lretrofit2/Retrofit;

.field private static b:Lokhttp3/OkHttpClient$Builder;

.field private static c:Lokhttp3/logging/HttpLoggingInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sput-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->b:Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    sput-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->c:Lokhttp3/logging/HttpLoggingInterceptor;

    return-void
.end method

.method public static a()Lretrofit2/Retrofit;
    .registers 4

    sget-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->a:Lretrofit2/Retrofit;

    if-nez v0, :cond_64

    sget-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->b:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/shtvreb/goldtv/remote/RetroConfection;->c:Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lz4/g;

    invoke-direct {v0}, Lz4/g;-><init>()V

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/shtvreb/goldtv/utils/StringAdapter;

    invoke-direct {v2}, Lcom/shtvreb/goldtv/utils/StringAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lz4/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lz4/g;

    move-result-object v0

    invoke-virtual {v0}, Lz4/g;->d()Lz4/g;

    move-result-object v0

    invoke-virtual {v0}, Lz4/g;->e()Lz4/g;

    move-result-object v0

    invoke-virtual {v0}, Lz4/g;->b()Lz4/f;

    move-result-object v0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/shtvreb/goldtv/remote/RetroConfection;->b:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lcom/shtvreb/goldtv/remote/RetroConfection;->getValueString()Ljava/lang/String;

     const-string v2, "http://play.1list.vip:80/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lz4/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->a:Lretrofit2/Retrofit;

    :cond_64
    sget-object v0, Lcom/shtvreb/goldtv/remote/RetroConfection;->a:Lretrofit2/Retrofit;

    return-object v0
.end method

.method public static getValueString()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    invoke-static {}, Lobfuse3/obfuse/StringPool;->KgeajCd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
