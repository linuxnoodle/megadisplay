.class public Lcom/mikepenz/fastadapter/FastAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FastAdapter.kt"


# annotations
.annotation runtime Lcom/mikepenz/fastadapter/dsl/FastAdapterDsl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;,
        Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;,
        Lcom/mikepenz/fastadapter/FastAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFastAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastAdapter.kt\ncom/mikepenz/fastadapter/FastAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1026:1\n224#1:1032\n1648#2,2:1027\n1657#2,3:1029\n*E\n*S KotlinDebug\n*F\n+ 1 FastAdapter.kt\ncom/mikepenz/fastadapter/FastAdapter\n*L\n226#1:1032\n181#1,2:1027\n193#1,3:1029\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a0\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 \u00c5\u0001*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u00020\u00030\u0005:\u0006\u00c5\u0001\u00c6\u0001\u00c7\u0001B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c2\u0006\u0010l\u001a\u00020!H\u0016J3\u0010m\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\u0008\u0001\u0010n*\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0006\u0010o\u001a\u00020!2\u0006\u0010:\u001a\u0002HnH\u0016\u00a2\u0006\u0002\u0010pJ,\u0010q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\u0008\u0001\u0010n*\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u000c\u0010r\u001a\u0008\u0012\u0004\u0012\u0002Hn0sH\u0016J\u001c\u0010t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010u\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\tJ\"\u0010v\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0014\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t0\u0019J)\u0010w\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\u0008\u0001\u0010x*\u0008\u0012\u0004\u0012\u00028\u00000\u001a2\u0006\u0010y\u001a\u0002Hx\u00a2\u0006\u0002\u0010zJ\u0008\u0010{\u001a\u00020|H\u0004J\u0006\u0010}\u001a\u00020|J\u0018\u0010~\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c2\u0006\u0010<\u001a\u00020!H\u0016J%\u0010\u007f\u001a\u0005\u0018\u0001H\u0080\u0001\"\u0011\u0008\u0001\u0010\u0080\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\u0008\u00a2\u0006\u0003\u0010\u0081\u0001J2\u0010\u007f\u001a\u0005\u0018\u0001H\u0080\u0001\"\u000f\u0008\u0001\u0010\u0080\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001a2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0007\u0008\u0000\u0012\u0003H\u0080\u00010\u001f\u00a2\u0006\u0003\u0010\u0083\u0001J\u0012\u0010\u0084\u0001\u001a\u00020!2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0019\u0010\u0086\u0001\u001a\u0004\u0018\u00018\u00002\u0006\u0010<\u001a\u00020!H\u0016\u00a2\u0006\u0003\u0010\u0087\u0001J$\u0010\u0088\u0001\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010\u0089\u00012\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\t\u0010\u008c\u0001\u001a\u00020!H\u0016J\u0012\u0010\u008d\u0001\u001a\u00030\u008b\u00012\u0006\u0010<\u001a\u00020!H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020!H\u0016J&\u0010\u008f\u0001\u001a\u0005\u0018\u0001H\u0080\u0001\"\u0011\u0008\u0001\u0010\u0080\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\u0008\u00a2\u0006\u0003\u0010\u0081\u0001J3\u0010\u008f\u0001\u001a\u0005\u0018\u0001H\u0080\u0001\"\u000f\u0008\u0001\u0010\u0080\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001a2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0007\u0008\u0000\u0012\u0003H\u0080\u00010\u001f\u00a2\u0006\u0003\u0010\u0083\u0001J\u0017\u0010\u0090\u0001\u001a\u00020!2\u0006\u0010;\u001a\u00028\u0000H\u0016\u00a2\u0006\u0003\u0010\u0091\u0001J\u0013\u0010\u0090\u0001\u001a\u00020!2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0011\u0010\u0092\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020!H\u0016J\u0011\u0010\u0093\u0001\u001a\u00020!2\u0006\u0010l\u001a\u00020!H\u0016J\u0018\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0095\u00012\u0006\u0010<\u001a\u00020!H\u0016J\u0014\u0010\u0096\u0001\u001a\u0006\u0012\u0002\u0008\u00030$2\u0007\u0010\u0097\u0001\u001a\u00020!J\t\u0010\u0098\u0001\u001a\u00020|H\u0016J\u001f\u0010\u0099\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u000c\u0008\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0017J\u0011\u0010\u009c\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!H\u0016J\u001b\u0010\u009d\u0001\u001a\u00020|2\u0007\u0010\u009e\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020!H\u0016J(\u0010\u00a0\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010\u00a1\u0001\u001a\u00020!2\u000c\u0008\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0017J\u001a\u0010\u00a2\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010\u00a1\u0001\u001a\u00020!H\u0016J\u001a\u0010\u00a3\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010\u00a1\u0001\u001a\u00020!H\u0016J\u0011\u0010\u00a4\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!H\u0016J\u0013\u0010\u00a5\u0001\u001a\u00020|2\u0008\u0010\u00a6\u0001\u001a\u00030\u00a7\u0001H\u0016J\u001a\u0010\u00a8\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010<\u001a\u00020!H\u0016J*\u0010\u00a8\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010<\u001a\u00020!2\u000e\u0010\u00a9\u0001\u001a\t\u0012\u0005\u0012\u00030\u009b\u00010sH\u0016J\u001c\u0010\u00aa\u0001\u001a\u00020\u00032\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0007\u0010\u00ad\u0001\u001a\u00020!H\u0016J\u0013\u0010\u00ae\u0001\u001a\u00020|2\u0008\u0010\u00a6\u0001\u001a\u00030\u00a7\u0001H\u0016J\u0012\u0010\u00af\u0001\u001a\u00020\u00102\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010\u00b0\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010\u00b1\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010\u00b2\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0017\u0010\u00b3\u0001\u001a\u00020|2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0002J3\u0010\u00b4\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020!0\u00b5\u00012\u000e\u0010\u00b6\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00b7\u00012\u0007\u0010\u00b8\u0001\u001a\u00020\u0010J<\u0010\u00b4\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020!0\u00b5\u00012\u000e\u0010\u00b6\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u00b7\u00012\u0007\u0010\u00b9\u0001\u001a\u00020!2\u0007\u0010\u00b8\u0001\u001a\u00020\u0010J\u001c\u0010\u00ba\u0001\u001a\u00020|2\u0007\u0010\u0097\u0001\u001a\u00020!2\n\u0010;\u001a\u0006\u0012\u0002\u0008\u00030$J\u0017\u0010\u00bb\u0001\u001a\u00020|2\u0006\u0010;\u001a\u00028\u0000H\u0007\u00a2\u0006\u0003\u0010\u00bc\u0001J$\u0010\u00bd\u0001\u001a\u0003H\u0080\u0001\"\u0011\u0008\u0001\u0010\u0080\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\u0008\u00a2\u0006\u0003\u0010\u0081\u0001J$\u0010\u00be\u0001\u001a\u0003H\u0080\u0001\"\u0011\u0008\u0001\u0010\u0080\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\u0008\u00a2\u0006\u0003\u0010\u0081\u0001J \u0010\u00bf\u0001\u001a\u00030\u00c0\u00012\u0008\u0010\u00c1\u0001\u001a\u00030\u00c0\u00012\n\u0008\u0002\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0017J\'\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010\u00c1\u0001\u001a\u0005\u0018\u00010\u00c0\u00012\n\u0008\u0002\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0007R\u001e\u0010\u0007\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001f\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001a0\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010\u001d\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001a0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\"\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030$0#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u008a\u0001\u00104\u001ar\u0012\u0015\u0012\u0013\u0018\u000106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(:\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR \u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u0088\u0001\u0010H\u001ap\u0012\u0013\u0012\u001106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(:\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010?\"\u0004\u0008K\u0010AR\u008a\u0001\u0010L\u001ar\u0012\u0015\u0012\u0013\u0018\u000106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(:\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010?\"\u0004\u0008N\u0010AR\u0088\u0001\u0010O\u001ap\u0012\u0013\u0012\u001106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(:\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010?\"\u0004\u0008Q\u0010AR\u009e\u0001\u0010R\u001a\u0085\u0001\u0012\u0013\u0012\u001106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0013\u0012\u00110T\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(U\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(:\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u0010\u0018\u00010Sj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`VX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR$\u0010\\\u001a\u00020\u00102\u0006\u0010[\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008]\u0010\u0012\"\u0004\u0008^\u0010\u0014R \u0010_\u001a\u0008\u0012\u0004\u0012\u00028\u00000`X\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008a\u0010\u0006\u001a\u0004\u0008b\u0010cR\u001a\u0010d\u001a\u0008\u0012\u0004\u0012\u00028\u00000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010gR\u001a\u0010h\u001a\u0008\u0012\u0004\u0012\u00028\u00000iX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010k\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "()V",
        "_eventHooks",
        "",
        "Lcom/mikepenz/fastadapter/listeners/EventHook;",
        "adapterSizes",
        "Landroid/util/SparseArray;",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "adapters",
        "Ljava/util/ArrayList;",
        "attachDefaultListeners",
        "",
        "getAttachDefaultListeners",
        "()Z",
        "setAttachDefaultListeners",
        "(Z)V",
        "eventHooks",
        "getEventHooks",
        "()Ljava/util/List;",
        "extensions",
        "",
        "Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "getExtensions",
        "()Ljava/util/Collection;",
        "extensionsCache",
        "Landroidx/collection/ArrayMap;",
        "Ljava/lang/Class;",
        "globalSize",
        "",
        "itemVHFactoryCache",
        "Lcom/mikepenz/fastadapter/IItemVHFactoryCache;",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "getItemVHFactoryCache",
        "()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;",
        "setItemVHFactoryCache",
        "(Lcom/mikepenz/fastadapter/IItemVHFactoryCache;)V",
        "legacyBindViewMode",
        "getLegacyBindViewMode",
        "setLegacyBindViewMode",
        "logger",
        "Lcom/mikepenz/fastadapter/VerboseLogger;",
        "onBindViewHolderListener",
        "Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;",
        "getOnBindViewHolderListener",
        "()Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;",
        "setOnBindViewHolderListener",
        "(Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;)V",
        "onClickListener",
        "Lkotlin/Function4;",
        "Landroid/view/View;",
        "Lkotlin/ParameterName;",
        "name",
        "v",
        "adapter",
        "item",
        "position",
        "Lcom/mikepenz/fastadapter/ClickListener;",
        "getOnClickListener",
        "()Lkotlin/jvm/functions/Function4;",
        "setOnClickListener",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onCreateViewHolderListener",
        "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;",
        "getOnCreateViewHolderListener",
        "()Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;",
        "setOnCreateViewHolderListener",
        "(Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;)V",
        "onLongClickListener",
        "Lcom/mikepenz/fastadapter/LongClickListener;",
        "getOnLongClickListener",
        "setOnLongClickListener",
        "onPreClickListener",
        "getOnPreClickListener",
        "setOnPreClickListener",
        "onPreLongClickListener",
        "getOnPreLongClickListener",
        "setOnPreLongClickListener",
        "onTouchListener",
        "Lkotlin/Function5;",
        "Landroid/view/MotionEvent;",
        "event",
        "Lcom/mikepenz/fastadapter/listeners/TouchListener;",
        "getOnTouchListener",
        "()Lkotlin/jvm/functions/Function5;",
        "setOnTouchListener",
        "(Lkotlin/jvm/functions/Function5;)V",
        "value",
        "verboseLoggingEnabled",
        "getVerboseLoggingEnabled",
        "setVerboseLoggingEnabled",
        "viewClickListener",
        "Lcom/mikepenz/fastadapter/listeners/ClickEventHook;",
        "viewClickListener$annotations",
        "getViewClickListener",
        "()Lcom/mikepenz/fastadapter/listeners/ClickEventHook;",
        "viewLongClickListener",
        "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;",
        "getViewLongClickListener",
        "()Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;",
        "viewTouchListener",
        "Lcom/mikepenz/fastadapter/listeners/TouchEventHook;",
        "getViewTouchListener",
        "()Lcom/mikepenz/fastadapter/listeners/TouchEventHook;",
        "order",
        "addAdapter",
        "A",
        "index",
        "(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;",
        "addAdapters",
        "newAdapters",
        "",
        "addEventHook",
        "eventHook",
        "addEventHooks",
        "addExtension",
        "E",
        "extension",
        "(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;",
        "cacheSizes",
        "",
        "clearTypeInstance",
        "getAdapter",
        "getExtension",
        "T",
        "()Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "clazz",
        "(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "getHolderAdapterPosition",
        "holder",
        "getItem",
        "(I)Lcom/mikepenz/fastadapter/IItem;",
        "getItemById",
        "Lkotlin/Pair;",
        "identifier",
        "",
        "getItemCount",
        "getItemId",
        "getItemViewType",
        "getOrCreateExtension",
        "getPosition",
        "(Lcom/mikepenz/fastadapter/IItem;)I",
        "getPreItemCount",
        "getPreItemCountByOrder",
        "getRelativeInfo",
        "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;",
        "getTypeInstance",
        "type",
        "notifyAdapterDataSetChanged",
        "notifyAdapterItemChanged",
        "payload",
        "",
        "notifyAdapterItemInserted",
        "notifyAdapterItemMoved",
        "fromPosition",
        "toPosition",
        "notifyAdapterItemRangeChanged",
        "itemCount",
        "notifyAdapterItemRangeInserted",
        "notifyAdapterItemRangeRemoved",
        "notifyAdapterItemRemoved",
        "onAttachedToRecyclerView",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onBindViewHolder",
        "payloads",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onDetachedFromRecyclerView",
        "onFailedToRecycleView",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
        "onViewRecycled",
        "prepareAdapters",
        "recursive",
        "Lcom/mikepenz/fastadapter/utils/Triple;",
        "predicate",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;",
        "stopOnMatch",
        "globalStartPosition",
        "registerItemFactory",
        "registerTypeInstance",
        "(Lcom/mikepenz/fastadapter/IItem;)V",
        "requireExtension",
        "requireOrCreateExtension",
        "saveInstanceState",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "prefix",
        "",
        "withSavedInstanceState",
        "Companion",
        "RelativeInfo",
        "ViewHolder",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

.field private static final TAG:Ljava/lang/String; = "FastAdapter"


# instance fields
.field private _eventHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "+TItem;>;>;"
        }
    .end annotation
.end field

.field private final adapterSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private final adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private attachDefaultListeners:Z

.field private final extensionsCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private globalSize:I

.field private itemVHFactoryCache:Lcom/mikepenz/fastadapter/IItemVHFactoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemVHFactoryCache<",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;>;"
        }
    .end annotation
.end field

.field private legacyBindViewMode:Z

.field private final logger:Lcom/mikepenz/fastadapter/VerboseLogger;

.field private onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

.field private onClickListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private onLongClickListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onPreClickListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onPreLongClickListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchListener:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/MotionEvent;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final viewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ClickEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final viewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final viewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;-><init>()V

    check-cast v0, Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    .line 81
    new-instance v1, Lcom/mikepenz/fastadapter/VerboseLogger;

    const-string v2, "FastAdapter"

    invoke-direct {v1, v2}, Lcom/mikepenz/fastadapter/VerboseLogger;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 98
    new-instance v1, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    .line 99
    new-instance v1, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    .line 109
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter$viewClickListener$1;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    .line 124
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter$viewLongClickListener$1;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    .line 138
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter$viewTouchListener$1;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    .line 157
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static final synthetic access$getAdapters$p(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getExtensionsCache$p(Lcom/mikepenz/fastadapter/FastAdapter;)Landroidx/collection/ArrayMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method public static final getFromHolderTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getFromHolderTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final getHolderAdapterItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getHolderAdapterItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p0

    return-object p0
.end method

.method public static final getHolderAdapterItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)TItem;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getHolderAdapterItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p0

    return-object p0
.end method

.method public static final getHolderAdapterItemTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getHolderAdapterItemTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic notifyAdapterItemChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 772
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged(ILjava/lang/Object;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyAdapterItemChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;IILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 784
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyAdapterItemRangeChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final prepareAdapters(Lcom/mikepenz/fastadapter/IAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    .line 192
    move-object v0, p0

    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-interface {p1, p0}, Lcom/mikepenz/fastadapter/IAdapter;->setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V

    .line 193
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 1030
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    .line 193
    invoke-interface {v1, v0}, Lcom/mikepenz/fastadapter/IAdapter;->setOrder(I)V

    move v0, v2

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    return-void
.end method

.method public static final recursiveSub(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IExpandable;Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;I",
            "Lcom/mikepenz/fastadapter/IExpandable<",
            "*>;",
            "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
            "TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/utils/Triple<",
            "Ljava/lang/Boolean;",
            "TItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->recursiveSub(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IExpandable;Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic saveInstanceState$default(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 658
    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: saveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic viewClickListener$annotations()V
    .locals 0

    return-void
.end method

.method public static final with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "+TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->with(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "+TItem;>;>;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withSavedInstanceState$default(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 278
    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: withSavedInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public adapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapter;

    return-object p1
.end method

.method public addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>(ITA;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    invoke-direct {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->prepareAdapters(Lcom/mikepenz/fastadapter/IAdapter;)V

    return-object p0
.end method

.method public addAdapters(Ljava/util/List;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>(",
            "Ljava/util/List<",
            "+TA;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "newAdapters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    check-cast p1, Ljava/lang/Iterable;

    .line 1027
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    .line 182
    invoke-direct {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->prepareAdapters(Lcom/mikepenz/fastadapter/IAdapter;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "eventHook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getEventHooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addEventHooks(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "+TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "eventHooks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getEventHooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>(TE;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The given extension was already registered with this FastAdapter instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected final cacheSizes()V
    .locals 5

    .line 668
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 671
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IAdapter;

    .line 672
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 673
    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 674
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 679
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 683
    :cond_2
    iput v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    return-void
.end method

.method public final clearTypeInstance()V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemVHFactoryCache()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemVHFactoryCache;->clear()V

    return-void
.end method

.method public getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 566
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    const-string v1, "getAdapter"

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    sget-object v1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-static {v1, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->access$floorIndex(Lcom/mikepenz/fastadapter/FastAdapter$Companion;Landroid/util/SparseArray;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapter;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAttachDefaultListeners()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    return v0
.end method

.method public final getEventHooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "+TItem;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->_eventHooks:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public final synthetic getExtension()Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 224
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>(",
            "Ljava/lang/Class<",
            "-TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    return-object p1
.end method

.method public final getExtensions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "extensionsCache.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHolderAdapterPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 502
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-static {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->access$floorIndex(Lcom/mikepenz/fastadapter/FastAdapter$Companion;Landroid/util/SparseArray;I)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemById(J)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlin/Pair<",
            "TItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return-object v2

    .line 520
    :cond_0
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$getItemById$1;

    invoke-direct {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter$getItemById$1;-><init>(J)V

    check-cast v0, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/utils/Triple;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/utils/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 530
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getItemCount()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 596
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemVHFactoryCache()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemVHFactoryCache<",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 581
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemVHFactoryCache()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    move-result-object p1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/mikepenz/fastadapter/IItemVHFactoryCache;->contains(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 583
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V

    .line 585
    :cond_0
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result p1

    goto :goto_0

    .line 586
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getLegacyBindViewMode()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->legacyBindViewMode:Z

    return v0
.end method

.method public final getOnBindViewHolderListener()Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    return-object v0
.end method

.method public final getOnClickListener()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnCreateViewHolderListener()Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener<",
            "TItem;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    return-object v0
.end method

.method public final getOnLongClickListener()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onLongClickListener:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnPreClickListener()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onPreClickListener:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnPreLongClickListener()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/view/View;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onPreLongClickListener:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnTouchListener()Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onTouchListener:Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method public final synthetic getOrCreateExtension()Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 239
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getOrCreateExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getOrCreateExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>(",
            "Ljava/lang/Class<",
            "-TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_1
    sget-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->INSTANCE:Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;

    invoke-virtual {v0, p0, p1}, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->create(Lcom/mikepenz/fastadapter/FastAdapter;Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    instance-of v1, v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 235
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    return-object v2
.end method

.method public getPosition(J)I
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    .line 480
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getOrder()I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterPosition(J)I

    move-result v4

    if-eq v4, v3, :cond_1

    add-int/2addr v1, v4

    return v1

    .line 488
    :cond_1
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 465
    const-string p1, "FastAdapter"

    const-string v0, "You have to define an identifier for your item to retrieve the position via this method"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 468
    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPosition(J)I

    move-result p1

    return p1
.end method

.method public getPreItemCount(I)I
    .locals 2

    .line 640
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    sget-object v1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-static {v1, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->access$floorIndex(Lcom/mikepenz/fastadapter/FastAdapter$Companion;Landroid/util/SparseArray;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPreItemCountByOrder(I)I
    .locals 3

    .line 616
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 624
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<",
            "TItem;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    .line 546
    sget-object v1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->access$floorIndex(Lcom/mikepenz/fastadapter/FastAdapter$Companion;Landroid/util/SparseArray;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Lcom/mikepenz/fastadapter/IAdapter;->peekAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 550
    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->setItem(Lcom/mikepenz/fastadapter/IItem;)V

    .line 551
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->setAdapter(Lcom/mikepenz/fastadapter/IAdapter;)V

    .line 552
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->setPosition(I)V

    :cond_1
    return-object v0

    .line 542
    :cond_2
    :goto_0
    new-instance p1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {p1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    return-object p1
.end method

.method public final getTypeInstance(I)Lcom/mikepenz/fastadapter/IItemVHFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemVHFactoryCache()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemVHFactoryCache;->get(I)Lcom/mikepenz/fastadapter/IItemVHFactory;

    move-result-object p1

    return-object p1
.end method

.method public final getVerboseLoggingEnabled()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getViewClickListener()Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/ClickEventHook<",
            "TItem;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    return-object v0
.end method

.method public getViewLongClickListener()Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook<",
            "TItem;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    return-object v0
.end method

.method public getViewTouchListener()Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<",
            "TItem;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->viewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    return-object v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 696
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterDataSetChanged()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 699
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyAdapterItemChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemChanged(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 773
    invoke-virtual {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemInserted(I)V
    .locals 1

    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 760
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemMoved(II)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(II)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;IILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 787
    invoke-interface {v1, p1, p2, p3}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    .line 792
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 720
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 744
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyAdapterItemRemoved(I)V
    .locals 1

    const/4 v0, 0x1

    .line 732
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    const-string v1, "onAttachedToRecyclerView"

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 449
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->legacyBindViewMode:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindViewHolderLegacy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLegacy: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Collections.emptyList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->legacyBindViewMode:Z

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindViewHolder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLegacy: false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 399
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateViewHolder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstance(I)Lcom/mikepenz/fastadapter/IItemVHFactory;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;ILcom/mikepenz/fastadapter/IItemVHFactory;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 353
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {p2, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 355
    iget-boolean p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    if-eqz p2, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getViewClickListener()Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/listeners/EventHook;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 360
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getViewLongClickListener()Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/listeners/EventHook;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 363
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getViewTouchListener()Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/listeners/EventHook;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 366
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {p2, p0, p1, v0}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/IItemVHFactory;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    const-string v1, "onDetachedFromRecyclerView"

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 454
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailedToRecycleView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewAttachedToWindow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 431
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 432
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewDetachedFromWindow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 420
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 421
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewRecycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/VerboseLogger;->log(Ljava/lang/String;)V

    .line 409
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 410
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->unBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;IZ)Lcom/mikepenz/fastadapter/utils/Triple;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
            "TItem;>;IZ)",
            "Lcom/mikepenz/fastadapter/utils/Triple<",
            "Ljava/lang/Boolean;",
            "TItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-ge p2, v0, :cond_3

    .line 820
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v2

    .line 821
    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getItem()Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 823
    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getAdapter()Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 824
    invoke-interface {p1, v2, p2, v3, p2}, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;->apply(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 825
    new-instance p1, Lcom/mikepenz/fastadapter/utils/Triple;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, v3, p2}, Lcom/mikepenz/fastadapter/utils/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 827
    :cond_0
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    move-object v4, v1

    check-cast v4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v4, :cond_2

    .line 828
    sget-object v1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    move v3, p2

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->recursiveSub(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IExpandable;Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/utils/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 837
    :cond_3
    new-instance p1, Lcom/mikepenz/fastadapter/utils/Triple;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, v1, v1}, Lcom/mikepenz/fastadapter/utils/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
            "TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/utils/Triple<",
            "Ljava/lang/Boolean;",
            "TItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;IZ)Lcom/mikepenz/fastadapter/utils/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final registerItemFactory(ILcom/mikepenz/fastadapter/IItemVHFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemVHFactoryCache()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IItemVHFactoryCache;->register(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z

    return-void
.end method

.method public final registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Register the factory instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "registerItemFactory(item)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    instance-of v0, p1, Lcom/mikepenz/fastadapter/IItemVHFactory;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v0

    check-cast p1, Lcom/mikepenz/fastadapter/IItemVHFactory;

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->registerItemFactory(ILcom/mikepenz/fastadapter/IItemVHFactory;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getFactory()Lcom/mikepenz/fastadapter/IItemVHFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->registerItemFactory(ILcom/mikepenz/fastadapter/IItemVHFactory;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic requireExtension()Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1032
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final synthetic requireOrCreateExtension()Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "TItem;>;>()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 241
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getOrCreateExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState$default(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 661
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final setAttachDefaultListeners(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->attachDefaultListeners:Z

    return-void
.end method

.method public setItemVHFactoryCache(Lcom/mikepenz/fastadapter/IItemVHFactoryCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItemVHFactoryCache<",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->itemVHFactoryCache:Lcom/mikepenz/fastadapter/IItemVHFactoryCache;

    return-void
.end method

.method public final setLegacyBindViewMode(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->legacyBindViewMode:Z

    return-void
.end method

.method public final setOnBindViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    return-void
.end method

.method public final setOnClickListener(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnCreateViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    return-void
.end method

.method public final setOnLongClickListener(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onLongClickListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnPreClickListener(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onPreClickListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnPreLongClickListener(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onPreLongClickListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnTouchListener(Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/MotionEvent;",
            "-",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;-TItem;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->onTouchListener:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method public final setVerboseLoggingEnabled(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->logger:Lcom/mikepenz/fastadapter/VerboseLogger;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/VerboseLogger;->setEnabled(Z)V

    return-void
.end method

.method public final withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState$default(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 280
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
