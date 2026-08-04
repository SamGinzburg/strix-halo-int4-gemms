	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[46:47], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x10
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s10, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v71, 15, v0
	v_and_b32_e32 v67, 0x60, v0
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s10, v2
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_and_b32_e32 v3, 0xf8, v1
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s59, s3, 11
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v66, 3, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v69, 1, v67
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s56, s10, s59
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_clause 0x2
	s_load_b32 s3, s[0:1], 0x64
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[44:45], s[0:1], 0x38
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v248, 16, v0
	v_bfe_u32 v107, v0, 4, 1
	s_mov_b32 s36, 0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[52:53], s[6:7]
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[80:81], null, s46, v2, v[3:4]
	s_mul_i32 s19, s46, s56
	s_mul_i32 s13, s46, 40
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s11, s46, 5
	s_mul_i32 s16, s46, 52
	s_mul_i32 s12, s46, 36
	v_mad_u64_u32 v[76:77], null, s46, 24, v[80:81]
	v_mad_u64_u32 v[77:78], null, s46, 28, v[80:81]
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v70, 0x70, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[94:95], null, s46, 20, v[80:81]
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v68, 4, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[250:251], null, s46, 12, v[80:81]
	v_mov_b32_e32 v95, v77
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v73, 2, v70
	v_mov_b32_e32 v81, v76
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v72, v68, v69
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v93, s46, 2, v80
	v_lshl_add_u32 v191, s46, 3, v80
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[78:79], null, s47, v73, v[66:67]
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v22, s19, v80
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v97, 0, v72
	v_xor_b32_e32 v74, 0x840, v72
	v_xor_b32_e32 v75, 0x1080, v72
	v_xor_b32_e32 v72, 0x18c0, v72
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v251, s46, 4, v80
	v_mov_b32_e32 v99, v78
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v22, s13, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s17, s46, 56
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v94, s19, 1
	v_add_lshl_u32 v15, v22, s11, 1
	v_cndmask_b32_e64 v30, 0x80000000, v23, s2
	v_add_lshl_u32 v23, v22, s16, 1
	v_add_nc_u32_e32 v241, 0, v72
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v72, s47, v78
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 1, v22
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s14, s46, 44
	s_mul_i32 s15, s46, 48
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v93, s19, 1
	v_add_lshl_u32 v10, v191, s19, 1
	v_add_lshl_u32 v12, v251, s19, 1
	v_add_lshl_u32 v16, v22, s12, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s18, s46, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v76, s19, 1
	v_add_lshl_u32 v26, v22, s17, 1
	v_add_lshl_u32 v11, v250, s19, 1
	v_add_lshl_u32 v24, v22, s15, 1
	v_add_lshl_u32 v25, v22, s14, 1
	v_add_lshl_u32 v47, v77, s19, 1
	v_add_lshl_u32 v27, v22, s18, 1
	v_cndmask_b32_e64 v46, 0x80000000, v14, s2
	v_cndmask_b32_e64 v14, 0x80000000, v15, s2
	v_cndmask_b32_e64 v28, 0x80000000, v23, s2
	v_mov_b32_e32 v101, v72
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v3, s2
	v_cndmask_b32_e64 v50, 0x80000000, v10, s2
	v_cndmask_b32_e64 v10, 0x80000000, v12, s2
	v_cndmask_b32_e64 v18, 0x80000000, v16, s2
	v_cndmask_b32_e64 v54, 0x80000000, v17, s2
	v_cndmask_b32_e64 v34, 0x80000000, v26, s2
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_cndmask_b32_e64 v58, 0x80000000, v11, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v38, 0x80000000, v25, s2
	v_cndmask_b32_e64 v42, 0x80000000, v27, s2
	v_cndmask_b32_e64 v62, 0x80000000, v47, s2
	s_clause 0xf
	buffer_load_b128 v[2:5], v2, s[4:7], 0 offen
	buffer_load_b128 v[6:9], v6, s[4:7], 0 offen
	buffer_load_b128 v[14:17], v14, s[4:7], 0 offen
	buffer_load_b128 v[18:21], v18, s[4:7], 0 offen
	buffer_load_b128 v[26:29], v28, s[4:7], 0 offen
	buffer_load_b128 v[30:33], v30, s[4:7], 0 offen
	buffer_load_b128 v[34:37], v34, s[4:7], 0 offen
	buffer_load_b128 v[38:41], v38, s[4:7], 0 offen
	buffer_load_b128 v[42:45], v42, s[4:7], 0 offen
	buffer_load_b128 v[46:49], v46, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v50, s[4:7], 0 offen
	buffer_load_b128 v[54:57], v54, s[4:7], 0 offen
	buffer_load_b128 v[58:61], v58, s[4:7], 0 offen
	buffer_load_b128 v[62:65], v62, s[4:7], 0 offen
	buffer_load_b128 v[10:13], v10, s[4:7], 0 offen
	buffer_load_b128 v[22:25], v24, s[4:7], 0 offen
	s_load_b32 s4, s[0:1], 0x84
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s0, s10, s9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s1, s10, s8
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[195:196], null, s47, 3, v[78:79]
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s47, v66
	.loc	1 889 30                        ; attention.py:889:30
	v_lshl_add_u32 v73, s47, 1, v78
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v100, 0, v74
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v246, 0, v75
	v_mov_b32_e32 v102, v73
	.loc	1 854 32                        ; attention.py:854:32
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	v_and_b32_e32 v194, 48, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v75, 2, v107
	v_or_b32_e32 v206, 4, v107
	v_or_b32_e32 v197, 6, v107
	v_or_b32_e32 v104, 8, v107
	v_or_b32_e32 v105, 10, v107
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s0, s4
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s1, s1, s4
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s0, s0, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s11, s1, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s0, s0, 0x800
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s57, s11, 0x7fffffe0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s0, s0, 31
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v84, 14, v107
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s5, s0, 31
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v82, 16, v107
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s5, s5, 27
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v83, 18, v107
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s60, s0, s5
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v106, 22, v107
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s60, s60, 31
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v79, 30, v107
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s60, s57
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s58, s3, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	s_cselect_b32 s5, -1, 0
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s11, s57, s59
	.loc	1 856 65                        ; attention.py:856:65
	s_cmpk_lt_i32 s1, 0x800
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s0, s11, s47
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s1, -1, 0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v72, s0, v72, 1
	v_add_lshl_u32 v66, s0, v78, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s2, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v73, s0, v73, 1
	v_add_lshl_u32 v74, s0, v195, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s0, s12, s5
	.loc	1 890 30                        ; attention.py:890:30
	s_and_b32 s49, s49, 0xffff
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s11, s11, s46
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s0, vcc_lo, s1
	.loc	1 854 32                        ; attention.py:854:32
	s_and_b32 s53, s53, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 s0, s0, s5
	v_cmp_eq_u32_e64 s1, 0, v248
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v78, 28, v107
	.loc	1 818 13                        ; attention.py:818:13
	s_sub_i32 s61, s60, 32
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(15)
	ds_store_b128 v97, v[2:5]
	s_waitcnt vmcnt(1)
	ds_store_b128 v97, v[10:13] offset:8192
	ds_store_b128 v97, v[14:17] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v97, v[22:25] offset:24576
	ds_store_b128 v100, v[18:21] offset:16384
	ds_store_b128 v100, v[26:29] offset:24576
	ds_store_b128 v246, v[30:33] offset:16384
	ds_store_b128 v246, v[34:37] offset:24576
	ds_store_b128 v241, v[38:41] offset:16384
	ds_store_b128 v241, v[42:45] offset:24576
	ds_store_b128 v100, v[6:9]
	ds_store_b128 v100, v[46:49] offset:8192
	ds_store_b128 v246, v[50:53]
	ds_store_b128 v246, v[54:57] offset:8192
	ds_store_b128 v241, v[58:61]
	ds_store_b128 v241, v[62:65] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[2:5], v72, s[48:51], 0 offen
	buffer_load_b128 v[11:14], v66, s[48:51], 0 offen
	buffer_load_b128 v[15:18], v73, s[48:51], 0 offen
	buffer_load_b128 v[7:10], v74, s[48:51], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v6, s11, v80, 1
	v_add_lshl_u32 v19, s11, v93, 1
	v_add_lshl_u32 v21, s11, v251, 1
	v_add_lshl_u32 v22, s11, v94, 1
	v_add_lshl_u32 v20, s11, v191, 1
	v_add_lshl_u32 v28, s11, v76, 1
	v_add_lshl_u32 v27, s11, v250, 1
	v_add_lshl_u32 v29, s11, v77, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v23, 0x80000000, v21, s0
	v_cndmask_b32_e64 v30, 0x80000000, v19, s0
	v_cndmask_b32_e64 v31, 0x80000000, v22, s0
	v_cndmask_b32_e64 v35, 0x80000000, v20, s0
	v_cndmask_b32_e64 v39, 0x80000000, v28, s0
	s_clause 0x1
	buffer_load_b128 v[19:22], v6, s[52:55], 0 offen
	buffer_load_b128 v[23:26], v23, s[52:55], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v27, s0
	v_cndmask_b32_e64 v47, 0x80000000, v29, s0
	s_clause 0x5
	buffer_load_b128 v[27:30], v30, s[52:55], 0 offen
	buffer_load_b128 v[31:34], v31, s[52:55], 0 offen
	buffer_load_b128 v[35:38], v35, s[52:55], 0 offen
	buffer_load_b128 v[39:42], v39, s[52:55], 0 offen
	buffer_load_b128 v[43:46], v6, s[52:55], 0 offen
	buffer_load_b128 v[47:50], v47, s[52:55], 0 offen
	v_bfe_i32 v6, v0, 3, 1
	v_lshlrev_b32_e32 v72, 6, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v0, 9, v71
	v_lshlrev_b32_e32 v51, 8, v67
	v_lshlrev_b32_e32 v52, 4, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_and_b32_e32 v53, 48, v68
	v_lshrrev_b32_e32 v54, 1, v70
	v_and_b32_e32 v70, 0x210, v6
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v73, 12, v107
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v1, v51, v52, v0
	v_or_b32_e32 v98, v0, v52
	.loc	1 890 30                        ; attention.py:890:30
	v_xor_b32_e32 v6, v53, v54
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v74, 20, v107
	v_or_b32_e32 v76, 24, v107
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v51, 0, v1
	v_xad_u32 v52, v1, 16, 0
	v_xad_u32 v53, v1, 32, 0
	v_xad_u32 v54, v1, 48, 0
	v_xad_u32 v55, v1, 64, 0
	v_xad_u32 v56, 0x50, v1, 0
	ds_load_b128 v[175:178], v51
	ds_load_b128 v[198:201], v51 offset:256
	ds_load_b128 v[179:182], v52
	ds_load_b128 v[202:205], v52 offset:256
	ds_load_b128 v[183:186], v53
	ds_load_b128 v[208:211], v53 offset:256
	ds_load_b128 v[187:190], v54
	ds_load_b128 v[212:215], v54 offset:256
	ds_load_b128 v[112:115], v55
	ds_load_b128 v[108:111], v55 offset:256
	ds_load_b128 v[116:119], v56
	.loc	1 890 30                        ; attention.py:890:30
	v_or_b32_e32 v0, v6, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v57, 0x60, v1, 0
	v_xad_u32 v58, 0x70, v1, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[112:115], off offset:372 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[116:119], off offset:388 ; 16-byte Folded Spill
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v66, 0, v0
	v_xor_b32_e32 v67, 0x90, v0
	v_xor_b32_e32 v68, 0x120, v0
	v_xor_b32_e32 v0, 0x1b0, v0
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[112:115], v56 offset:256
	ds_load_b128 v[116:119], v57
	ds_load_b128 v[85:88], v57 offset:256
	ds_load_b128 v[120:123], v58
	v_xad_u32 v60, 0x80, v1, 0
	v_xad_u32 v59, 0x90, v1, 0
	v_xad_u32 v61, 0xb0, v1, 0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v62, 0xa0, v1, 0
	v_xad_u32 v63, 0xd0, v1, 0
	v_xad_u32 v64, 0xc0, v1, 0
	v_xad_u32 v6, 0xf0, v1, 0
	v_xad_u32 v1, 0xe0, v1, 0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v193, 0x4000, v0
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[89:92], v58 offset:256
	ds_load_b128 v[224:227], v60
	ds_load_b128 v[135:138], v60 offset:256
	ds_load_b128 v[228:231], v59
	ds_load_b128 v[139:142], v59 offset:256
	ds_load_b128 v[232:235], v62
	ds_load_b128 v[143:146], v62 offset:256
	ds_load_b128 v[236:239], v61
	ds_load_b128 v[147:150], v61 offset:256
	ds_load_b128 v[127:130], v64
	ds_load_b128 v[151:154], v64 offset:256
	ds_load_b128 v[131:134], v63
	ds_load_b128 v[155:158], v63 offset:256
	ds_load_b128 v[159:162], v1
	ds_load_b128 v[216:219], v1 offset:256
	ds_load_b128 v[163:166], v6
	ds_load_b128 v[220:223], v6 offset:256
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v196, 0x4000, v66
	v_add_nc_u32_e32 v66, 0, v67
	s_waitcnt lgkmcnt(19)
	scratch_store_b128 off, v[116:119], off offset:340 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(17)
	scratch_store_b128 off, v[120:123], off offset:356 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v103, 0x4000, v66
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v67, 0, v68
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v77, 26, v107
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s57, s61
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v194, off offset:404
	scratch_store_b32 off, v72, off offset:408
	scratch_store_b32 off, v70, off offset:412
	scratch_store_b32 off, v73, off offset:160
	scratch_store_b32 off, v84, off offset:164
	scratch_store_b32 off, v82, off offset:168
	scratch_store_b32 off, v83, off offset:172
	scratch_store_b32 off, v78, off offset:176
	scratch_store_b32 off, v79, off offset:180
	scratch_store_b32 off, v206, off offset:184
	scratch_store_b32 off, v197, off offset:188
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(7)
	ds_store_b128 v97, v[19:22]
	s_waitcnt vmcnt(6)
	ds_store_b128 v97, v[23:26] offset:8192
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v0.h, v2.l
	v_mov_b16_e32 v2.l, v11.h
	v_mov_b16_e32 v1.l, v15.l
	v_mov_b16_e32 v1.h, v7.l
	v_mov_b16_e32 v0.l, v11.l
	v_mov_b16_e32 v7.l, v15.h
	v_mov_b16_e32 v51.h, v3.l
	v_mov_b16_e32 v3.l, v12.h
	v_mov_b32_e32 v6, v2
	v_mov_b16_e32 v52.l, v16.l
	v_mov_b16_e32 v52.h, v8.l
	v_mov_b16_e32 v51.l, v12.l
	v_mov_b16_e32 v8.l, v16.h
	v_mov_b16_e32 v11.h, v4.l
	v_mov_b16_e32 v4.l, v13.h
	ds_store_2addr_b64 v196, v[0:1], v[6:7] offset1:8
	v_dual_mov_b32 v7, v3 :: v_dual_add_nc_u32 v192, 0x4000, v67
	v_mov_b16_e32 v16.h, v10.l
	v_mov_b16_e32 v10.l, v18.h
	v_mov_b16_e32 v12.l, v17.l
	ds_store_2addr_b64 v103, v[51:52], v[7:8] offset1:8
	v_mov_b32_e32 v8, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v253, v69, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v12.h, v9.l
	v_mov_b16_e32 v11.l, v13.l
	v_mov_b16_e32 v9.l, v17.h
	v_mov_b16_e32 v16.l, v18.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v65, s10, v253
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v15.l, v14.l
	v_mov_b16_e32 v15.h, v5.l
	v_mov_b16_e32 v5.l, v14.h
	v_mov_b32_e32 v6, v10
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v65
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v65, s4, v65
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(5)
	ds_store_b128 v100, v[27:30]
	s_waitcnt vmcnt(4)
	ds_store_b128 v100, v[31:34] offset:8192
	s_waitcnt vmcnt(3)
	ds_store_b128 v246, v[35:38]
	s_waitcnt vmcnt(2)
	ds_store_b128 v246, v[39:42] offset:8192
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v192, v[11:12], v[8:9] offset1:8
	ds_store_2addr_b64 v193, v[15:16], v[5:6] offset1:8
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v241, v[43:46]
	s_waitcnt vmcnt(0)
	ds_store_b128 v241, v[47:50] offset:8192
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v255, s8, v65
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v254, s9, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0xb                            ; 192-byte Folded Spill
	scratch_store_b128 off, v[216:219], off offset:128
	scratch_store_b128 off, v[220:223], off offset:144
	scratch_store_b128 off, v[85:88], off
	scratch_store_b128 off, v[89:92], off offset:16
	scratch_store_b128 off, v[135:138], off offset:64
	scratch_store_b128 off, v[139:142], off offset:80
	scratch_store_b128 off, v[143:146], off offset:32
	scratch_store_b128 off, v[147:150], off offset:48
	scratch_store_b128 off, v[151:154], off offset:96
	scratch_store_b128 off, v[155:158], off offset:112
	scratch_store_b128 off, v[159:162], off offset:224
	scratch_store_b128 off, v[163:166], off offset:240
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[135:138], off, off offset:340
	scratch_load_b128 v[139:142], off, off offset:356
	scratch_load_b128 v[151:154], off, off offset:372
	scratch_load_b128 v[155:158], off, off offset:388
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[127:130], off offset:256
	scratch_store_b128 off, v[131:134], off offset:272
	scratch_store_b128 off, v[175:178], off offset:192
	scratch_store_b128 off, v[179:182], off offset:208
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[159:162], off, off offset:192
	scratch_load_b128 v[163:166], off, off offset:208
	v_dual_mov_b32 v96, v97 :: v_dual_mov_b32 v9, 0x7632
	v_xor_b32_e32 v1, 32, v98
	v_mov_b32_e32 v8, 0x5410
	v_and_or_b32 v13, 0x1c0, v72, v194
	v_xor_b32_e32 v11, 0xa0, v98
	v_cndmask_b32_e64 v9, 0x3276, v9, s1
	v_add_nc_u32_e32 v245, 0, v1
	v_cndmask_b32_e64 v8, 0x1054, v8, s1
	v_xor_b32_e32 v22, v13, v70
	v_xor_b32_e32 v5, 0x60, v98
	v_lshl_or_b32 v9, v9, 8, v9
	v_mov_b32_e32 v56, 0
	v_lshl_or_b32 v8, v8, 8, v8
	v_xor_b32_e32 v6, 0x70, v98
	v_xor_b32_e32 v10, 0x90, v98
	v_and_b32_e32 v9, 0x760076, v9
	v_xor_b32_e32 v12, 0xb0, v98
	v_dual_mov_b32 v175, v208 :: v_dual_and_b32 v8, 0x540054, v8
	v_xor_b32_e32 v14, 0xc0, v98
	v_xor_b32_e32 v13, 0xe0, v98
	v_xor_b32_e32 v17, 16, v22
	v_xor_b32_e32 v0, 16, v98
	v_xor_b32_e32 v2, 48, v98
	v_xor_b32_e32 v3, 64, v98
	v_xor_b32_e32 v4, 0x50, v98
	v_xor_b32_e32 v7, 0x80, v98
	v_xor_b32_e32 v15, 0xd0, v98
	v_xor_b32_e32 v16, 0xf0, v98
	v_xor_b32_e32 v18, 32, v22
	v_xor_b32_e32 v19, 48, v22
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v9, v9, 4, v9
	v_xor_b32_e32 v20, 0x420, v22
	v_xor_b32_e32 v21, 0x430, v22
	s_clause 0x5                            ; 28-byte Folded Spill
	scratch_store_b32 off, v74, off offset:292
	scratch_store_b32 off, v76, off offset:296
	scratch_store_b32 off, v22, off offset:304
	scratch_store_b32 off, v75, off offset:288
	scratch_store_b32 off, v77, off offset:300
	scratch_store_b64 off, v[99:100], off offset:324
	v_xor_b32_e32 v22, 0x410, v22
	v_dual_mov_b32 v134, v115 :: v_dual_add_nc_u32 v67, 0, v11
	v_dual_mov_b32 v40, v56 :: v_dual_mov_b32 v167, v183
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v253, off offset:416
	scratch_store_b32 off, v248, off offset:420
	v_dual_mov_b32 v133, v114 :: v_dual_add_nc_u32 v248, 0, v5
	v_dual_mov_b32 v131, v112 :: v_dual_add_nc_u32 v64, 0, v6
	v_dual_mov_b32 v129, v110 :: v_dual_add_nc_u32 v66, 0, v10
	v_dual_mov_b32 v127, v108 :: v_dual_add_nc_u32 v68, 0, v12
	v_dual_mov_b32 v132, v113 :: v_dual_add_nc_u32 v69, 0, v14
	v_dual_mov_b32 v130, v111 :: v_dual_add_nc_u32 v71, 0, v13
	v_dual_mov_b32 v128, v109 :: v_dual_add_nc_u32 v73, 0, v17
	v_dual_mov_b32 v48, v56 :: v_dual_mov_b32 v111, v198
	v_dual_mov_b32 v42, v56 :: v_dual_mov_b32 v169, v185
	v_dual_mov_b32 v44, v56 :: v_dual_mov_b32 v171, v187
	v_dual_mov_b32 v46, v56 :: v_dual_mov_b32 v173, v189
	v_dual_mov_b32 v35, v56 :: v_dual_mov_b32 v170, v186
	v_dual_mov_b32 v37, v56 :: v_dual_mov_b32 v174, v190
	v_mov_b32_e32 v119, v232
	v_mov_b32_e32 v168, v184
	v_mov_b32_e32 v172, v188
	v_dual_mov_b32 v183, v224 :: v_dual_and_b32 v242, 0x5040504, v8
	v_mov_b32_e32 v177, v210
	v_dual_mov_b32 v176, v209 :: v_dual_and_b32 v243, 0x7060706, v9
	v_dual_mov_b32 v179, v212 :: v_dual_add_nc_u32 v244, 0, v0
	v_dual_mov_b32 v178, v211 :: v_dual_add_nc_u32 v253, 0, v2
	v_dual_mov_b32 v180, v213 :: v_dual_add_nc_u32 v247, 0, v3
	v_dual_mov_b32 v181, v214 :: v_dual_add_nc_u32 v240, 0, v4
	v_dual_mov_b32 v182, v215 :: v_dual_add_nc_u32 v65, 0, v7
	v_dual_mov_b32 v57, v56 :: v_dual_add_nc_u32 v70, 0, v15
	v_dual_mov_b32 v59, v56 :: v_dual_add_nc_u32 v72, 0, v16
	v_dual_mov_b32 v61, v56 :: v_dual_add_nc_u32 v74, 0, v18
	v_dual_mov_b32 v58, v56 :: v_dual_add_nc_u32 v75, 0, v19
	v_dual_mov_b32 v63, v56 :: v_dual_add_nc_u32 v76, 0, v20
	v_dual_mov_b32 v60, v56 :: v_dual_add_nc_u32 v77, 0, v21
	v_dual_mov_b32 v49, v56 :: v_dual_add_nc_u32 v78, 0, v22
	v_dual_mov_b32 v62, v56 :: v_dual_mov_b32 v249, 0xff800000
	v_dual_mov_b32 v50, v56 :: v_dual_mov_b32 v115, v202
	v_dual_mov_b32 v51, v56 :: v_dual_mov_b32 v112, v199
	v_dual_mov_b32 v52, v56 :: v_dual_mov_b32 v121, v234
	v_dual_mov_b32 v53, v56 :: v_dual_mov_b32 v114, v201
	v_dual_mov_b32 v54, v56 :: v_dual_mov_b32 v125, v238
	v_dual_mov_b32 v55, v56 :: v_dual_mov_b32 v116, v203
	v_dual_mov_b32 v41, v56 :: v_dual_mov_b32 v118, v205
	v_dual_mov_b32 v43, v56 :: v_dual_mov_b32 v120, v233
	v_dual_mov_b32 v45, v56 :: v_dual_mov_b32 v122, v235
	v_dual_mov_b32 v47, v56 :: v_dual_mov_b32 v124, v237
	v_dual_mov_b32 v32, v56 :: v_dual_mov_b32 v185, v226
	v_dual_mov_b32 v33, v56 :: v_dual_mov_b32 v126, v239
	v_dual_mov_b32 v34, v56 :: v_dual_mov_b32 v189, v230
	v_mov_b32_e32 v36, v56
	v_mov_b32_e32 v38, v56
	v_dual_mov_b32 v39, v56 :: v_dual_mov_b32 v184, v225
	v_mov_b32_e32 v24, v56
	v_dual_mov_b32 v25, v56 :: v_dual_mov_b32 v186, v227
	v_mov_b32_e32 v26, v56
	v_dual_mov_b32 v27, v56 :: v_dual_mov_b32 v188, v229
	v_mov_b32_e32 v28, v56
	v_dual_mov_b32 v29, v56 :: v_dual_mov_b32 v190, v231
	v_mov_b32_e32 v30, v56
	v_mov_b32_e32 v31, v56
	v_mov_b32_e32 v16, v56
	v_mov_b32_e32 v17, v56
	v_mov_b32_e32 v18, v56
	v_mov_b32_e32 v19, v56
	v_mov_b32_e32 v20, v56
	v_mov_b32_e32 v21, v56
	v_mov_b32_e32 v22, v56
	v_mov_b32_e32 v23, v56
	v_mov_b32_e32 v8, v56
	v_mov_b32_e32 v9, v56
	v_mov_b32_e32 v10, v56
	v_mov_b32_e32 v11, v56
	v_mov_b32_e32 v12, v56
	v_mov_b32_e32 v13, v56
	v_mov_b32_e32 v14, v56
	v_mov_b32_e32 v15, v56
	v_mov_b32_e32 v0, v56
	v_mov_b32_e32 v1, v56
	v_mov_b32_e32 v2, v56
	v_mov_b32_e32 v3, v56
	v_mov_b32_e32 v4, v56
	v_mov_b32_e32 v5, v56
	v_mov_b32_e32 v6, v56
	v_mov_b32_e32 v7, v56
	v_mov_b32_e32 v252, v56
	v_mov_b32_e32 v113, v200
	v_mov_b32_e32 v117, v204
	v_mov_b32_e32 v123, v236
	v_mov_b32_e32 v187, v228
	v_mov_b32_e32 v146, v96
	v_mov_b32_e32 v148, v100
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s62, 0x76543210
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	s_mov_b32 s34, s57
	s_clause 0x3                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[81:82], off offset:308
	scratch_store_b64 off, v[95:96], off offset:316
	scratch_store_b32 off, v101, off offset:332
	scratch_store_b32 off, v102, off offset:336
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[85:86], off, off offset:308
	scratch_load_b64 v[86:87], off, off offset:316
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s63, s34, 32
	v_dual_mov_b32 v108, v80 :: v_dual_mov_b32 v149, v103
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s64, s63, s59
	.loc	1 856 65                        ; attention.py:856:65
	s_cmpk_lt_u32 s34, 0x7e0
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s64, s46
	.loc	1 856 65                        ; attention.py:856:65
	s_cselect_b32 s65, -1, 0
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v79, s4, v80, 1
	v_add_lshl_u32 v80, s4, v93, 1
	v_add_lshl_u32 v81, s4, v191, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, vcc_lo, s65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v82, s4, v250, 1
	v_add_lshl_u32 v83, s4, v251, 1
	v_add_lshl_u32 v84, s4, v94, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	v_dual_mov_b32 v110, v98 :: v_dual_add_nc_u32 v103, 0, v98
	v_cndmask_b32_e64 v80, 0x80000000, v80, s3
	v_cndmask_b32_e64 v81, 0x80000000, v81, s3
	v_cndmask_b32_e64 v82, 0x80000000, v82, s3
	v_cndmask_b32_e64 v83, 0x80000000, v83, s3
	v_cndmask_b32_e64 v84, 0x80000000, v84, s3
	v_dual_mov_b32 v109, v93 :: v_dual_mov_b32 v102, s43
	v_dual_mov_b32 v143, v94 :: v_dual_mov_b32 v100, s41
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v101, s42 :: v_dual_mov_b32 v98, s39
	v_dual_mov_b32 v99, s40 :: v_dual_mov_b32 v96, s37
	v_dual_mov_b32 v97, s38 :: v_dual_mov_b32 v144, v195
	v_dual_mov_b32 v95, s36 :: v_dual_mov_b32 v150, v193
	v_mov_b32_e32 v147, v196
	v_mov_b32_e32 v145, v192
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s64, s64, s47
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v85, s4, v85, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v86, s4, v86, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	v_cndmask_b32_e64 v86, 0x80000000, v86, s3
	s_clause 0x7
	buffer_load_b128 v[220:223], v79, s[52:55], 0 offen
	buffer_load_b128 v[216:219], v80, s[52:55], 0 offen
	buffer_load_b128 v[212:215], v81, s[52:55], 0 offen
	buffer_load_b128 v[208:211], v82, s[52:55], 0 offen
	buffer_load_b128 v[236:239], v83, s[52:55], 0 offen
	buffer_load_b128 v[232:235], v84, s[52:55], 0 offen
	buffer_load_b128 v[228:231], v85, s[52:55], 0 offen
	buffer_load_b128 v[224:227], v86, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v103
	ds_load_b128 v[83:86], v244
	ds_load_b128 v[87:90], v103 offset:8192
	ds_load_b128 v[91:94], v244 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[159:166], v[95:102]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[87:94], v[159:166], v[95:102]
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v95, off, off offset:180
	scratch_load_b128 v[87:90], off, off offset:256
	scratch_load_b128 v[91:94], off, off offset:272
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v253
	ds_load_b128 v[79:82], v245
	v_mov_b32_e32 v101, v249
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[167:174], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v253 offset:8192
	ds_load_b128 v[79:82], v245 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[167:174], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v240
	ds_load_b128 v[79:82], v247
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[151:158], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v240 offset:8192
	ds_load_b128 v[79:82], v247 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[151:158], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v64
	ds_load_b128 v[79:82], v248
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[135:142], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v64 offset:8192
	ds_load_b128 v[79:82], v248 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[135:142], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v66
	ds_load_b128 v[79:82], v65
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[183:190], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v66 offset:8192
	ds_load_b128 v[79:82], v65 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[183:190], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v68
	ds_load_b128 v[79:82], v67
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[119:126], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v68 offset:8192
	ds_load_b128 v[79:82], v67 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[119:126], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v70
	ds_load_b128 v[79:82], v69
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v70 offset:8192
	ds_load_b128 v[79:82], v69 offset:8192
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s3, s0, s3
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off offset:224
	scratch_load_b128 v[91:94], off, off offset:240
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v72
	ds_load_b128 v[79:82], v71
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s5, s6
	s_and_b32 s4, s0, s4
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[83:86], v72 offset:8192
	ds_load_b128 v[79:82], v71 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off
	scratch_load_b128 v[91:94], off, off offset:16
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v103 offset:256
	ds_load_b128 v[83:86], v244 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[111:118], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v103 offset:8448
	ds_load_b128 v[83:86], v244 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[111:118], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v245 offset:256
	ds_load_b128 v[83:86], v253 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[175:182], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v245 offset:8448
	ds_load_b128 v[83:86], v253 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[175:182], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v247 offset:256
	ds_load_b128 v[83:86], v240 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[127:134], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v247 offset:8448
	ds_load_b128 v[83:86], v240 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[127:134], v[192:199]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v248 offset:256
	ds_load_b128 v[83:86], v64 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s7, s8
	s_and_b32 s5, s0, s5
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v248 offset:8448
	ds_load_b128 v[83:86], v64 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off offset:64
	scratch_load_b128 v[91:94], off, off offset:80
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v65 offset:256
	ds_load_b128 v[83:86], v66 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v95, s34, v106
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s9, s10
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s7, s0, s7
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v65 offset:8448
	ds_load_b128 v[83:86], v66 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off offset:32
	scratch_load_b128 v[91:94], off, off offset:48
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v67 offset:256
	ds_load_b128 v[83:86], v68 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s13, s14
	s_and_b32 s8, s0, s8
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v67 offset:8448
	ds_load_b128 v[83:86], v68 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off offset:96
	scratch_load_b128 v[91:94], off, off offset:112
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v69 offset:256
	ds_load_b128 v[83:86], v70 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s15, s16
	s_and_b32 s9, s0, s9
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v69 offset:8448
	ds_load_b128 v[83:86], v70 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[87:90], off, off offset:128
	scratch_load_b128 v[91:94], off, off offset:144
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v71 offset:256
	ds_load_b128 v[83:86], v72 offset:256
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[200:207], v[79:86], v[87:94], v[200:207]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[79:82], v71 offset:8448
	ds_load_b128 v[83:86], v72 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[192:199], v[79:86], v[87:94], v[192:199]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v79, s58, v200
	v_mul_f32_e32 v81, s58, v201
	v_mul_f32_e32 v89, s58, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, s58, v202 :: v_dual_mul_f32 v84, s58, v196
	v_dual_mul_f32 v93, s58, v207 :: v_dual_mul_f32 v86, s58, v197
	v_mul_f32_e32 v94, s58, v192
	v_mul_f32_e32 v80, s58, v193
	v_dual_mul_f32 v82, s58, v194 :: v_dual_mul_f32 v91, s58, v205
	v_mul_f32_e32 v88, s58, v199
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s6
	v_cndmask_b32_e64 v86, 0xff800000, v86, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v82, 0xff800000, v82, s8
	v_cndmask_b32_e64 v80, 0xff800000, v80, s9
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v90, s58, v204
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s3
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v92, s58, v206
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s34, v95
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v95, s34, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v95, s34, v104
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s23, s24
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s0, s10
	s_and_b32 s10, s17, s18
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v91, s11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s25, s26
	s_and_b32 s10, s0, s10
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s27, s28
	s_and_b32 s15, s0, s13
	s_and_b32 s13, s0, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v89, s15
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v87, s58, v198
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s19, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s12, s0, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s4
	v_cndmask_b32_e64 v100, 0xff800000, v93, s12
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v95, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s29, s30
	s_and_b32 s16, s0, s14
	s_and_b32 s14, s21, s22
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s16
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s0, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v92, s14
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v95, s34, v95
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v95, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v95, s34, v107
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s31, s33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v95, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v95, v254
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s23, s0, s23
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v95, v84, v86, v87
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v81, s23
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s34, s35
	s_mov_b32 s34, s63
	s_and_b32 s24, s0, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s24
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v83, s58, v195
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v96, v80, v82, v83
	v_max3_f32 v95, v96, v95, v88
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v90, s13
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v90, v79, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v81, v98, v96, v97
	v_max3_f32 v90, v90, v85, v81
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v94, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v91, v99, v100, v81
	v_max3_f32 v90, v90, v91, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v91, v90, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v249, v101, v90, v91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v89, v249
	v_sub_f32_e32 v79, v79, v249
	v_sub_f32_e32 v85, v85, v249
	v_sub_f32_e32 v94, v97, v249
	v_sub_f32_e32 v80, v80, v249
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v79
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v94, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v249
	v_sub_f32_e32 v82, v82, v249
	v_sub_f32_e32 v84, v84, v249
	v_sub_f32_e32 v86, v86, v249
	v_sub_f32_e32 v83, v83, v249
	v_sub_f32_e32 v87, v87, v249
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v89, s23
	v_cndmask_b32_e64 v200, 0, v90, s24
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v89.h, 0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v201, 0, v85, s16
	v_cndmask_b32_e64 v204, 0, v94, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v89.l, v79.h
	v_mov_b16_e64 v90.l, v200.h
	v_mov_b16_e32 v90.h, v89.h
	v_cmp_o_f32_e64 s17, v79, v79
	v_cmp_o_f32_e64 s18, v200, v200
	v_and_b32_e32 v91, 1, v89
	v_mov_b16_e32 v85.h, v89.h
	v_and_b32_e32 v90, 1, v90
	v_mov_b16_e64 v85.l, v201.h
	v_cmp_o_f32_e64 s16, v201, v201
	v_add3_u32 v91, v79, v91, 0x7fff
	v_cmp_o_f32_e64 s11, v204, v204
	v_add3_u32 v90, v200, v90, 0x7fff
	v_and_b32_e32 v85, 1, v85
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v249
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v91.h, 0x7fff, v91.h, s17
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v200, v79
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v91.l, 0x7fff, v90.h, s18
	v_add3_u32 v85, v201, v85, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v87, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v92, v91, s62, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v82, v82
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v90, v92, v91, v242
	v_perm_b32 v91, v92, v91, v243
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v98, v249
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v98, v101, v249
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s6
	v_cndmask_b32_e64 v86, 0, v86, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v98, v98
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s4
	v_cndmask_b32_e64 v88, 0, v88, s3
	v_cndmask_b32_e64 v82, 0, v82, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v86, v86
	v_cmp_o_f32_e64 s6, v84, v84
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v88, v88
	v_cmp_o_f32_e64 s8, v82, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v92, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v87, v87
	v_cmp_o_f32_e64 s7, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v89.l, v202.h
	v_cmp_o_f32_e64 s15, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v92, 1, v89
	v_mov_b16_e64 v89.l, v204.h
	v_add3_u32 v92, v202, v92, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v94, 1, v89
	v_cndmask_b16 v85.h, 0x7fff, v92.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v94, v204, v94, 0x7fff
	v_permlanex16_b32 v93, v85, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v92, v93, v85, v242
	v_perm_b32 v93, v93, v85, v243
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v96, v249
	v_sub_f32_e32 v96, v100, v249
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v96, v96
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v203, 0, v85, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v85.h, v89.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v206, 0, v96, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v85.l, v203.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v203, v203
	v_mov_b16_e64 v89.l, v206.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v85, 1, v85
	v_and_b32_e32 v96, 1, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v85, v203, v85, 0x7fff
	v_add3_u32 v96, v206, v96, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v94.h, s11
	v_cmp_o_f32_e64 s11, v206, v206
	v_permlanex16_b32 v95, v85, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v94, v95, v85, v242
	v_perm_b32 v95, v95, v85, v243
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v99, v249
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v205, 0, v85, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v85.h, v89.h
	v_mov_b16_e64 v85.l, v205.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v205, v205
	v_and_b32_e32 v85, 1, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v85, v205, v85, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s12
	v_cndmask_b16 v85.h, 0x7fff, v96.h, s11
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v97, v85, s62, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v207, 0, v98, s11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v96, v97, v85, v242
	v_perm_b32 v97, v97, v85, v243
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v85, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v56, v56, v207
	v_mul_f32_e32 v57, v57, v207
	v_mul_f32_e32 v58, v58, v207
	v_mul_f32_e32 v59, v59, v207
	v_mul_f32_e32 v60, v60, v207
	v_mul_f32_e32 v61, v61, v207
	v_mul_f32_e32 v62, v62, v207
	v_mul_f32_e32 v63, v63, v207
	v_mul_f32_e32 v48, v48, v207
	v_mul_f32_e32 v49, v49, v207
	v_mul_f32_e32 v50, v50, v207
	v_mul_f32_e32 v51, v51, v207
	v_mul_f32_e32 v52, v52, v207
	v_mul_f32_e32 v53, v53, v207
	v_mul_f32_e32 v54, v54, v207
	v_mul_f32_e32 v55, v55, v207
	v_mul_f32_e32 v40, v40, v207
	v_mul_f32_e32 v41, v41, v207
	v_mul_f32_e32 v43, v43, v207
	v_mul_f32_e32 v44, v44, v207
	v_mul_f32_e32 v45, v45, v207
	v_mul_f32_e32 v46, v46, v207
	v_mul_f32_e32 v47, v47, v207
	v_mul_f32_e32 v32, v32, v207
	v_mul_f32_e32 v33, v33, v207
	v_mul_f32_e32 v34, v34, v207
	v_mul_f32_e32 v35, v35, v207
	v_mul_f32_e32 v36, v36, v207
	v_mul_f32_e32 v37, v37, v207
	v_mul_f32_e32 v38, v38, v207
	v_mul_f32_e32 v39, v39, v207
	v_mul_f32_e32 v24, v24, v207
	v_mul_f32_e32 v25, v25, v207
	v_mul_f32_e32 v26, v26, v207
	v_mul_f32_e32 v27, v27, v207
	v_mul_f32_e32 v28, v28, v207
	v_mul_f32_e32 v29, v29, v207
	v_mul_f32_e32 v30, v30, v207
	v_mul_f32_e32 v31, v31, v207
	v_mul_f32_e32 v16, v16, v207
	v_mul_f32_e32 v17, v17, v207
	v_mul_f32_e32 v18, v18, v207
	v_mul_f32_e32 v19, v19, v207
	v_mul_f32_e32 v20, v20, v207
	v_mul_f32_e32 v21, v21, v207
	v_mul_f32_e32 v22, v22, v207
	v_mul_f32_e32 v23, v23, v207
	v_mul_f32_e32 v8, v8, v207
	v_mul_f32_e32 v9, v9, v207
	v_mul_f32_e32 v10, v10, v207
	v_mul_f32_e32 v11, v11, v207
	v_mul_f32_e32 v12, v12, v207
	v_mul_f32_e32 v13, v13, v207
	v_mul_f32_e32 v14, v14, v207
	v_mul_f32_e32 v15, v15, v207
	v_mul_f32_e32 v0, v0, v207
	v_mul_f32_e32 v1, v1, v207
	v_mul_f32_e32 v2, v2, v207
	v_mul_f32_e32 v3, v3, v207
	v_mul_f32_e32 v4, v4, v207
	v_mul_f32_e32 v5, v5, v207
	v_mul_f32_e32 v6, v6, v207
	v_mul_f32_e32 v7, v7, v207
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v207 :: v_dual_add_nc_u32 v85, 0, v85
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v85 offset:16384
	ds_load_b128 v[196:199], v73 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[192:199], v[90:97], v[56:63]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[196:199], v77 offset:16384
	ds_load_b128 v[192:195], v76 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[48:55], v[192:199], v[90:97], v[48:55]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[196:199], v73 offset:18432
	ds_load_b128 v[192:195], v85 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[40:47], v[192:199], v[90:97], v[40:47]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v76 offset:18432
	ds_load_b128 v[196:199], v77 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[32:39], v[192:199], v[90:97], v[32:39]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v85 offset:20480
	ds_load_b128 v[196:199], v73 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[192:199], v[90:97], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[196:199], v77 offset:20480
	ds_load_b128 v[192:195], v76 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[192:199], v[90:97], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[196:199], v73 offset:22528
	ds_load_b128 v[192:195], v85 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[192:199], v[90:97], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v76 offset:22528
	ds_load_b128 v[196:199], v77 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[192:199], v[90:97], v[0:7]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v81, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v80, v80
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v90, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.h, v89.h
	v_mov_b16_e32 v90.l, v80.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v89.l, v81.h
	v_cmp_o_f32_e64 s9, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v90, 1, v90
	v_and_b32_e32 v91, 1, v89
	v_mov_b16_e32 v89.l, v83.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v90, v80, v90, 0x7fff
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v81
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v91, v81, v91, 0x7fff
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s10
	v_cndmask_b16 v90.h, 0x7fff, v91.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v81
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v91, v90, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v192, v91, v90, v242
	v_perm_b32 v193, v91, v90, v243
	v_mov_b16_e32 v90.h, v89.h
	v_mov_b16_e32 v90.l, v82.h
	v_and_b32_e32 v91, 1, v89
	v_mov_b16_e32 v89.l, v86.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v91, v83, v91, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v87, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v82, v90, 0x7fff
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v84, v86
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v90.h, 0x7fff, v91.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v82, v83
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v91, v90, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v81
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v194, v91, v90, v242
	v_perm_b32 v195, v91, v90, v243
	v_mov_b16_e32 v90.h, v89.h
	v_mov_b16_e32 v90.l, v84.h
	v_and_b32_e32 v91, 1, v89
	v_mov_b16_e32 v89.l, v88.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v91, v86, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v84, v90, 0x7fff
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v90.h, 0x7fff, v91.h, s5
	v_permlanex16_b32 v91, v90, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v196, v91, v90, v242
	v_perm_b32 v197, v91, v90, v243
	v_mov_b16_e32 v90.h, v89.h
	v_mov_b16_e32 v90.l, v87.h
	v_and_b32_e32 v89, 1, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v88, v89, 0x7fff
	v_add3_u32 v90, v87, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s4
	v_cndmask_b16 v90.h, 0x7fff, v89.h, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s2, s65
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s63, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v89, v90, s62, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v198, v89, v90, v242
	v_perm_b32 v199, v89, v90, v243
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[93:96], v75 offset:16384
	ds_load_b128 v[89:92], v74 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[89:96], v[192:199], v[56:63]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v85 offset:17408
	ds_load_b128 v[93:96], v78 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[48:55], v[89:96], v[192:199], v[48:55]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v74 offset:18432
	ds_load_b128 v[93:96], v75 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[40:47], v[89:96], v[192:199], v[40:47]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v85 offset:19456
	ds_load_b128 v[93:96], v78 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[32:39], v[89:96], v[192:199], v[32:39]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[93:96], v75 offset:20480
	ds_load_b128 v[89:92], v74 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[89:96], v[192:199], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v85 offset:21504
	ds_load_b128 v[93:96], v78 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[89:96], v[192:199], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v74 offset:22528
	ds_load_b128 v[93:96], v75 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[89:96], v[192:199], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v85 offset:23552
	ds_load_b128 v[93:96], v78 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[89:96], v[192:199], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b64 v[89:90], off, off offset:324 ; 8-byte Folded Reload
	v_mov_b32_e32 v195, v144
	v_dual_mov_b32 v192, v104 :: v_dual_mov_b32 v193, v105
	v_mov_b32_e32 v194, v106
	v_mov_b32_e32 v196, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v91, s64, v195, 1
	scratch_load_b32 v90, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v93, 0x80000000, v91, s3
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v85, s64, v89, 1
	scratch_load_b32 v89, off, off offset:332 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v85, 0x80000000, v85, s3
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v90, s64, v90, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v90, 0x80000000, v90, s3
	buffer_load_b128 v[98:101], v90, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v89, s64, v89, 1
	v_cndmask_b32_e64 v89, 0x80000000, v89, s3
	s_clause 0x2
	buffer_load_b128 v[102:105], v85, s[48:51], 0 offen
	buffer_load_b128 v[89:92], v89, s[48:51], 0 offen
	buffer_load_b128 v[94:97], v93, s[48:51], 0 offen
	v_mov_b32_e32 v85, v107
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v146, v[220:223]
	ds_store_b128 v146, v[236:239] offset:8192
	ds_store_b128 v148, v[216:219]
	ds_store_b128 v148, v[232:235] offset:8192
	ds_store_b128 v246, v[212:215]
	ds_store_b128 v246, v[228:231] offset:8192
	ds_store_b128 v241, v[208:211]
	ds_store_b128 v241, v[224:227] offset:8192
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v107.l, v98.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v106.l, v102.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v106.h, v89.l
	v_mov_b16_e32 v89.l, v102.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v107.h, v94.l
	v_mov_b16_e32 v94.l, v98.h
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v98, v110 :: v_dual_mov_b32 v93, v89
	v_mov_b16_e32 v89.h, v91.l
	v_mov_b16_e32 v91.l, v104.h
	v_mov_b16_e32 v89.l, v104.l
	v_mov_b32_e32 v104, v192
	ds_store_2addr_b64 v147, v[106:107], v[93:94] offset1:8
	v_mov_b16_e32 v106.h, v90.l
	v_mov_b16_e32 v90.l, v103.h
	v_mov_b16_e32 v107.l, v99.l
	v_mov_b16_e32 v107.h, v95.l
	v_mov_b16_e32 v106.l, v103.l
	v_mov_b16_e32 v95.l, v99.h
	v_mov_b32_e32 v94, v90
	v_mov_b16_e32 v90.l, v100.l
	v_mov_b16_e32 v90.h, v96.l
	v_mov_b16_e32 v96.l, v100.h
	v_mov_b32_e32 v103, v149
	ds_store_2addr_b64 v149, v[106:107], v[94:95] offset1:8
	v_mov_b32_e32 v95, v91
	v_mov_b32_e32 v107, v85
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v85, v201, v202 :: v_dual_mov_b32 v106, v194
	v_mov_b32_e32 v192, v145
.Ltmp27:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v145, v[89:90], v[95:96] offset1:8
	v_mov_b16_e32 v90.h, v97.l
	v_mov_b16_e32 v97.l, v101.h
	v_mov_b16_e32 v90.l, v101.l
	v_mov_b16_e32 v89.l, v105.l
	v_mov_b16_e32 v89.h, v92.l
	v_mov_b16_e32 v92.l, v105.h
	v_mov_b32_e32 v93, v97
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v85
	v_dual_mov_b32 v94, v143 :: v_dual_mov_b32 v105, v193
	v_mov_b32_e32 v193, v150
.Ltmp29:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v150, v[89:90], v[92:93] offset1:8
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v203, v204 :: v_dual_add_f32 v90, v205, v206
	v_mov_b32_e32 v93, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v84, v89, v90
	v_add_f32_e32 v79, v79, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v79, v79, v80 :: v_dual_mov_b32 v80, v252
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v81, v79, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v252, v79, v81
.Ltmp33:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v252, v80, v207
	v_mov_b32_e32 v80, v108
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v205, v118 :: v_dual_mov_b32 v204, v117
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v248, off, off offset:420
	scratch_load_b32 v253, off, off offset:416
	scratch_load_b32 v194, off, off offset:404
	scratch_load_b32 v206, off, off offset:184
	scratch_load_b32 v197, off, off offset:188
	scratch_load_b32 v73, off, off offset:160
	scratch_load_b32 v84, off, off offset:164
	scratch_load_b32 v82, off, off offset:168
	scratch_load_b32 v83, off, off offset:172
	scratch_load_b32 v74, off, off offset:292
	scratch_load_b32 v76, off, off offset:296
	scratch_load_b32 v77, off, off offset:300
	scratch_load_b32 v78, off, off offset:176
	scratch_load_b32 v75, off, off offset:288
	scratch_load_b32 v79, off, off offset:180
	v_dual_mov_b32 v203, v116 :: v_dual_mov_b32 v202, v115
	v_dual_mov_b32 v201, v114 :: v_dual_mov_b32 v200, v113
	v_dual_mov_b32 v199, v112 :: v_dual_mov_b32 v198, v111
	v_dual_mov_b32 v108, v127 :: v_dual_mov_b32 v109, v128
	v_dual_mov_b32 v110, v129 :: v_dual_mov_b32 v111, v130
	v_dual_mov_b32 v112, v131 :: v_dual_mov_b32 v113, v132
	v_dual_mov_b32 v114, v133 :: v_dual_mov_b32 v115, v134
	s_clause 0xd                            ; 224-byte Folded Reload
	scratch_load_b128 v[216:219], off, off offset:128
	scratch_load_b128 v[220:223], off, off offset:144
	scratch_load_b128 v[85:88], off, off
	scratch_load_b128 v[89:92], off, off offset:16
	scratch_load_b128 v[135:138], off, off offset:64
	scratch_load_b128 v[139:142], off, off offset:80
	scratch_load_b128 v[143:146], off, off offset:32
	scratch_load_b128 v[147:150], off, off offset:48
	scratch_load_b128 v[151:154], off, off offset:96
	scratch_load_b128 v[155:158], off, off offset:112
	scratch_load_b128 v[159:162], off, off offset:224
	scratch_load_b128 v[163:166], off, off offset:240
	scratch_load_b128 v[127:130], off, off offset:256
	scratch_load_b128 v[131:134], off, off offset:272
	v_dual_mov_b32 v215, v182 :: v_dual_mov_b32 v214, v181
	v_dual_mov_b32 v213, v180 :: v_dual_mov_b32 v212, v179
	v_dual_mov_b32 v211, v178 :: v_dual_mov_b32 v210, v177
	v_dual_mov_b32 v209, v176 :: v_dual_mov_b32 v208, v175
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[175:178], off, off offset:192
	scratch_load_b128 v[179:182], off, off offset:208
	v_dual_mov_b32 v231, v190 :: v_dual_mov_b32 v230, v189
	v_dual_mov_b32 v239, v126 :: v_dual_mov_b32 v238, v125
	v_dual_mov_b32 v229, v188 :: v_dual_mov_b32 v228, v187
	v_dual_mov_b32 v227, v186 :: v_dual_mov_b32 v226, v185
	v_dual_mov_b32 v225, v184 :: v_dual_mov_b32 v224, v183
	v_dual_mov_b32 v190, v174 :: v_dual_mov_b32 v189, v173
	v_dual_mov_b32 v237, v124 :: v_dual_mov_b32 v236, v123
	v_dual_mov_b32 v235, v122 :: v_dual_mov_b32 v234, v121
	v_dual_mov_b32 v233, v120 :: v_dual_mov_b32 v232, v119
	v_dual_mov_b32 v188, v172 :: v_dual_mov_b32 v187, v171
	v_dual_mov_b32 v186, v170 :: v_dual_mov_b32 v185, v169
	v_dual_mov_b32 v184, v168 :: v_dual_mov_b32 v183, v167
	s_branch .LBB0_5
.LBB0_4:
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
	v_mov_b32_e32 v39, v7
	v_mov_b32_e32 v38, v7
	v_mov_b32_e32 v37, v7
	v_mov_b32_e32 v36, v7
	v_mov_b32_e32 v35, v7
	v_mov_b32_e32 v34, v7
	v_mov_b32_e32 v33, v7
	v_mov_b32_e32 v32, v7
	v_mov_b32_e32 v47, v7
	v_mov_b32_e32 v46, v7
	v_mov_b32_e32 v45, v7
	v_mov_b32_e32 v44, v7
	v_mov_b32_e32 v43, v7
	v_mov_b32_e32 v42, v7
	v_mov_b32_e32 v41, v7
	v_mov_b32_e32 v40, v7
	v_mov_b32_e32 v55, v7
	v_mov_b32_e32 v54, v7
	v_mov_b32_e32 v53, v7
	v_mov_b32_e32 v52, v7
	v_mov_b32_e32 v51, v7
	v_mov_b32_e32 v50, v7
	v_mov_b32_e32 v49, v7
	v_mov_b32_e32 v48, v7
	v_mov_b32_e32 v63, v7
	v_mov_b32_e32 v62, v7
	v_mov_b32_e32 v61, v7
	v_mov_b32_e32 v60, v7
	v_mov_b32_e32 v59, v7
	v_mov_b32_e32 v58, v7
	v_mov_b32_e32 v57, v7
	v_mov_b32_e32 v56, v7
	v_mov_b32_e32 v252, v7
.LBB0_5:                                ; %Flow269
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[240:243], off, off offset:340
	scratch_load_b128 v[244:247], off, off offset:356
	scratch_load_b128 v[167:170], off, off offset:372
	scratch_load_b128 v[171:174], off, off offset:388
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_sub_i32 s3, s60, s57
	s_mov_b32 s4, 0
	s_cmp_gt_i32 s3, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	.loc	1 818 13                        ; attention.py:818:13
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s3, 1
	.loc	1 854 32                        ; attention.py:854:32
	s_barrier
	s_cbranch_scc1 .LBB0_7
; %bb.6:
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[198:201], off offset:192
	scratch_store_b128 off, v[202:205], off offset:208
	scratch_store_b128 off, v[108:111], off offset:224
	scratch_store_b128 off, v[112:115], off offset:240
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[112:115], off, off offset:192
	scratch_load_b128 v[116:119], off, off offset:208
	.loc	1 854 32                        ; attention.py:854:32
	v_xad_u32 v64, v98, 16, 0
	v_add_nc_u32_e32 v65, 0, v98
	s_waitcnt vmcnt(21)
	scratch_store_b128 off, v[216:219], off offset:128 ; 16-byte Folded Spill
	s_waitcnt vmcnt(20)
	scratch_store_b128 off, v[220:223], off offset:144 ; 16-byte Folded Spill
	s_waitcnt vmcnt(19)
	scratch_store_b128 off, v[85:88], off   ; 16-byte Folded Spill
	s_waitcnt vmcnt(18)
	scratch_store_b128 off, v[89:92], off offset:16 ; 16-byte Folded Spill
	s_waitcnt vmcnt(17)
	scratch_store_b128 off, v[135:138], off offset:64 ; 16-byte Folded Spill
	s_waitcnt vmcnt(16)
	scratch_store_b128 off, v[139:142], off offset:80 ; 16-byte Folded Spill
	s_waitcnt vmcnt(15)
	scratch_store_b128 off, v[143:146], off offset:32 ; 16-byte Folded Spill
	s_waitcnt vmcnt(14)
	scratch_store_b128 off, v[147:150], off offset:48 ; 16-byte Folded Spill
	s_waitcnt vmcnt(13)
	scratch_store_b128 off, v[151:154], off offset:96 ; 16-byte Folded Spill
	s_waitcnt vmcnt(12)
	scratch_store_b128 off, v[155:158], off offset:112 ; 16-byte Folded Spill
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v82, v175
	ds_load_b128 v[196:199], v64
	ds_load_b128 v[192:195], v65
	ds_load_b128 v[204:207], v64 offset:8192
	ds_load_b128 v[200:203], v65 offset:8192
	ds_load_b128 v[70:73], v64 offset:256
	ds_load_b128 v[66:69], v65 offset:256
	v_dual_mov_b32 v143, v134 :: v_dual_mov_b32 v140, v131
	v_dual_mov_b32 v89, v182 :: v_dual_mov_b32 v142, v133
	v_dual_mov_b32 v141, v132 :: v_dual_mov_b32 v138, v129
	v_dual_mov_b32 v139, v130 :: v_dual_mov_b32 v136, v127
	v_dual_mov_b32 v137, v128 :: v_dual_mov_b32 v120, v159
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_mov_b32 s11, s4
	v_dual_mov_b32 v127, v166 :: v_dual_mov_b32 v128, v208
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v129, v209 :: v_dual_mov_b32 v130, v210
	v_dual_mov_b32 v131, v211 :: v_dual_mov_b32 v132, v212
	v_dual_mov_b32 v133, v213 :: v_dual_mov_b32 v134, v214
	v_dual_mov_b32 v135, v215 :: v_dual_mov_b32 v110, v76
	v_dual_mov_b32 v215, s11 :: v_dual_mov_b32 v212, s8
	v_dual_mov_b32 v83, v176 :: v_dual_mov_b32 v84, v177
	v_dual_mov_b32 v85, v178 :: v_dual_mov_b32 v86, v179
	v_dual_mov_b32 v87, v180 :: v_dual_mov_b32 v88, v181
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[78:81], v64 offset:8448
	v_mov_b32_e32 v111, v253
	v_dual_mov_b32 v253, v106 :: v_dual_mov_b32 v108, v77
	v_dual_mov_b32 v109, v74 :: v_dual_mov_b32 v214, s10
	v_mov_b32_e32 v106, v75
	ds_load_b128 v[74:77], v65 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v213, s9 :: v_dual_mov_b32 v210, s6
	v_dual_mov_b32 v211, s7 :: v_dual_mov_b32 v208, s4
	v_dual_mov_b32 v209, s5 :: v_dual_mov_b32 v144, v183
	.loc	1 854 32                        ; attention.py:854:32
	v_xad_u32 v64, v98, 32, 0
	v_xad_u32 v65, v98, 48, 0
	v_dual_mov_b32 v145, v184 :: v_dual_mov_b32 v146, v185
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[192:199], v[82:89], v[208:215]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[200:207], v[82:89], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[94:97], v65 offset:256
	ds_load_b128 v[90:93], v64 offset:256
	v_dual_mov_b32 v147, v186 :: v_dual_mov_b32 v148, v187
	v_dual_mov_b32 v149, v188 :: v_dual_mov_b32 v150, v189
	v_mov_b32_e32 v151, v190
	v_dual_mov_b32 v121, v160 :: v_dual_mov_b32 v122, v161
	v_dual_mov_b32 v123, v162 :: v_dual_mov_b32 v124, v163
	v_dual_mov_b32 v125, v164 :: v_dual_mov_b32 v126, v165
	v_dual_mov_b32 v251, v105 :: v_dual_mov_b32 v250, v104
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[183:190], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[188:191], v65 offset:8448
	ds_load_b128 v[184:187], v64 offset:8448
	v_xad_u32 v64, v98, 64, 0
	v_xad_u32 v65, 0x50, v98, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[144:151], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[180:183], v65 offset:256
	ds_load_b128 v[176:179], v64 offset:256
	v_dual_mov_b32 v144, v224 :: v_dual_mov_b32 v145, v225
	v_dual_mov_b32 v146, v226 :: v_dual_mov_b32 v147, v227
	v_dual_mov_b32 v148, v228 :: v_dual_mov_b32 v149, v229
	v_dual_mov_b32 v150, v230 :: v_dual_mov_b32 v151, v231
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[167:174], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[196:199], v65 offset:8448
	ds_load_b128 v[192:195], v64 offset:8448
	v_xad_u32 v64, 0x60, v98, 0
	v_xad_u32 v65, 0x70, v98, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[167:174], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[172:175], v65 offset:256
	ds_load_b128 v[168:171], v64 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[240:247], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[204:207], v65 offset:8448
	ds_load_b128 v[200:203], v64 offset:8448
	v_xad_u32 v64, 0x80, v98, 0
	v_xad_u32 v65, 0x90, v98, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[240:247], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[164:167], v65 offset:256
	ds_load_b128 v[160:163], v64 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[224:231], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[228:231], v65 offset:8448
	ds_load_b128 v[224:227], v64 offset:8448
	v_xad_u32 v64, 0xa0, v98, 0
	v_xad_u32 v65, 0xb0, v98, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[144:151], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[156:159], v65 offset:256
	ds_load_b128 v[152:155], v64 offset:256
	v_dual_mov_b32 v144, v232 :: v_dual_mov_b32 v145, v233
	v_dual_mov_b32 v146, v234 :: v_dual_mov_b32 v147, v235
	v_dual_mov_b32 v148, v236 :: v_dual_mov_b32 v149, v237
	v_dual_mov_b32 v150, v238 :: v_dual_mov_b32 v151, v239
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[232:239], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[236:239], v65 offset:8448
	ds_load_b128 v[232:235], v64 offset:8448
	v_xad_u32 v64, 0xc0, v98, 0
	v_xad_u32 v65, 0xd0, v98, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[144:151], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[148:151], v65 offset:256
	ds_load_b128 v[144:147], v64 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[136:143], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	ds_load_b128 v[244:247], v65 offset:8448
	ds_load_b128 v[240:243], v64 offset:8448
	v_xad_u32 v64, 0xe0, v98, 0
	v_xad_u32 v65, 0xf0, v98, 0
	ds_load_b128 v[102:105], v65 offset:8448
	ds_load_b128 v[98:101], v64 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[136:143], v[208:215]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64
	ds_load_b128 v[86:89], v65
	ds_load_b128 v[140:143], v65 offset:256
	ds_load_b128 v[136:139], v64 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[82:89], v[120:127], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[82:85], v64 offset:8192
	ds_load_b128 v[86:89], v65 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[66:73], v[112:119], v[216:223]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[64:67], off, off offset:224
	scratch_load_b128 v[68:71], off, off offset:240
	v_wmma_f32_16x16x16_bf16 v[216:223], v[90:97], v[128:135], v[216:223]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[208:215], v[82:89], v[120:127], v[208:215]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v83, off, off offset:172
	scratch_load_b32 v82, off, off offset:168
	scratch_load_b32 v84, off, off offset:164
	scratch_load_b32 v73, off, off offset:160
	v_wmma_f32_16x16x16_bf16 v[208:215], v[74:81], v[112:119], v[208:215]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:180
	scratch_load_b32 v78, off, off offset:176
	v_dual_mov_b32 v75, v106 :: v_dual_mov_b32 v74, v109
	v_wmma_f32_16x16x16_bf16 v[208:215], v[184:191], v[128:135], v[208:215]
	v_dual_mov_b32 v77, v108 :: v_dual_mov_b32 v106, v253
	v_dual_mov_b32 v76, v110 :: v_dual_mov_b32 v253, v111
	s_waitcnt vmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[176:183], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[192:199], v[64:71], v[208:215]
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v197, off, off offset:188
	scratch_load_b32 v194, off, off offset:404
	scratch_load_b128 v[64:67], off, off
	scratch_load_b128 v[68:71], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[168:175], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[200:207], v[64:71], v[208:215]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v206, off, off offset:184
	scratch_load_b128 v[64:67], off, off offset:64
	scratch_load_b128 v[68:71], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[160:167], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[224:231], v[64:71], v[208:215]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[64:67], off, off offset:32
	scratch_load_b128 v[68:71], off, off offset:48
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[152:159], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[232:239], v[64:71], v[208:215]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[64:67], off, off offset:96
	scratch_load_b128 v[68:71], off, off offset:112
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[144:151], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[240:247], v[64:71], v[208:215]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[64:67], off, off offset:128
	scratch_load_b128 v[68:71], off, off offset:144
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[136:143], v[64:71], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[208:215], v[98:105], v[64:71], v[208:215]
	v_dual_mov_b32 v105, v251 :: v_dual_mov_b32 v104, v250
	s_branch .LBB0_8
.LBB0_7:
	.loc	1 0 30 is_stmt 0                ; attention.py:0:30
	s_waitcnt vmcnt(19)
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	s_waitcnt vmcnt(18)
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
.LBB0_8:
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_ashr_i32 s4, s3, 31
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v80, s58, v216 :: v_dual_mul_f32 v81, s58, v217
	.loc	1 818 13                        ; attention.py:818:13
	s_lshr_b32 s4, s4, 27
	.loc	1 860 21                        ; attention.py:860:21
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v88, s58, v208 :: v_dual_mul_f32 v89, s58, v209
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s4, s3
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v90, s58, v210 :: v_dual_mul_f32 v91, s58, v211
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s3, 31
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v92, s58, v212 :: v_dual_mul_f32 v93, s58, v213
	.loc	1 818 13                        ; attention.py:818:13
	s_ashr_i32 s3, s3, 5
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v94, s58, v214 :: v_dual_mul_f32 v95, s58, v215
	.loc	1 818 13                        ; attention.py:818:13
	s_max_i32 s3, s3, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v86, s58, v222 :: v_dual_mul_f32 v87, s58, v223
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s3, s3, 5
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v85, s58, v221
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s57, s57, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s57, 32
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s3, v107
	v_or_b32_e32 v67, s3, v197
	v_or_b32_e32 v64, s3, v75
	v_or_b32_e32 v66, s3, v206
	v_or_b32_e32 v68, s3, v104
	v_or_b32_e32 v69, s3, v105
	v_or_b32_e32 v70, s3, v73
	v_or_b32_e32 v73, s3, v83
	v_or_b32_e32 v74, s3, v74
	v_or_b32_e32 v75, s3, v106
	v_or_b32_e32 v76, s3, v76
	v_or_b32_e32 v77, s3, v77
	v_or_b32_e32 v78, s3, v78
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v65
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v67, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v67, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s3, v84
	v_or_b32_e32 v72, s3, v82
	v_or_b32_e32 v79, s3, v79
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s35, s0, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v65, v255
	v_cmp_ge_i32_e64 s3, v64, v255
	v_cmp_ge_i32_e64 s4, v66, v255
	v_cmp_ge_i32_e64 s6, v68, v255
	v_cmp_ge_i32_e64 s7, v69, v255
	v_cmp_ge_i32_e64 s11, v73, v255
	v_cmp_ge_i32_e64 s12, v74, v255
	v_cmp_ge_i32_e64 s13, v75, v255
	v_cmp_ge_i32_e64 s14, v76, v255
	v_cmp_ge_i32_e64 s15, v77, v255
	v_cmp_ge_i32_e64 s16, v78, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v65, v254
	v_cmp_le_i32_e64 s19, v64, v254
	v_cmp_le_i32_e64 s20, v66, v254
	v_cmp_le_i32_e64 s22, v68, v254
	v_cmp_le_i32_e64 s23, v69, v254
	v_cmp_le_i32_e64 s27, v73, v254
	v_cmp_le_i32_e64 s28, v74, v254
	v_cmp_le_i32_e64 s29, v78, v254
	v_cmp_le_i32_e64 s31, v75, v254
	v_cmp_le_i32_e64 s33, v76, v254
	v_cmp_le_i32_e64 s34, v77, v254
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s5, s5, s21
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v82, s58, v218 :: v_dual_mul_f32 v83, s58, v219
	v_mul_f32_e32 v84, s58, v220
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v70, v255
	v_cmp_ge_i32_e64 s9, v71, v255
	v_cmp_ge_i32_e64 s10, v72, v255
	v_cmp_ge_i32_e64 s17, v79, v255
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v70, v254
	v_cmp_le_i32_e64 s25, v71, v254
	v_cmp_le_i32_e64 s26, v72, v254
	v_cmp_le_i32_e64 s30, v79, v254
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s16, s16, s29
	s_and_b32 s14, s14, s33
	s_and_b32 s15, s15, s34
	s_and_b32 s12, s12, s28
	s_and_b32 s13, s13, s31
	s_and_b32 s27, s11, s27
	s_and_b32 s6, s6, s22
	s_and_b32 s7, s7, s23
	s_and_b32 s20, s4, s20
	s_and_b32 s4, s5, s35
	s_and_b32 s5, vcc_lo, s18
	s_and_b32 s3, s3, s19
	s_and_b32 s16, s16, s35
	s_and_b32 s14, s14, s35
	s_and_b32 s15, s15, s35
	s_and_b32 s12, s12, s35
	s_and_b32 s11, s13, s35
	s_and_b32 s13, s27, s35
	s_and_b32 s6, s6, s35
	s_and_b32 s7, s7, s35
	s_and_b32 vcc_lo, s5, s35
	s_and_b32 s3, s3, s35
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v94, s16
	v_cndmask_b32_e64 v66, 0xff800000, v92, s14
	v_cndmask_b32_e64 v67, 0xff800000, v93, s15
	v_cndmask_b32_e64 v68, 0xff800000, v90, s12
	v_cndmask_b32_e64 v69, 0xff800000, v91, s11
	v_cndmask_b32_e64 v70, 0xff800000, v89, s13
	v_cndmask_b32_e64 v75, 0xff800000, v84, s6
	v_cndmask_b32_e64 v76, 0xff800000, v85, s7
	v_cndmask_b32_e64 v77, 0xff800000, v83, s4
	v_cndmask_b32_e32 v78, 0xff800000, v80, vcc_lo
	v_cndmask_b32_e64 v79, 0xff800000, v81, s3
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s17, s30
	s_and_b32 s10, s10, s26
	s_and_b32 s8, s8, s24
	s_and_b32 s9, s9, s25
	s_and_b32 s17, s17, s35
	s_and_b32 s10, s10, s35
	s_and_b32 s8, s8, s35
	s_and_b32 s5, s9, s35
	s_and_b32 s9, s20, s35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v95, s17
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v66, v67, v64
.Ltmp35:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v88, s10
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v70, v68, v69
.Ltmp37:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v86, s8
	v_cndmask_b32_e64 v80, 0xff800000, v87, s5
	v_cndmask_b32_e64 v81, 0xff800000, v82, s9
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v82, v77, v75, v76
	v_max_f32_e32 v83, v78, v79
	v_max3_f32 v71, v73, v71, v65
	v_max3_f32 v73, v74, v80, v72
	s_mov_b32 s18, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v82, v83, v81, v82
	v_max3_f32 v71, v82, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v73, v71, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v71, v249, v71, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v249, v71
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v71
	v_sub_f32_e32 v67, v67, v71
	v_sub_f32_e32 v64, v64, v71
	v_sub_f32_e32 v68, v68, v71
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v71
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v64, v64
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v66, s14
	v_cndmask_b32_e64 v84, 0, v67, s15
	v_cndmask_b32_e64 v64, 0, v64, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s17
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v71
.Ltmp41:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v85, v84
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v68, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v82, 0, v69, s11
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v64, v65
.Ltmp44:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v71
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v77, v77, v71 :: v_dual_add_f32 v86, v83, v82
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v77, v77
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s6
	v_cndmask_b32_e64 v72, 0, v72, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v80, 0, v80, s5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v81, v81, v71 :: v_dual_add_f32 v68, v75, v76
	v_sub_f32_e32 v70, v70, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v78
	v_exp_f32_e32 v78, v79
	v_exp_f32_e32 v79, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v74, s8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v72, v70 :: v_dual_cndmask_b32 v71, 0, v71
	v_add_f32_e32 v69, v81, v80
.Ltmp46:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v249
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s3
	v_cndmask_b32_e64 v79, 0, v79, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v71, v78
	v_add_f32_e32 v67, v79, v77
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_add_f32 v67, v68, v69
	v_dual_add_f32 v68, v74, v86 :: v_dual_add_f32 v69, v87, v88
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.h, 0
	v_mov_b16_e32 v86.l, v78.h
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v66, v67 :: v_dual_cndmask_b32 v66, 0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v68, v68, v69
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.h, v86.h
	v_mov_b16_e32 v73.l, v79.h
	v_mov_b16_e32 v73.h, v86.h
	v_cmp_o_f32_e32 vcc_lo, v78, v78
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_and_b32 v68, 1, v86
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v71.h
	v_mov_b16_e32 v86.l, v77.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v78, v68, 0x7fff
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v78, 1, v86
	v_mov_b16_e32 v86.l, v76.h
	v_add3_u32 v73, v79, v73, 0x7fff
	v_mov_b16_e32 v74.l, v75.h
	v_add3_u32 v87, v71, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v74.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_add3_u32 v71, v77, v78, 0x7fff
	v_mov_b16_e32 v74.h, v86.h
	v_and_b32_e32 v77, 1, v86
	v_cndmask_b16 v71.l, 0x7fff, v73.h, s4
	v_cndmask_b16 v69.l, 0x7fff, v87.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_and_b32_e32 v73, 1, v74
	v_add3_u32 v74, v76, v77, 0x7fff
	v_mov_b16_e32 v86.l, v80.h
	v_mov_b16_e32 v76.l, v81.h
	v_mov_b16_e32 v76.h, v86.h
	v_add3_u32 v77, v75, v73, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v74.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_and_b32_e32 v74, 1, v86
	v_and_b32_e32 v75, 1, v76
	v_mov_b16_e32 v76.l, v72.h
	v_mov_b16_e32 v86.l, v70.h
	v_cndmask_b16 v73.l, 0x7fff, v77.h, vcc_lo
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s3
	v_add3_u32 v74, v80, v74, 0x7fff
	v_and_b32_e32 v76, 1, v76
	v_and_b32_e32 v77, 1, v86
	v_mov_b16_e32 v86.l, v82.h
	v_cmp_o_f32_e64 s3, v80, v80
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_add3_u32 v76, v72, v76, 0x7fff
	v_cmp_o_f32_e64 s4, v72, v72
	v_mov_b16_e32 v72.l, v83.h
	v_mov_b16_e32 v72.h, v86.h
	v_and_b32_e32 v78, 1, v86
	v_mov_b32_e32 v80, 0x7632
	v_add3_u32 v75, v81, v75, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s3
	v_add3_u32 v77, v70, v77, 0x7fff
	v_cmp_o_f32_e64 s3, v70, v70
	v_and_b32_e32 v72, 1, v72
	v_cndmask_b16 v74.l, 0x7fff, v75.h, vcc_lo
	v_add3_u32 v75, v82, v78, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_mov_b16_e32 v86.l, v84.h
	v_cndmask_b16 v70.h, 0x7fff, v77.h, s3
	v_add3_u32 v77, v83, v72, 0x7fff
	v_mov_b16_e32 v78.l, v64.h
	v_cndmask_b16 v72.h, 0x7fff, v75.h, vcc_lo
	v_and_b32_e32 v75, 1, v86
	v_mov_b16_e32 v78.h, v86.h
	v_mov_b16_e32 v86.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cmp_o_f32_e64 s3, v84, v84
	v_add3_u32 v75, v84, v75, 0x7fff
	v_and_b32_e32 v78, 1, v78
	v_and_b32_e32 v79, 1, v86
	v_cndmask_b16 v72.l, 0x7fff, v77.h, vcc_lo
	v_cndmask_b16 v70.l, 0x7fff, v76.h, s4
	v_cndmask_b16 v77.h, 0x7fff, v75.h, s3
	v_add3_u32 v75, v64, v78, 0x7fff
	v_add3_u32 v78, v65, v79, 0x7fff
	v_mov_b32_e32 v79, 0x5410
	v_mov_b16_e32 v76.l, v85.h
	v_mov_b16_e32 v76.h, v86.h
	v_cmp_o_f32_e64 s3, v65, v65
	v_cmp_o_f32_e64 s4, v64, v64
	v_cndmask_b32_e64 v64, 0x1054, v79, s1
	v_cndmask_b32_e64 v65, 0x3276, v80, s1
	v_and_b32_e32 v76, 1, v76
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_cndmask_b16 v80.h, 0x7fff, v78.h, s3
	v_lshl_or_b32 v64, v64, 8, v64
	v_lshl_or_b32 v65, v65, 8, v65
	v_add3_u32 v76, v85, v76, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v75.h, s4
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 0x540054, v64
	v_and_b32_e32 v65, 0x760076, v65
	v_cndmask_b16 v77.l, 0x7fff, v76.h, vcc_lo
	v_permlanex16_b32 v78, v69, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v71, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v64, v64, 4, v64
	v_lshl_or_b32 v85, v65, 4, v65
	v_permlanex16_b32 v81, v73, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v74, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v75, v70, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v72, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v83, v77, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v80, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v65, 0x5040504, v64
	v_and_b32_e32 v64, 0x7060706, v85
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v85, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v86, v84, v80, v64
	v_perm_b32 v88, v78, v69, v64
	v_perm_b32 v94, v82, v74, v64
	v_perm_b32 v93, v82, v74, v65
	v_perm_b32 v92, v81, v73, v64
	v_perm_b32 v91, v81, v73, v65
	v_perm_b32 v90, v79, v71, v64
	v_perm_b32 v89, v79, v71, v65
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v66
	v_mul_f32_e32 v5, v5, v66
	v_mul_f32_e32 v4, v4, v66
	v_mul_f32_e32 v3, v3, v66
	v_mul_f32_e32 v2, v2, v66
	v_mul_f32_e32 v1, v1, v66
	v_mul_f32_e32 v0, v0, v66
	v_mul_f32_e32 v15, v15, v66
	v_mul_f32_e32 v14, v14, v66
	v_mul_f32_e32 v13, v13, v66
	v_mul_f32_e32 v12, v12, v66
	v_mul_f32_e32 v11, v11, v66
	v_mul_f32_e32 v10, v10, v66
	v_mul_f32_e32 v9, v9, v66
	v_mul_f32_e32 v8, v8, v66
	v_mul_f32_e32 v23, v23, v66
	v_mul_f32_e32 v22, v22, v66
	v_mul_f32_e32 v21, v21, v66
	v_mul_f32_e32 v20, v20, v66
	v_mul_f32_e32 v19, v19, v66
	v_mul_f32_e32 v18, v18, v66
	v_mul_f32_e32 v17, v17, v66
	v_mul_f32_e32 v16, v16, v66
	v_mul_f32_e32 v31, v31, v66
	v_mul_f32_e32 v30, v30, v66
	v_mul_f32_e32 v29, v29, v66
	v_mul_f32_e32 v28, v28, v66
	v_mul_f32_e32 v27, v27, v66
	v_mul_f32_e32 v26, v26, v66
	v_mul_f32_e32 v25, v25, v66
	v_mul_f32_e32 v39, v39, v66
	v_mul_f32_e32 v38, v38, v66
	v_mul_f32_e32 v37, v37, v66
	v_mul_f32_e32 v36, v36, v66
	v_mul_f32_e32 v35, v35, v66
	v_mul_f32_e32 v34, v34, v66
	v_mul_f32_e32 v33, v33, v66
	v_mul_f32_e32 v47, v47, v66
	v_mul_f32_e32 v46, v46, v66
	v_mul_f32_e32 v45, v45, v66
	v_mul_f32_e32 v44, v44, v66
	v_mul_f32_e32 v43, v43, v66
	v_mul_f32_e32 v42, v42, v66
	v_mul_f32_e32 v41, v41, v66
	v_mul_f32_e32 v40, v40, v66
	v_mul_f32_e32 v55, v55, v66
	v_mul_f32_e32 v54, v54, v66
	v_mul_f32_e32 v53, v53, v66
	v_mul_f32_e32 v52, v52, v66
	v_mul_f32_e32 v51, v51, v66
	v_mul_f32_e32 v50, v50, v66
	v_mul_f32_e32 v49, v49, v66
	v_mul_f32_e32 v48, v48, v66
	v_mul_f32_e32 v63, v63, v66
	v_mul_f32_e32 v62, v62, v66
	v_mul_f32_e32 v61, v61, v66
	v_mul_f32_e32 v60, v60, v66
	v_mul_f32_e32 v59, v59, v66
	v_mul_f32_e32 v58, v58, v66
	v_mul_f32_e32 v57, v57, v66
	v_mul_f32_e32 v56, v56, v66
	v_mul_f32_e32 v32, v32, v66
	v_mul_f32_e32 v24, v24, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v82, v76, v72, v64
	v_perm_b32 v81, v76, v72, v65
	v_perm_b32 v79, v75, v70, v65
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_and_or_b32 v87, 0x1c0, v85, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v85, v84, v80, v65
	v_perm_b32 v84, v83, v77, v64
	v_perm_b32 v83, v83, v77, v65
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v77, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v80, v75, v70, v64
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_xor_b32_e32 v77, v87, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v87, v78, v69, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v66 :: v_dual_add_nc_u32 v71, 0, v77
	.loc	1 890 30                        ; attention.py:890:30
	v_xad_u32 v69, 0x430, v77, 0
	v_xad_u32 v74, 0x420, v77, 0
	ds_load_b128 v[115:118], v69 offset:22528
	ds_load_b128 v[123:126], v69 offset:20480
	ds_load_b128 v[131:134], v69 offset:18432
	ds_load_b128 v[139:142], v69 offset:16384
	v_xad_u32 v69, v77, 48, 0
	v_xad_u32 v78, v77, 16, 0
	v_xad_u32 v73, 0x410, v77, 0
	ds_load_b128 v[111:114], v74 offset:22528
	ds_load_b128 v[119:122], v74 offset:20480
	ds_load_b128 v[127:130], v74 offset:18432
	ds_load_b128 v[135:138], v74 offset:16384
	ds_load_b128 v[147:150], v69 offset:22528
	ds_load_b128 v[155:158], v69 offset:20480
	v_xad_u32 v74, v77, 32, 0
	ds_load_b128 v[163:166], v78 offset:18432
	ds_load_b128 v[171:174], v78 offset:16384
	ds_load_b128 v[103:106], v71 offset:17408
	ds_load_b128 v[167:170], v71 offset:16384
	ds_load_b128 v[95:98], v71 offset:19456
	ds_load_b128 v[159:162], v71 offset:18432
	ds_load_b128 v[179:182], v69 offset:18432
	ds_load_b128 v[187:190], v69 offset:16384
	ds_load_b128 v[175:178], v74 offset:18432
	ds_load_b128 v[183:186], v74 offset:16384
	ds_load_b128 v[195:198], v78 offset:22528
	ds_load_b128 v[203:206], v78 offset:20480
	ds_load_b128 v[207:210], v71 offset:21504
	ds_load_b128 v[199:202], v71 offset:20480
	ds_load_b128 v[215:218], v71 offset:23552
	ds_load_b128 v[191:194], v71 offset:22528
	ds_load_b128 v[143:146], v74 offset:22528
	ds_load_b128 v[151:154], v74 offset:20480
	ds_load_b128 v[219:222], v73 offset:22528
	ds_load_b128 v[211:214], v73 offset:20480
	ds_load_b128 v[99:102], v73 offset:18432
	ds_load_b128 v[107:110], v73 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[167:174], v[87:94], v[56:63]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[40:47], v[159:166], v[87:94], v[40:47]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[183:190], v[79:86], v[56:63]
	v_wmma_f32_16x16x16_bf16 v[40:47], v[175:182], v[79:86], v[40:47]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[199:206], v[87:94], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[32:39], v[127:134], v[87:94], v[32:39]
	v_wmma_f32_16x16x16_bf16 v[48:55], v[135:142], v[87:94], v[48:55]
	v_wmma_f32_16x16x16_bf16 v[16:23], v[119:126], v[87:94], v[16:23]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[191:198], v[87:94], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[111:118], v[87:94], v[0:7]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[32:39], v[95:102], v[79:86], v[32:39]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[48:55], v[103:110], v[79:86], v[48:55]
	v_wmma_f32_16x16x16_bf16 v[24:31], v[151:158], v[79:86], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[16:23], v[207:214], v[79:86], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[143:150], v[79:86], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[215:222], v[79:86], v[0:7]
.LBB0_10:
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp58:
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v67, v252, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_cndmask_b32_e64 v66, v252, v67, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v67, null, v66, v66, v56
	v_div_scale_f32 v69, null, v66, v66, v57
	v_div_scale_f32 v71, null, v66, v66, v58
	v_rcp_f32_e32 v75, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v69
	v_div_scale_f32 v73, null, v66, v66, v59
	v_rcp_f32_e32 v78, v71
	v_div_scale_f32 v74, null, v66, v66, v60
	v_div_scale_f32 v68, vcc_lo, v56, v66, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v73
	v_fma_f32 v83, -v67, v75, 1.0
	v_rcp_f32_e32 v81, v74
	v_fma_f32 v84, -v69, v76, 1.0
	v_div_scale_f32 v70, s2, v57, v66, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v71, v78, 1.0
	v_dual_fmac_f32 v75, v83, v75 :: v_dual_fmac_f32 v76, v84, v76
	v_div_scale_f32 v72, s3, v58, v66, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v86, v78
	v_dual_mul_f32 v86, v68, v75 :: v_dual_mul_f32 v87, v70, v76
	v_div_scale_f32 v77, null, v66, v66, v61
	v_fma_f32 v83, -v73, v80, 1.0
	v_fma_f32 v84, -v74, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v67, v86, v68
	v_div_scale_f32 v79, s4, v59, v66, v59
	v_rcp_f32_e32 v82, v77
	v_dual_fmac_f32 v80, v83, v80 :: v_dual_mul_f32 v83, v72, v78
	v_dual_fmac_f32 v81, v84, v81 :: v_dual_fmac_f32 v86, v89, v75
	v_div_scale_f32 v85, s5, v60, v66, v60
	v_fma_f32 v90, -v69, v87, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v79, v80
	v_fma_f32 v91, -v71, v83, v72
	v_fma_f32 v67, -v67, v86, v68
	v_fma_f32 v88, -v77, v82, 1.0
	v_fmac_f32_e32 v87, v90, v76
	v_fma_f32 v90, -v73, v84, v79
	v_mul_f32_e32 v89, v85, v81
	v_fmac_f32_e32 v83, v91, v78
	v_div_fmas_f32 v67, v67, v75, v86
	v_fmac_f32_e32 v82, v88, v82
	v_fma_f32 v68, -v69, v87, v70
	v_fmac_f32_e32 v84, v90, v80
	v_fma_f32 v70, -v71, v83, v72
	v_div_fixup_f32 v56, v67, v66, v56
	v_div_scale_f32 v67, null, v66, v66, v62
	v_fma_f32 v71, -v74, v89, v85
	v_div_scale_f32 v75, null, v66, v66, v63
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v72, v67
	v_div_fmas_f32 v68, v68, v76, v87
	v_fmac_f32_e32 v89, v71, v81
	v_rcp_f32_e32 v71, v75
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v69, s6, v61, v66, v61
	v_div_fixup_f32 v57, v68, v66, v57
	v_div_fmas_f32 v68, v70, v78, v83
	v_fma_f32 v70, -v73, v84, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v67, v72, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v79, null, v66, v66, v49
	v_div_fixup_f32 v58, v68, v66, v58
	v_fma_f32 v68, -v74, v89, v85
	v_fma_f32 v74, -v75, v71, 1.0
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s4, v63, v66, v63
	v_div_fmas_f32 v70, v70, v80, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v74, v71
	v_mul_f32_e32 v73, v69, v82
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v83, null, v66, v66, v51
	v_mul_f32_e32 v80, v78, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v77, v73, v69
	v_div_fixup_f32 v59, v70, v66, v59
	v_div_scale_f32 v70, s3, v62, v66, v62
	v_div_fmas_f32 v68, v68, v81, v89
	v_fmac_f32_e32 v73, v76, v82
	v_div_scale_f32 v76, null, v66, v66, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v60, v68, v66, v60
	v_fma_f32 v69, -v77, v73, v69
	v_rcp_f32_e32 v74, v76
	v_fma_f32 v68, -v75, v80, v78
	v_mul_f32_e32 v77, v70, v72
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v66
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v82, v73
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v80, v68, v71
	v_fma_f32 v73, -v67, v77, v70
	v_rcp_f32_e32 v82, v79
	v_div_fixup_f32 v61, v69, v66, v61
	v_fma_f32 v81, -v76, v74, 1.0
	v_div_scale_f32 v69, s5, v48, v66, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v56, 0, v56, s2
	v_cndmask_b32_e64 v57, 0, v57, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v81, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s2
	v_cndmask_b32_e64 v59, 0, v59, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v81, -v79, v82, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v56, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v68, v69, v74
	v_fmac_f32_e32 v77, v73, v72
	v_div_scale_f32 v73, null, v66, v66, v50
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v60, 0, v60, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v67, v77, v70
	v_rcp_f32_e32 v70, v73
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v61, 0, v61, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s11, v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v72, v77
	v_fma_f32 v72, -v75, v80, v78
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v75, -v76, v68, v69
	v_div_fixup_f32 v62, v67, v66, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v72, v71, v80
	v_rcp_f32_e32 v72, v83
	v_fmac_f32_e32 v68, v75, v74
	v_fma_f32 v78, -v73, v70, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v63, v71, v66, v63
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v76, v68, v69
	v_div_scale_f32 v76, s4, v51, v66, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v71, -v83, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v74, v68
	v_fmac_f32_e32 v72, v71, v72
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s6, v49, v66, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v48, v67, v66, v48
	v_mul_f32_e32 v77, v81, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v48, 0, v48, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v75, -v79, v77, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v75, v82
	v_div_scale_f32 v75, null, v66, v66, v52
	v_fma_f32 v68, -v79, v77, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v75
	v_div_scale_f32 v79, null, v66, v66, v53
	v_div_fmas_f32 v68, v68, v82, v77
	v_mul_f32_e32 v77, v76, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v68, v66, v49
	v_fma_f32 v80, -v75, v71, 1.0
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s3, v50, v66, v50
	v_fma_f32 v68, -v83, v77, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v80, v71
	v_div_scale_f32 v80, null, v66, v66, v54
	v_mul_f32_e32 v69, v78, v70
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v73, v69, v78
	v_fmac_f32_e32 v69, v74, v70
	v_rcp_f32_e32 v74, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v73, v69, v78
	v_div_scale_f32 v73, s5, v52, v66, v52
	v_div_fmas_f32 v67, v67, v70, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v79, v74, 1.0
	v_fmac_f32_e32 v77, v68, v72
	v_rcp_f32_e32 v69, v80
	v_mul_f32_e32 v68, v73, v71
	v_div_fixup_f32 v50, v67, v66, v50
	v_fmac_f32_e32 v74, v78, v74
	v_div_scale_f32 v78, null, v66, v66, v55
	v_fma_f32 v67, -v83, v77, v76
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v70, s3, v53, v66, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v76, -v75, v68, v73
	v_fma_f32 v83, -v80, v69, 1.0
	v_div_fmas_f32 v67, v67, v72, v77
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v50, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v76, v71
	v_div_scale_f32 v76, s4, v54, v66, v54
	v_div_fixup_f32 v51, v67, v66, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v78, v82, 1.0
	v_fmac_f32_e32 v69, v83, v69
	v_fma_f32 v67, -v75, v68, v73
	v_div_scale_f32 v73, s6, v55, v66, v55
	v_fmac_f32_e32 v82, v77, v82
	v_mul_f32_e32 v81, v70, v74
	v_div_scale_f32 v75, null, v66, v66, v40
	v_div_fmas_f32 v67, v67, v71, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v73, v82
	v_fma_f32 v72, -v79, v81, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v71, v75
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v52, v67, v66, v52
	v_div_scale_f32 v83, null, v66, v66, v45
	v_fmac_f32_e32 v81, v72, v74
	v_mul_f32_e32 v72, v76, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v51, 0, v51, s2
	v_cndmask_b32_e64 v52, 0, v52, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v79, v81, v70
	v_fma_f32 v70, -v80, v72, v76
	v_div_scale_f32 v79, null, v66, v66, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v70, v69
	v_div_fmas_f32 v68, v68, v74, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v70, v79
	v_fma_f32 v74, -v78, v77, v73
	v_fma_f32 v81, -v75, v71, 1.0
	v_fma_f32 v67, -v80, v72, v76
	v_div_scale_f32 v76, null, v66, v66, v42
	v_fmac_f32_e32 v77, v74, v82
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v53, v68, v66, v53
	v_div_scale_f32 v68, s3, v40, v66, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v79, v70, 1.0
	v_fmac_f32_e32 v71, v81, v71
	v_div_fmas_f32 v67, v67, v69, v72
	v_fma_f32 v69, -v78, v77, v73
	v_rcp_f32_e32 v73, v76
	v_fmac_f32_e32 v70, v74, v70
	v_mul_f32_e32 v72, v68, v71
	v_div_scale_f32 v74, s4, v41, v66, v41
	v_div_scale_f32 v78, null, v66, v66, v43
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v54, v67, v66, v54
	v_div_fmas_f32 v69, v69, v82, v77
	v_fma_f32 v77, -v75, v72, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v76, v73, 1.0
	v_mul_f32_e32 v80, v74, v70
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v55, v69, v66, v55
	v_fmac_f32_e32 v72, v77, v71
	v_fmac_f32_e32 v73, v81, v73
	v_fma_f32 v67, -v79, v80, v74
	v_div_scale_f32 v69, s5, v42, v66, v42
	v_div_scale_f32 v77, null, v66, v66, v44
	v_fma_f32 v68, -v75, v72, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v78, v82, 1.0
	v_dual_fmac_f32 v80, v67, v70 :: v_dual_mul_f32 v67, v69, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v75, v77
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v53, 0, v53, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v71, v72
	v_fma_f32 v71, -v79, v80, v74
	v_fma_f32 v72, -v76, v67, v69
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s6, v43, v66, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v75, 1.0
	v_div_fmas_f32 v70, v71, v70, v80
	v_dual_fmac_f32 v67, v72, v73 :: v_dual_mul_f32 v74, v81, v82
	v_rcp_f32_e32 v71, v83
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, s3, v44, v66, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v78, v74, v81
	v_div_fixup_f32 v41, v70, v66, v41
	v_div_fixup_f32 v40, v68, v66, v40
	v_fma_f32 v68, -v76, v67, v69
	v_dual_mul_f32 v69, v79, v75 :: v_dual_fmac_f32 v74, v72, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v83, v71, 1.0
	v_div_scale_f32 v72, null, v66, v66, v46
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v76, s4, v45, v66, v45
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v72
	v_div_fmas_f32 v67, v68, v73, v67
	v_fma_f32 v68, -v78, v74, v81
	v_fma_f32 v73, -v77, v69, v79
	v_div_scale_f32 v78, null, v66, v66, v47
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v42, v67, v66, v42
	v_div_fmas_f32 v68, v68, v82, v74
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v72, v70, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v54, 0, v54, s2
	v_cndmask_b32_e64 v55, 0, v55, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v43, v68, v66, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v40, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v70, v80, v70 :: v_dual_fmac_f32 v69, v73, v75
	v_rcp_f32_e32 v73, v78
	v_mul_f32_e32 v74, v76, v71
	v_div_scale_f32 v80, null, v66, v66, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v77, v69, v79
	v_div_scale_f32 v77, s5, v46, v66, v46
	v_fma_f32 v68, -v83, v74, v76
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v41, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v75, v69
	v_fma_f32 v79, -v78, v73, 1.0
	v_rcp_f32_e32 v69, v80
	v_fmac_f32_e32 v74, v68, v71
	v_mul_f32_e32 v68, v77, v70
	v_div_scale_f32 v75, s3, v47, v66, v47
	v_fmac_f32_e32 v73, v79, v73
	v_div_scale_f32 v79, null, v66, v66, v33
	v_div_fixup_f32 v44, v67, v66, v44
	v_fma_f32 v67, -v83, v74, v76
	v_fma_f32 v76, -v72, v68, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v79
	v_fma_f32 v83, -v80, v69, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v42, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v76, v70
	v_div_fmas_f32 v67, v67, v71, v74
	v_fmac_f32_e32 v69, v83, v69
	v_div_scale_f32 v74, s4, v32, v66, v32
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v79, v82, 1.0
	v_mul_f32_e32 v81, v75, v73
	v_div_fixup_f32 v45, v67, v66, v45
	v_fma_f32 v67, -v72, v68, v77
	v_div_scale_f32 v72, s6, v33, v66, v33
	v_fmac_f32_e32 v82, v76, v82
	v_fma_f32 v71, -v78, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v70, v68
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, null, v66, v66, v34
	v_fmac_f32_e32 v81, v71, v73
	v_mul_f32_e32 v71, v74, v69
	v_mul_f32_e32 v77, v72, v82
	v_div_fixup_f32 v46, v67, v66, v46
	v_div_scale_f32 v83, null, v66, v66, v39
	v_fma_f32 v68, -v78, v81, v75
	v_fma_f32 v70, -v80, v71, v74
	v_div_scale_f32 v78, null, v66, v66, v35
	v_rcp_f32_e32 v75, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v73, v81
	v_fmac_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v70, v78
	v_fma_f32 v73, -v79, v77, v72
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v47, v68, v66, v47
	v_fma_f32 v67, -v80, v71, v74
	v_div_scale_f32 v74, null, v66, v66, v36
	v_fmac_f32_e32 v77, v73, v82
	v_fma_f32 v81, -v76, v75, 1.0
	v_div_scale_f32 v68, s3, v34, v66, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v78, v70, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v43, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v81, v75
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v44, s2
	v_cndmask_b32_e64 v45, 0, v45, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v73, v70
	v_div_fmas_f32 v67, v67, v69, v71
	v_fma_f32 v69, -v79, v77, v72
	v_rcp_f32_e32 v72, v74
	v_div_scale_f32 v79, null, v66, v66, v37
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v73, s4, v35, v66, v35
	v_div_fmas_f32 v69, v69, v82, v77
	v_rcp_f32_e32 v82, v79
	v_div_fixup_f32 v32, v67, v66, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v80, v73, v70
	v_fma_f32 v81, -v74, v72, 1.0
	v_div_fixup_f32 v33, v69, v66, v33
	v_div_scale_f32 v69, s5, v36, v66, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v78, v80, v73
	v_fmac_f32_e32 v72, v81, v72
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v79, v82, 1.0
	v_dual_mul_f32 v71, v68, v75 :: v_dual_fmac_f32 v80, v67, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v67, v69, v72
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v46, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v76, v71, v68
	v_div_scale_f32 v81, s6, v37, v66, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s2
	v_cndmask_b32_e64 v33, 0, v33, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v77, v75
	v_div_scale_f32 v77, null, v66, v66, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v76, v71, v68
	v_rcp_f32_e32 v76, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v75, v71
	v_fma_f32 v71, -v78, v80, v73
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v73, -v74, v67, v69
	v_mul_f32_e32 v75, v81, v82
	v_div_fixup_f32 v34, v68, v66, v34
	v_div_fmas_f32 v70, v71, v70, v80
	v_rcp_f32_e32 v71, v83
	v_fmac_f32_e32 v67, v73, v72
	v_fma_f32 v73, -v79, v75, v81
	v_fma_f32 v78, -v77, v76, 1.0
	v_div_fixup_f32 v35, v70, v66, v35
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v68, -v74, v67, v69
	v_fmac_f32_e32 v75, v73, v82
	v_div_scale_f32 v73, null, v66, v66, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v83, v71, 1.0
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s3, v38, v66, v38
	v_div_fmas_f32 v67, v68, v72, v67
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v73
	v_fma_f32 v68, -v79, v75, v81
	v_div_scale_f32 v79, null, v66, v66, v25
	v_div_scale_f32 v74, s4, v39, v66, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v36, v67, v66, v36
	v_div_fmas_f32 v68, v68, v82, v75
	v_mul_f32_e32 v75, v74, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v73, v70, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v34, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v37, v68, v66, v37
	v_fma_f32 v68, -v83, v75, v74
	v_dual_fmac_f32 v70, v80, v70 :: v_dual_mul_f32 v69, v78, v76
	v_div_scale_f32 v80, null, v66, v66, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v68, v71
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v35, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v77, v69, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v36, s2
	v_cndmask_b32_e64 v37, 0, v37, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v72, v76
	v_rcp_f32_e32 v72, v79
	v_fma_f32 v67, -v77, v69, v78
	v_div_scale_f32 v77, s5, v24, v66, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v67, v67, v76, v69
	v_fma_f32 v78, -v79, v72, 1.0
	v_rcp_f32_e32 v69, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v68, v77, v70
	v_div_scale_f32 v76, s3, v25, v66, v25
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, null, v66, v66, v27
	v_div_fixup_f32 v38, v67, v66, v38
	v_fma_f32 v67, -v83, v75, v74
	v_fma_f32 v74, -v73, v68, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v78
	v_mul_f32_e32 v81, v76, v72
	v_fma_f32 v83, -v80, v69, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v68, v74, v70
	v_div_fmas_f32 v67, v67, v71, v75
	v_fma_f32 v71, -v79, v81, v76
	v_fmac_f32_e32 v69, v83, v69
	v_div_scale_f32 v74, s4, v26, v66, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v78, v82, 1.0
	v_div_fixup_f32 v39, v67, v66, v39
	v_fma_f32 v67, -v73, v68, v77
	v_fmac_f32_e32 v81, v71, v72
	v_dual_mul_f32 v71, v74, v69 :: v_dual_fmac_f32 v82, v75, v82
	v_div_scale_f32 v75, null, v66, v66, v28
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v73, s6, v27, v66, v27
	v_div_fmas_f32 v67, v67, v70, v68
	v_fma_f32 v68, -v79, v81, v76
	v_fma_f32 v70, -v80, v71, v74
	v_rcp_f32_e32 v76, v75
	v_div_scale_f32 v79, null, v66, v66, v29
	v_mul_f32_e32 v77, v73, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v70, v69
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v79
	v_div_fmas_f32 v68, v68, v72, v81
	v_fma_f32 v72, -v78, v77, v73
	v_div_fixup_f32 v24, v67, v66, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v75, v76, 1.0
	v_fma_f32 v67, -v80, v71, v74
	v_div_fixup_f32 v25, v68, v66, v25
	v_fmac_f32_e32 v77, v72, v82
	v_div_scale_f32 v68, s3, v28, v66, v28
	v_fmac_f32_e32 v76, v81, v76
	v_fma_f32 v72, -v79, v70, 1.0
	v_div_scale_f32 v74, null, v66, v66, v30
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v83, null, v66, v66, v17
	v_div_fmas_f32 v67, v67, v69, v71
	v_fma_f32 v69, -v78, v77, v73
	v_mul_f32_e32 v71, v68, v76
	v_fmac_f32_e32 v70, v72, v70
	v_rcp_f32_e32 v72, v74
	v_div_scale_f32 v73, s4, v29, v66, v29
	v_div_scale_f32 v78, null, v66, v66, v31
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v80, v73, v70
	v_div_fmas_f32 v69, v69, v82, v77
	v_fma_f32 v77, -v75, v71, v68
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v74, v72, 1.0
	v_div_fixup_f32 v26, v67, v66, v26
	v_fma_f32 v67, -v79, v80, v73
	v_fmac_f32_e32 v71, v77, v76
	v_div_scale_f32 v77, null, v66, v66, v16
	v_div_fixup_f32 v27, v69, v66, v27
	v_fmac_f32_e32 v72, v81, v72
	v_div_scale_f32 v69, s5, v30, v66, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v78, v82, 1.0
	v_fma_f32 v68, -v75, v71, v68
	v_fmac_f32_e32 v80, v67, v70
	v_rcp_f32_e32 v75, v77
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v67, v69, v72
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s6, v31, v66, v31
	v_div_fmas_f32 v68, v68, v76, v71
	v_fma_f32 v71, -v79, v80, v73
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v73, -v74, v67, v69
	v_mul_f32_e32 v76, v81, v82
	v_fma_f32 v79, -v77, v75, 1.0
	v_div_fmas_f32 v70, v71, v70, v80
	v_rcp_f32_e32 v71, v83
	v_fmac_f32_e32 v67, v73, v72
	v_fma_f32 v73, -v78, v76, v81
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, s3, v16, v66, v16
	v_div_fixup_f32 v28, v68, v66, v28
	v_div_fixup_f32 v29, v70, v66, v29
	v_fma_f32 v68, -v74, v67, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v76, v73, v82 :: v_dual_mul_f32 v69, v79, v75
	v_fma_f32 v70, -v83, v71, 1.0
	v_div_scale_f32 v73, null, v66, v66, v18
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v74, s4, v17, v66, v17
	v_div_fmas_f32 v67, v68, v72, v67
	v_fma_f32 v68, -v78, v76, v81
	v_fma_f32 v72, -v77, v69, v79
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v73
	v_div_scale_f32 v78, null, v66, v66, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v72, v75
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v30, v67, v66, v30
	v_rcp_f32_e32 v72, v78
	v_div_fmas_f32 v68, v68, v82, v76
	v_mul_f32_e32 v76, v74, v71
	v_fma_f32 v67, -v77, v69, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v73, v70, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v68, v66, v31
	v_fma_f32 v68, -v83, v76, v74
	v_div_scale_f32 v77, s5, v18, v66, v18
	v_fmac_f32_e32 v70, v80, v70
	v_fma_f32 v79, -v78, v72, 1.0
	v_div_scale_f32 v80, null, v66, v66, v20
	v_div_fmas_f32 v67, v67, v75, v69
	v_fmac_f32_e32 v76, v68, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v79, v72
	v_rcp_f32_e32 v69, v80
	v_div_scale_f32 v79, null, v66, v66, v21
	v_mul_f32_e32 v68, v77, v70
	v_div_scale_f32 v75, s3, v19, v66, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v79
	v_div_fixup_f32 v16, v67, v66, v16
	v_fma_f32 v67, -v83, v76, v74
	v_fma_f32 v74, -v73, v68, v77
	v_mul_f32_e32 v81, v75, v72
	v_fma_f32 v83, -v80, v69, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v38, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v71, v76
	v_fmac_f32_e32 v68, v74, v70
	v_fma_f32 v71, -v78, v81, v75
	v_fmac_f32_e32 v69, v83, v69
	v_div_scale_f32 v74, s4, v20, v66, v20
	v_fma_f32 v76, -v79, v82, 1.0
	v_div_fixup_f32 v17, v67, v66, v17
	v_fma_f32 v67, -v73, v68, v77
	v_fmac_f32_e32 v81, v71, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v71, v74, v69 :: v_dual_fmac_f32 v82, v76, v82
	v_div_scale_f32 v76, null, v66, v66, v22
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v73, s6, v21, v66, v21
	v_div_fmas_f32 v67, v67, v70, v68
	v_fma_f32 v68, -v78, v81, v75
	v_fma_f32 v70, -v80, v71, v74
	v_rcp_f32_e32 v75, v76
	v_div_scale_f32 v78, null, v66, v66, v23
	v_mul_f32_e32 v77, v73, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v70, v69
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v78
	v_div_fmas_f32 v68, v68, v72, v81
	v_fma_f32 v72, -v79, v77, v73
	v_div_fixup_f32 v18, v67, v66, v18
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v76, v75, 1.0
	v_fma_f32 v67, -v80, v71, v74
	v_div_fixup_f32 v19, v68, v66, v19
	v_fmac_f32_e32 v77, v72, v82
	v_div_scale_f32 v68, s3, v22, v66, v22
	v_fmac_f32_e32 v75, v81, v75
	v_fma_f32 v72, -v78, v70, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v80, null, v66, v66, v9
	v_div_fmas_f32 v67, v67, v69, v71
	v_fma_f32 v69, -v79, v77, v73
	v_mul_f32_e32 v71, v68, v75
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, null, v66, v66, v8
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v73, s4, v23, v66, v23
	v_div_fmas_f32 v69, v69, v82, v77
	v_rcp_f32_e32 v74, v72
	v_fma_f32 v77, -v76, v71, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v73, v70
	v_div_fixup_f32 v20, v67, v66, v20
	v_div_fixup_f32 v21, v69, v66, v21
	v_rcp_f32_e32 v69, v80
	v_fmac_f32_e32 v71, v77, v75
	v_fma_f32 v67, -v78, v79, v73
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v82, null, v66, v66, v11
	v_fma_f32 v77, -v72, v74, 1.0
	v_fma_f32 v68, -v76, v71, v68
	v_div_scale_f32 v76, null, v66, v66, v10
	v_fmac_f32_e32 v79, v67, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v77, v74
	v_fma_f32 v81, -v80, v69, 1.0
	v_rcp_f32_e32 v77, v76
	v_div_fmas_f32 v68, v68, v75, v71
	v_fma_f32 v71, -v78, v79, v73
	v_div_scale_f32 v75, s3, v9, v66, v9
	v_fmac_f32_e32 v69, v81, v69
	v_div_scale_f32 v67, s5, v8, v66, v8
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v84, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v76, v77, 1.0
	v_mul_f32_e32 v83, v75, v69
	v_mul_f32_e32 v73, v67, v74
	v_div_fmas_f32 v70, v71, v70, v79
	v_div_fixup_f32 v22, v68, v66, v22
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, s6, v10, v66, v10
	v_fma_f32 v71, -v80, v83, v75
	v_fma_f32 v81, -v72, v73, v67
	v_div_fixup_f32 v23, v70, v66, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v70, -v82, v84, 1.0
	v_fmac_f32_e32 v83, v71, v69
	v_div_scale_f32 v71, null, v66, v66, v12
	v_fma_f32 v68, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v73, v81, v74 :: v_dual_fmac_f32 v84, v70, v84
	v_div_scale_f32 v70, s4, v11, v66, v11
	v_fmac_f32_e32 v79, v68, v77
	v_rcp_f32_e32 v68, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, -v72, v73, v67
	v_fma_f32 v72, -v80, v83, v75
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v39, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v73
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v73, v70, v84
	v_div_fmas_f32 v69, v72, v69, v83
	v_fma_f32 v72, -v76, v79, v78
	v_div_scale_f32 v74, null, v66, v66, v13
	v_fma_f32 v75, -v71, v68, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v8, v67, v66, v8
	v_div_fmas_f32 v72, v72, v77, v79
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v82, v73, v70
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, s3, v12, v66, v12
	v_div_fixup_f32 v9, v69, v66, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v77, v84
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v67, v75, v68
	v_div_fixup_f32 v10, v72, v66, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v74, v76, 1.0
	v_fma_f32 v70, -v82, v73, v70
	v_div_scale_f32 v72, null, v66, v66, v14
	v_fma_f32 v77, -v71, v67, v75
	v_fmac_f32_e32 v76, v69, v76
	v_div_scale_f32 v69, s5, v13, v66, v13
	v_div_fmas_f32 v70, v70, v84, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v77, v68
	v_rcp_f32_e32 v78, v72
	v_mul_f32_e32 v73, v69, v76
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v70, v66, v11
	v_fma_f32 v70, -v71, v67, v75
	v_div_scale_f32 v77, null, v66, v66, v15
	v_fma_f32 v71, -v74, v73, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v70, v68, v67
	v_div_scale_f32 v68, null, v66, v66, v0
	v_fma_f32 v75, -v72, v78, 1.0
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v73, v71, v76
	v_rcp_f32_e32 v71, v68
	v_div_scale_f32 v70, s3, v14, v66, v14
	v_fmac_f32_e32 v78, v75, v78
	v_div_scale_f32 v75, null, v66, v66, v1
	v_div_fixup_f32 v12, v67, v66, v12
	v_fma_f32 v69, -v74, v73, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v77, v79, 1.0
	v_rcp_f32_e32 v81, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v68, v71, 1.0
	v_mul_f32_e32 v74, v70, v78
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v79, v67, v79
	v_div_scale_f32 v67, s4, v15, v66, v15
	v_fmac_f32_e32 v71, v80, v71
	v_div_scale_f32 v80, null, v66, v66, v2
	v_div_fmas_f32 v69, v69, v76, v73
	v_fma_f32 v73, -v72, v74, v70
	v_mul_f32_e32 v76, v67, v79
	v_div_scale_f32 v82, s5, v0, v66, v0
	v_fma_f32 v83, -v75, v81, 1.0
	v_rcp_f32_e32 v84, v80
	v_fmac_f32_e32 v74, v73, v78
	v_fma_f32 v73, -v77, v76, v67
	v_mul_f32_e32 v85, v82, v71
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, s6, v1, v66, v1
	v_div_fixup_f32 v13, v69, v66, v13
	v_fma_f32 v69, -v72, v74, v70
	v_fmac_f32_e32 v76, v73, v79
	v_fma_f32 v70, -v68, v85, v82
	v_mul_f32_e32 v72, v83, v81
	v_fma_f32 v73, -v80, v84, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v67, -v77, v76, v67
	v_fmac_f32_e32 v85, v70, v71
	v_fma_f32 v70, -v75, v72, v83
	v_fmac_f32_e32 v84, v73, v84
	v_div_scale_f32 v73, s3, v2, v66, v2
	v_div_fmas_f32 v69, v69, v78, v74
	v_div_scale_f32 v74, null, v66, v66, v3
	v_fma_f32 v68, -v68, v85, v82
	v_fmac_f32_e32 v72, v70, v81
	v_mul_f32_e32 v70, v73, v84
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v69, v66, v14
	v_div_fmas_f32 v67, v67, v79, v76
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v76, v74
	v_div_fmas_f32 v68, v68, v71, v85
	v_fma_f32 v71, -v75, v72, v83
	v_fma_f32 v75, -v80, v70, v73
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v67, v66, v15
	v_div_fixup_f32 v0, v68, v66, v0
	v_div_fmas_f32 v71, v71, v81, v72
	v_fmac_f32_e32 v70, v75, v84
	v_div_scale_f32 v68, null, v66, v66, v4
	v_fma_f32 v69, -v74, v76, 1.0
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, -v80, v70, v73
	v_div_fixup_f32 v1, v71, v66, v1
	v_div_scale_f32 v71, null, v66, v66, v6
	v_fmac_f32_e32 v76, v69, v76
	v_div_scale_f32 v69, null, v66, v66, v5
	v_div_fmas_f32 v67, v67, v84, v70
	v_rcp_f32_e32 v70, v68
	v_rcp_f32_e32 v75, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v69
	v_div_scale_f32 v78, null, v66, v66, v7
	v_div_scale_f32 v72, vcc_lo, v3, v66, v3
	v_div_fixup_f32 v2, v67, v66, v2
	v_rcp_f32_e32 v80, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v68, v70, 1.0
	v_mul_f32_e32 v77, v72, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v69, v73, 1.0
	v_fma_f32 v82, -v71, v75, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v67, v70
	v_div_scale_f32 v67, s3, v4, v66, v4
	v_fma_f32 v81, -v74, v77, v72
	v_fmac_f32_e32 v73, v79, v73
	v_div_scale_f32 v79, s4, v5, v66, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v67, v70
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s5, v6, v66, v6
	v_fma_f32 v84, -v78, v80, 1.0
	v_fmac_f32_e32 v77, v81, v76
	v_mul_f32_e32 v85, v79, v73
	v_fma_f32 v81, -v68, v83, v67
	v_mul_f32_e32 v86, v82, v75
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v84, s6, v7, v66, v7
	v_fma_f32 v72, -v74, v77, v72
	v_fma_f32 v74, -v69, v85, v79
	v_fmac_f32_e32 v83, v81, v70
	v_fma_f32 v81, -v71, v86, v82
	v_mul_f32_e32 v87, v84, v80
	v_div_fmas_f32 v72, v72, v76, v77
	v_fmac_f32_e32 v85, v74, v73
	v_fma_f32 v67, -v68, v83, v67
	v_fmac_f32_e32 v86, v81, v75
	v_fma_f32 v68, -v78, v87, v84
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v69, -v69, v85, v79
	v_div_fmas_f32 v67, v67, v70, v83
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v87, v68, v80
	v_fma_f32 v68, -v71, v86, v82
	v_div_fmas_f32 v69, v69, v73, v85
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v76, v57, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v75, v86
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v75, v56, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	v_cndmask_b32_e64 v30, 0, v30, s2
	v_cndmask_b32_e64 v31, 0, v31, s2
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v75, v56, v75, 0x7fff
	v_add3_u32 v56, v57, v76, 0x7fff
	v_bfe_u32 v57, v58, 16, 1
	v_bfe_u32 v76, v60, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v56.l, 0x7fff, v75.h, s9
	v_bfe_u32 v75, v59, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s10
	v_add3_u32 v57, v58, v57, 0x7fff
	v_cmp_o_f32_e64 s9, v58, v58
	v_cmp_o_f32_e64 s10, v59, v59
	v_add3_u32 v58, v59, v75, 0x7fff
	v_add3_u32 v59, v60, v76, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s9
	v_bfe_u32 v75, v63, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s10
	v_bfe_u32 v58, v62, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s11
	v_add3_u32 v60, v61, v60, 0x7fff
	v_cmp_o_f32_e64 s9, v61, v61
	v_cmp_o_f32_e64 s10, v62, v62
	v_add3_u32 v58, v62, v58, 0x7fff
	v_add3_u32 v61, v63, v75, 0x7fff
	v_cmp_o_f32_e64 s11, v63, v63
	v_cndmask_b16 v59.h, 0x7fff, v60.h, s9
	v_bfe_u32 v60, v48, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s10
	v_bfe_u32 v62, v49, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s11
	v_bfe_u32 v61, v50, 16, 1
	v_add3_u32 v60, v48, v60, 0x7fff
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v48, v49, v62, 0x7fff
	v_cmp_o_f32_e64 s10, v49, v49
	v_add3_u32 v49, v50, v61, 0x7fff
	v_cmp_o_f32_e64 s11, v50, v50
	v_bfe_u32 v50, v51, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s9
	v_bfe_u32 v60, v52, 16, 1
	v_bfe_u32 v61, v53, 16, 1
	v_cmp_o_f32_e64 s9, v51, v51
	v_add3_u32 v50, v51, v50, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s10
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s11
	v_add3_u32 v51, v52, v60, 0x7fff
	v_cmp_o_f32_e64 s10, v52, v52
	v_add3_u32 v52, v53, v61, 0x7fff
	v_cmp_o_f32_e64 s11, v53, v53
	v_cndmask_b16 v49.h, 0x7fff, v50.h, s9
	v_bfe_u32 v50, v54, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s10
	v_bfe_u32 v53, v55, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s11
	v_bfe_u32 v52, v40, 16, 1
	v_add3_u32 v50, v54, v50, 0x7fff
	v_cmp_o_f32_e64 s9, v54, v54
	v_add3_u32 v53, v55, v53, 0x7fff
	v_cmp_o_f32_e64 s10, v55, v55
	v_add3_u32 v52, v40, v52, 0x7fff
	v_cmp_o_f32_e64 s11, v40, v40
	v_cndmask_b16 v40.l, 0x7fff, v50.h, s9
	v_bfe_u32 v50, v41, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v53.h, s10
	v_bfe_u32 v53, v42, 16, 1
	v_bfe_u32 v54, v43, 16, 1
	v_cmp_o_f32_e64 s9, v41, v41
	v_add3_u32 v50, v41, v50, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s11
	v_add3_u32 v41, v42, v53, 0x7fff
	v_cmp_o_f32_e64 s10, v42, v42
	v_add3_u32 v42, v43, v54, 0x7fff
	v_cmp_o_f32_e64 s11, v43, v43
	v_cndmask_b16 v52.h, 0x7fff, v50.h, s9
	v_bfe_u32 v43, v44, 16, 1
	v_bfe_u32 v50, v45, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s10
	v_cmp_o_f32_e64 s9, v44, v44
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v43, v44, v43, 0x7fff
	v_add3_u32 v44, v45, v50, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s11
	v_bfe_u32 v42, v46, 16, 1
	v_cmp_o_f32_e64 s11, v46, v46
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s9
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s10
	v_bfe_u32 v44, v32, 16, 1
	v_add3_u32 v42, v46, v42, 0x7fff
	v_bfe_u32 v46, v33, 16, 1
	v_bfe_u32 v45, v47, 16, 1
	v_cmp_o_f32_e64 s10, v32, v32
	v_add3_u32 v44, v32, v44, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s11
	v_add3_u32 v32, v33, v46, 0x7fff
	v_add3_u32 v45, v47, v45, 0x7fff
	v_cmp_o_f32_e64 s9, v47, v47
	v_cmp_o_f32_e64 s11, v33, v33
	v_bfe_u32 v33, v34, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v44.h, s10
	v_bfe_u32 v44, v35, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s9
	v_bfe_u32 v45, v36, 16, 1
	v_add3_u32 v33, v34, v33, 0x7fff
	v_cmp_o_f32_e64 s9, v34, v34
	v_add3_u32 v34, v35, v44, 0x7fff
	v_cmp_o_f32_e64 s10, v35, v35
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s11
	v_add3_u32 v35, v36, v45, 0x7fff
	v_cmp_o_f32_e64 s11, v36, v36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s9
	v_bfe_u32 v36, v37, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s10
	v_bfe_u32 v34, v38, 16, 1
	v_bfe_u32 v44, v39, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s11
	v_add3_u32 v36, v37, v36, 0x7fff
	v_cmp_o_f32_e64 s9, v37, v37
	v_add3_u32 v34, v38, v34, 0x7fff
	v_cmp_o_f32_e64 s10, v38, v38
	v_add3_u32 v37, v39, v44, 0x7fff
	v_cmp_o_f32_e64 s11, v39, v39
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s9
	v_bfe_u32 v36, v24, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s10
	v_bfe_u32 v38, v25, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s11
	v_bfe_u32 v37, v26, 16, 1
	v_add3_u32 v36, v24, v36, 0x7fff
	v_cmp_o_f32_e64 s9, v24, v24
	v_add3_u32 v24, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s10, v25, v25
	v_add3_u32 v25, v26, v37, 0x7fff
	v_cmp_o_f32_e64 s11, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v36.h, s9
	v_bfe_u32 v36, v28, 16, 1
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s9, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s10
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s11
	v_add3_u32 v27, v28, v36, 0x7fff
	v_cmp_o_f32_e64 s10, v28, v28
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s11, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s9
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s10
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s11
	v_bfe_u32 v28, v16, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s9, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	v_cndmask_b32_e64 v19, 0, v19, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s10, v31, v31
	v_add3_u32 v28, v16, v28, 0x7fff
	v_cmp_o_f32_e64 s11, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s9
	v_bfe_u32 v26, v17, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v70, -v78, v87, v84
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	v_cndmask_b32_e64 v21, 0, v21, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v29.h, s10
	v_bfe_u32 v29, v18, 16, 1
	v_bfe_u32 v30, v19, 16, 1
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v70, v70, v80, v87
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s11
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s10, v18, v18
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s11, v19, v19
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s9
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v26, v21, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v72, v66, v3
	v_div_fixup_f32 v4, v67, v66, v4
	v_div_fixup_f32 v5, v69, v66, v5
	v_div_fixup_f32 v6, v68, v66, v6
	v_div_fixup_f32 v7, v70, v66, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	v_cndmask_b32_e64 v66, 0, v8, s2
	v_cndmask_b32_e64 v9, 0, v9, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s10
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s11
	v_bfe_u32 v18, v22, 16, 1
	v_add3_u32 v19, v20, v19, 0x7fff
	v_cmp_o_f32_e64 s9, v20, v20
	v_add3_u32 v20, v21, v26, 0x7fff
	v_cmp_o_f32_e64 s10, v21, v21
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s11, v22, v22
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s9
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s10
	v_bfe_u32 v20, v66, 16, 1
	v_bfe_u32 v22, v9, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s11
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s9, v23, v23
	v_add3_u32 v20, v66, v20, 0x7fff
	v_cmp_o_f32_e64 s10, v66, v66
	v_add3_u32 v22, v9, v22, 0x7fff
	v_cmp_o_f32_e64 s11, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s9
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s10
	v_bfe_u32 v21, v11, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s11
	v_bfe_u32 v22, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	v_cndmask_b32_e64 v15, 0, v15, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s9, v10, v10
	v_add3_u32 v10, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s10, v11, v11
	v_add3_u32 v11, v12, v22, 0x7fff
	v_cmp_o_f32_e64 s11, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v67, 0, v0, s2
	v_cndmask_b32_e64 v68, 0, v1, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s9
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s10
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v21, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s9, v13, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v69, 0, v2, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s11
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s10, v14, v14
	v_add3_u32 v13, v15, v21, 0x7fff
	v_cmp_o_f32_e64 s11, v15, v15
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s9
	v_bfe_u32 v12, v67, 16, 1
	v_bfe_u32 v14, v68, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v70, 0, v3, s2
	v_cndmask_b32_e64 v71, 0, v4, s2
	v_cndmask_b32_e64 v72, 0, v5, s2
	v_cndmask_b32_e64 v73, 0, v6, s2
	v_cndmask_b32_e64 v74, 0, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s10
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s11
	v_bfe_u32 v13, v69, 16, 1
	v_add3_u32 v12, v67, v12, 0x7fff
	v_cmp_o_f32_e64 s9, v67, v67
	v_add3_u32 v14, v68, v14, 0x7fff
	v_cmp_o_f32_e64 s10, v68, v68
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v1, s56, v253
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v69, v13, 0x7fff
	v_cmp_o_f32_e64 s11, v69, v69
	v_bfe_u32 v15, v70, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s9
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s10
	v_bfe_u32 v14, v71, 16, 1
	v_bfe_u32 v21, v72, 16, 1
	v_bfe_u32 v22, v73, 16, 1
	v_bfe_u32 v23, v74, 16, 1
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v8, 1, v248
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v1, s47, v1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s11
	v_add3_u32 v15, v70, v15, 0x7fff
	v_cmp_o_f32_e64 s9, v70, v70
	v_add3_u32 v14, v71, v14, 0x7fff
	v_cmp_o_f32_e64 s10, v71, v71
	v_add3_u32 v21, v72, v21, 0x7fff
	v_cmp_o_f32_e64 s11, v72, v72
	v_add3_u32 v22, v73, v22, 0x7fff
	v_cmp_o_f32_e64 s12, v73, v73
	v_add3_u32 v23, v74, v23, 0x7fff
	v_cmp_o_f32_e64 s13, v74, v74
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v7, 16, v8
	v_or_b32_e32 v6, 32, v8
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s47, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s9
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s10
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s11
	v_cndmask_b16 v15.l, 0x7fff, v22.h, s12
	v_cndmask_b16 v15.h, 0x7fff, v23.h, s13
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v5, 48, v8
	v_or_b32_e32 v4, 64, v8
	v_or_b32_e32 v3, 0x50, v8
	v_or_b32_e32 v2, 0x60, v8
	v_or_b32_e32 v0, 0x70, v8
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s47, v7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v8, v1, v8, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s47, v6
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v7, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_cndmask_b32_e64 v21, v59, v56, s1
	v_cndmask_b32_e64 v22, v56, v59, s1
	v_cndmask_b32_e64 v23, v58, v57, s1
	v_cndmask_b32_e64 v26, v57, v58, s1
	v_cndmask_b32_e64 v29, v51, v48, s1
	v_cndmask_b32_e64 v30, v48, v51, s1
	v_cndmask_b32_e64 v31, v40, v49, s1
	v_cndmask_b32_e64 v36, v49, v40, s1
	v_cndmask_b32_e64 v37, v43, v52, s1
	v_cndmask_b32_e64 v38, v52, v43, s1
	v_cndmask_b32_e64 v39, v42, v41, s1
	v_cndmask_b32_e64 v40, v41, v42, s1
	v_cndmask_b32_e64 v41, v35, v32, s1
	v_cndmask_b32_e64 v32, v32, v35, s1
	v_cndmask_b32_e64 v35, v34, v33, s1
	v_cndmask_b32_e64 v33, v33, v34, s1
	v_cndmask_b32_e64 v34, v27, v24, s1
	v_cndmask_b32_e64 v24, v24, v27, s1
	v_cndmask_b32_e64 v42, v16, v25, s1
	v_cndmask_b32_e64 v16, v25, v16, s1
	v_cndmask_b32_e64 v43, v19, v28, s1
	v_cndmask_b32_e64 v19, v28, v19, s1
	v_cndmask_b32_e64 v44, v18, v17, s1
	v_cndmask_b32_e64 v17, v17, v18, s1
	v_cndmask_b32_e64 v45, v11, v20, s1
	v_cndmask_b32_e64 v11, v20, v11, s1
	v_cndmask_b32_e64 v46, v10, v9, s1
	v_cndmask_b32_e64 v9, v9, v10, s1
	v_cndmask_b32_e64 v47, v14, v12, s1
	v_cndmask_b32_e64 v10, v12, v14, s1
	v_cndmask_b32_e64 v48, v15, v13, s1
	v_cndmask_b32_e64 v12, v13, v15, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s8
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s47, v5
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s7
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s47, v4
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s6
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s47, v3
	v_cmp_gt_i32_e32 vcc_lo, s47, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_permlanex16_b32 v13, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v30, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v36, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v38, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v40, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v33, s18, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v4, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v27, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v16, s18, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s4
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s47, v0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_permlanex16_b32 v30, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s18, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v3, v1, v3, 1
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v36, v11, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v9, s18, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v40, v10, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v12, s18, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v13, v21, v65
	v_perm_b32 v10, v13, v21, v64
	v_perm_b32 v11, v14, v23, v65
	v_perm_b32 v12, v14, v23, v64
	v_perm_b32 v13, v15, v29, v65
	v_perm_b32 v14, v15, v29, v64
	v_perm_b32 v15, v18, v31, v65
	v_perm_b32 v16, v18, v31, v64
	v_perm_b32 v17, v20, v37, v65
	v_perm_b32 v18, v20, v37, v64
	v_perm_b32 v19, v22, v39, v65
	v_perm_b32 v20, v22, v39, v64
	v_perm_b32 v21, v25, v41, v65
	v_perm_b32 v22, v25, v41, v64
	v_perm_b32 v23, v26, v35, v65
	v_perm_b32 v24, v26, v35, v64
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s2
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v25, v27, v34, v65
	v_perm_b32 v26, v27, v34, v64
	v_perm_b32 v27, v28, v42, v65
	v_perm_b32 v28, v28, v42, v64
	v_perm_b32 v29, v30, v43, v65
	v_perm_b32 v30, v30, v43, v64
	v_perm_b32 v31, v32, v44, v65
	v_perm_b32 v32, v32, v44, v64
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v1, 0x80000000, v3, s1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v33, v36, v45, v65
	v_perm_b32 v34, v36, v45, v64
	v_perm_b32 v35, v38, v46, v65
	v_perm_b32 v36, v38, v46, v64
	s_mov_b32 s47, 0x31027000
	v_perm_b32 v37, v40, v47, v65
	v_perm_b32 v38, v40, v47, v64
	v_perm_b32 v39, v49, v48, v65
	v_perm_b32 v40, v49, v48, v64
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[9:12], v8, s[44:47], 0 offen
	buffer_store_b128 v[13:16], v7, s[44:47], 0 offen
	buffer_store_b128 v[17:20], v6, s[44:47], 0 offen
	buffer_store_b128 v[21:24], v5, s[44:47], 0 offen
	buffer_store_b128 v[25:28], v4, s[44:47], 0 offen
	buffer_store_b128 v[29:32], v1, s[44:47], 0 offen
	buffer_store_b128 v[33:36], v2, s[44:47], 0 offen
	buffer_store_b128 v[37:40], v0, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 428
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 66
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.private_seg_size, 428
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23856
; TotalNumSgprs: 68
; NumVgprs: 256
; ScratchSize: 428
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
    .private_segment_fixed_size: 428
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 162
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
