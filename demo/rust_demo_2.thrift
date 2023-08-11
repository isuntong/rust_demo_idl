namespace rs rust_demo_2

struct GetItemBackendRequest {
    1: required i64 id,
}

struct GetItemBackendResponse {
    1: required string data,

    255: required BaseResp BaseResp
}

struct BaseResp {
    1: string StatusMessage = "",
    2: i32 StatusCode = 0,
    3: optional map<string, string> Extra,
}

service ItemBackendService {
    GetItemBackendResponse GetItemBackend (1: GetItemBackendRequest req),
}