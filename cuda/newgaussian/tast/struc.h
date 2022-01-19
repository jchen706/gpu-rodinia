struct cudaGraph {

  uint64_t *vlist, *elist;
  uint64_t vertex_cnt, edge_cnt;
  cudaGraph() {
    vlist = new uint64_t[8777216];
    elist = new uint64_t[8777216 + 100];
    vertex_cnt = 1024;
  }
};