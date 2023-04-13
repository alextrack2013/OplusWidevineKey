package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class MediaBrowserCompat {
    static final boolean a = Log.isLoggable("MediaBrowserCompat", 3);

    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public void a(MediaItem mediaItem) {
        }

        public void a(String str) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public void a(String str, Bundle bundle) {
        }

        public void a(String str, Bundle bundle, List<MediaItem> list) {
        }
    }

    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };
        private final int a;
        private final MediaDescriptionCompat b;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        MediaItem(Parcel parcel) {
            this.a = parcel.readInt();
            this.b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
            this.b.writeToParcel(parcel, i);
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.a + ", mDescription=" + this.b + '}';
        }
    }

    /* loaded from: classes.dex */
    private static class ItemReceiver extends android.support.v4.a.b {
        private final String d;
        private final b e;

        @Override // android.support.v4.a.b
        protected void a(int i, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.e.a(this.d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.e.a((MediaItem) parcelable);
            } else {
                this.e.a(this.d);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class SearchResultReceiver extends android.support.v4.a.b {
        private final String d;
        private final Bundle e;
        private final c f;

        @Override // android.support.v4.a.b
        protected void a(int i, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f.a(this.d, this.e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            this.f.a(this.d, this.e, arrayList);
        }
    }

    /* loaded from: classes.dex */
    private static class CustomActionResultReceiver extends android.support.v4.a.b {
        private final String d;
        private final Bundle e;
        private final a f;

        @Override // android.support.v4.a.b
        protected void a(int i, Bundle bundle) {
            if (this.f == null) {
                return;
            }
            MediaSessionCompat.a(bundle);
            switch (i) {
                case -1:
                    this.f.c(this.d, this.e, bundle);
                    return;
                case 0:
                    this.f.b(this.d, this.e, bundle);
                    return;
                case 1:
                    this.f.a(this.d, this.e, bundle);
                    return;
                default:
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.e + ", resultData=" + bundle + ")");
                    return;
            }
        }
    }
}
