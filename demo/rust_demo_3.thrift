namespace rs rust_demo_3

struct GetItemFrontRequest {
    1: required i64 id,
}

struct GetItemFrontResponse {
    1: required string backend_data,

    255: required BaseResp BaseResp
}

struct BaseResp {
    1: string StatusMessage = "",
    2: i32 StatusCode = 0,
    3: optional map<string, string> Extra,
}

service ItemFrontService {
    GetItemFrontResponse GetItemFront (1: GetItemFrontRequest req),
}
