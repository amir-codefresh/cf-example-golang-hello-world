package api

// test Request body representation
type Request struct {
	Data map[string]interface{} `json:"data"`
}
