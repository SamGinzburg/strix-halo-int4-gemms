	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[60:61], s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v41, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v21, 1, v0
	s_clause 0x2
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x38
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s47, s3, 9
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v1, 16, v41
	s_load_b32 s3, s[0:1], 0x88
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	s_mov_b32 s51, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v21
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s46, s4, s47
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v33, 15, v0
	v_bfe_u32 v85, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	v_dual_mov_b32 v4, v8 :: v_dual_lshlrev_b32 v43, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v92, v21, 16, v33
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s60, v21, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s60, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s49, s49, 0xffff
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v44, s4, v92
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s4, s12
	v_mov_b32_e32 v7, v8
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s60, s46, v[65:66]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s3, s4
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s3
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 32
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s4, s13
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x200
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_mov_b32_e32 v2, v8
	v_and_or_b32 v21, v43, 30, v85
	v_mov_b32_e32 v16, v8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s6, 0x200
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[17:20], v1, s[48:51], 0 offen
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v21, 2, v21
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s7, s4, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s6, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s7, s7, 27
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v22, 4, v21
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 27
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s7
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s6, s6, s8
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s4, s4, 31
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 31
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v91, 2, v85
	v_or_b32_e32 v90, 4, v85
	v_or_b32_e32 v89, 6, v85
	v_or_b32_e32 v88, 8, v85
	v_or_b32_e32 v87, 10, v85
	v_or_b32_e32 v86, 12, v85
	v_or_b32_e32 v84, 14, v85
	v_or_b32_e32 v83, 16, v85
	v_or_b32_e32 v82, 18, v85
	v_or_b32_e32 v81, 20, v85
	v_or_b32_e32 v80, 22, v85
	v_or_b32_e32 v79, 24, v85
	v_or_b32_e32 v78, 26, v85
	v_or_b32_e32 v77, 28, v85
	v_or_b32_e32 v76, 30, v85
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v44
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v75, v8
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s62, s5, 0x7fffffe0
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s63, s6, s4
	s_mov_b32 s36, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s62, s63
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v21, v17
	ds_bpermute_b32 v35, v21, v18
	ds_bpermute_b32 v36, v21, v19
	ds_bpermute_b32 v38, v21, v20
	ds_bpermute_b32 v37, v22, v17
	ds_bpermute_b32 v39, v22, v18
	ds_bpermute_b32 v40, v22, v19
	ds_bpermute_b32 v42, v22, v20
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v1, s46, v92
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v44, s3, v44
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_and_b32 v4, 24, v43
	v_mov_b32_e32 v43, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v48, s13, v44
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v2, 3, v0
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v93, 0x3f0, v41
	v_mov_b32_e32 v30, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v3, 24, v0
	v_lshl_or_b32 v113, v33, 5, v4
	v_lshl_add_u32 v110, v33, 1, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s9, 0xffff
	s_mov_b32 s48, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v45, v1, s[48:51], 0 offen
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v1, 16, v0
	v_xor_b32_e32 v112, v93, v3
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v41, 56, v2
	v_mov_b32_e32 v18, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v1
	v_xor_b32_e32 v33, 8, v112
	v_mov_b32_e32 v20, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[74:75], null, s61, v46, v[41:42]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v67, v38, v42, s1
	v_cndmask_b32_e64 v68, v34, v37, s1
	v_cndmask_b32_e64 v71, v42, v38, s1
	v_cndmask_b32_e64 v72, v37, v34, s1
	v_cndmask_b32_e64 v37, 0x1054, v43, s1
	v_cndmask_b32_e64 v38, 0x3276, v47, s1
	v_cndmask_b32_e64 v69, v35, v39, s1
	v_cndmask_b32_e64 v73, v39, v35, s1
	v_xor_b32_e32 v34, 8, v113
	v_xor_b32_e32 v35, 16, v113
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v116, 0, v34
	v_mov_b32_e32 v31, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v117, 0, v35
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v115, 0, v33
	v_and_b32_e32 v33, 0x540054, v37
	v_and_b32_e32 v34, 0x760076, v38
	v_cndmask_b32_e64 v66, v36, v40, s1
	v_cndmask_b32_e64 v70, v40, v36, s1
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s8, 0x3fb8aa3b
	v_xor_b32_e32 v36, 24, v113
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	v_or_b32_e32 v94, s47, v85
	v_or_b32_e32 v95, s47, v91
	v_or_b32_e32 v96, s47, v90
	v_or_b32_e32 v97, s47, v89
	v_or_b32_e32 v98, s47, v88
	v_or_b32_e32 v99, s47, v87
	v_or_b32_e32 v100, s47, v86
	v_or_b32_e32 v101, s47, v84
	v_or_b32_e32 v102, s47, v83
	v_or_b32_e32 v103, s47, v82
	v_or_b32_e32 v104, s47, v81
	v_or_b32_e32 v105, s47, v80
	v_or_b32_e32 v106, s47, v79
	v_or_b32_e32 v107, s47, v78
	v_or_b32_e32 v108, s47, v77
	v_or_b32_e32 v109, s47, v76
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v111, s12, v44
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v118, 0, v36
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v120, 0x5040504, v33
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v121, 0x7060706, v34
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s61, v41
	v_min_i32_e32 v114, v44, v48
	v_mov_b32_e32 v75, v25
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s64, s61, 3
	s_lshl_b32 s65, s61, 4
	s_mul_i32 s66, s61, 24
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s67, 0x76543210
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s10
	s_mov_b32 s56, s6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s53, s11
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v35, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v119, s1, v35
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v16, v25 :: v_dual_mov_b32 v123, v119
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v122, v119
	v_mov_b32_e32 v124, v119
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s1, s62, s47
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v45, 0, v112
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[41:42], null, s1, s60, v[65:66]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s36 :: v_dual_add_nc_u32 v46, 0, v113
	v_dual_mov_b32 v34, s37 :: v_dual_mov_b32 v35, s38
	v_dual_mov_b32 v36, s39 :: v_dual_mov_b32 v37, s40
	v_mov_b32_e32 v38, s41
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s42 :: v_dual_mov_b32 v40, s43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v63, v94, s62, 1
	v_add_lshl_u32 v64, v95, s62, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[41:44], v41, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v96, s62, 1
	v_add_lshl_u32 v127, v97, s62, 1
	v_add_lshl_u32 v128, v98, s62, 1
	v_add_lshl_u32 v129, v99, s62, 1
	v_add_lshl_u32 v130, v100, s62, 1
	v_add_lshl_u32 v133, v101, s62, 1
	v_add_lshl_u32 v134, v102, s62, 1
	v_add_lshl_u32 v135, v103, s62, 1
	v_add_lshl_u32 v136, v104, s62, 1
	v_add_lshl_u32 v137, v105, s62, 1
	v_add_lshl_u32 v138, v106, s62, 1
	v_add_lshl_u32 v139, v107, s62, 1
	v_add_lshl_u32 v140, v108, s62, 1
	v_add_lshl_u32 v141, v109, s62, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[41:42]
	ds_store_b64 v115, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v46 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[72:73], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[51:52], v[72:73], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v116 offset1:1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s62, v76
	v_or_b32_e32 v51, s62, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v78
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v79
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s4, s3
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v80
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v81
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s5
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[70:71], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[35:36], v[70:71], v[55:62] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v117 offset1:1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v82
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s8, s7
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v86
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s10, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v87
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v114, v51
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[68:69], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[35:36], v[68:69], v[55:62] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v118 offset1:1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v51, s62, v88
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v89
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s12, s11
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v90
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v114, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s62, v91
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v51, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v114, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s62, v85
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v49, v111
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v114, v49
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s9, s16, s15
	s_and_b32 s12, s28, s27
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[66:67], v[41:48] neg_lo:[1,1,0]
	v_mad_u64_u32 v[33:34], null, s1, s61, v[74:75]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[35:36], v[66:67], v[55:62] neg_lo:[1,1,0]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v51, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v42
	v_cvt_f32_i32_e32 v38, v43
	v_cvt_f32_i32_e32 v52, v41
	v_cvt_f32_i32_e32 v37, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v33, s64, 1
	v_add_lshl_u32 v36, v33, s65, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v53, v122, v53 :: v_dual_mul_f32 v38, v123, v38
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v33
	v_add_lshl_u32 v33, v33, s66, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v42, v46
	v_cvt_f32_i32_e32 v43, v56
	v_cvt_f32_i32_e32 v44, v57
	v_cvt_f32_i32_e32 v45, v58
	v_cvt_f32_i32_e32 v46, v59
	v_cvt_f32_i32_e32 v47, v60
	v_cvt_f32_i32_e32 v48, v61
	v_cvt_f32_i32_e32 v54, v62
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v132, v63, s[52:55], 0 offen
	buffer_load_u16 v131, v64, s[52:55], 0 offen
	buffer_load_u16 v59, v126, s[52:55], 0 offen
	buffer_load_u16 v60, v127, s[52:55], 0 offen
	buffer_load_u16 v57, v128, s[52:55], 0 offen
	buffer_load_u16 v58, v129, s[52:55], 0 offen
	buffer_load_u16 v129, v130, s[52:55], 0 offen
	buffer_load_u16 v130, v133, s[52:55], 0 offen
	buffer_load_u16 v56, v134, s[52:55], 0 offen
	buffer_load_u16 v61, v135, s[52:55], 0 offen
	buffer_load_u16 v62, v136, s[52:55], 0 offen
	buffer_load_u16 v63, v137, s[52:55], 0 offen
	buffer_load_u16 v64, v138, s[52:55], 0 offen
	buffer_load_u16 v126, v139, s[52:55], 0 offen
	buffer_load_u16 v127, v140, s[52:55], 0 offen
	buffer_load_u16 v128, v141, s[52:55], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[133:136], v34, s[56:59], 0 offen
	buffer_load_b128 v[137:140], v35, s[56:59], 0 offen
	buffer_load_b128 v[141:144], v36, s[56:59], 0 offen
	buffer_load_b128 v[33:36], v33, s[56:59], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v123, v39 :: v_dual_add_nc_u32 v50, 0, v93
	v_mul_f32_e32 v48, v123, v48
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v124, v40 :: v_dual_mul_f32 v41, v119, v41
	v_dual_mul_f32 v42, v122, v42 :: v_dual_mul_f32 v43, v119, v43
	v_cvt_f32_i32_e32 v55, v55
	v_dual_mul_f32 v44, v122, v44 :: v_dual_mul_f32 v45, v123, v45
	v_dual_mul_f32 v46, v124, v46 :: v_dual_mul_f32 v47, v122, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v124, v54 :: v_dual_mul_f32 v55, v119, v55
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v114, v51
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s33, s31
	s_and_b32 s9, s2, s9
	s_and_b32 s12, s2, s12
	s_and_b32 s14, s2, s14
	s_and_b32 s10, s24, s23
	s_and_b32 s11, s26, s25
	s_and_b32 s15, s35, s34
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s6, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s15, s2, s15
	s_and_b32 s16, s2, s10
	s_and_b32 s13, s30, s29
	s_and_b32 s23, s18, s17
	s_and_b32 s17, s20, s19
	s_and_b32 s18, s22, s21
	s_and_b32 s3, s2, s3
	s_and_b32 s13, s2, s13
	s_and_b32 s17, s2, s17
	s_and_b32 s18, s2, s18
	s_and_b32 s10, s2, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v125
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s62, s62, 32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v50, v[133:136]
	s_waitcnt vmcnt(2)
	ds_store_b128 v50, v[137:140] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[141:144] offset:2048
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[33:36] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v119, v52
	v_dual_mul_f32 v37, v124, v37 :: v_dual_lshlrev_b32 v52, 16, v132
	v_dual_mul_f32 v38, v38, v59 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v36, v52 :: v_dual_lshlrev_b32 v131, 16, v131
	v_dual_mul_f32 v39, v39, v129 :: v_dual_lshlrev_b32 v130, 16, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v37, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v131, v53, v131 :: v_dual_lshlrev_b32 v128, 16, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v40, v130
	v_dual_mul_f32 v41, v41, v57 :: v_dual_lshlrev_b32 v58, 16, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v61
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v42, v58
	v_dual_mul_f32 v43, v43, v61 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v54, v128
	v_mul_f32_e32 v47, v47, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v44, v62
	v_dual_mul_f32 v45, v45, v63 :: v_dual_lshlrev_b32 v64, 16, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v43, s9
	v_cndmask_b32_e64 v43, 0xff800000, v131, s14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v46, v64
	v_mul_f32_e32 v48, v48, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v45, s7
	v_cndmask_b32_e64 v59, 0xff800000, v44, s8
	v_cndmask_b32_e64 v42, 0xff800000, v42, s16
	v_cndmask_b32_e64 v58, 0xff800000, v46, s5
	v_cndmask_b32_e64 v54, 0xff800000, v48, s6
	v_cndmask_b32_e64 v41, 0xff800000, v41, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v62, v55, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v47, s4
	v_cndmask_b32_e64 v36, 0xff800000, v36, s15
	v_cndmask_b32_e64 v56, 0xff800000, v61, s3
	v_cndmask_b32_e64 v38, 0xff800000, v38, s13
	v_cndmask_b32_e64 v61, 0xff800000, v62, s10
	v_cndmask_b32_e64 v40, 0xff800000, v40, s17
	v_cndmask_b32_e64 v39, 0xff800000, v39, s18
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v60, v59, v57
	v_max3_f32 v45, v58, v55, v54
	v_max_f32_e32 v46, v36, v43
	v_max3_f32 v47, v37, v41, v42
	v_max3_f32 v48, v39, v40, v61
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v49.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v44, v45, v56
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v49.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v45, v46, v38, v47
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v49.h
	v_mov_b16_e32 v34.h, v49.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v45, v48, v44
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v50.h, v49.h
	v_mov_b16_e32 v52.h, v49.h
	v_mov_b16_e32 v53.h, v49.h
	v_mov_b16_e32 v51.h, v49.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v44, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v126, v125, v44, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v126
	v_sub_f32_e32 v37, v37, v126
	v_sub_f32_e32 v41, v41, v126
	v_sub_f32_e32 v38, v38, v126
	v_sub_f32_e32 v39, v39, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v125, v125, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v43, s14
	v_cndmask_b32_e64 v128, 0, v37, s12
	v_cndmask_b32_e64 v129, 0, v41, s11
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v38, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v62.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.l, v129.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v126
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v39, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v37, 1, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.l, v128.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v40, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v64.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v127, 0, v125, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v62, v37, 0x7fff
	v_and_b32_e32 v38, 1, v49
	v_mov_b16_e64 v34.l, v131.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v36, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v42, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v129, v129
	v_add3_u32 v33, v129, v33, 0x7fff
	v_mov_b16_e64 v133.l, v63.h
	v_cmp_o_f32_e64 s12, v63, v63
	v_mov_b16_e64 v49.l, v130.h
	v_cmp_o_f32_e64 s13, v128, v128
	v_cmp_o_f32_e64 s14, v64, v64
	v_and_b32_e32 v36, 1, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v127 :: v_dual_and_b32 v34, 1, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v64, v35, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v33.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v36, v63, v36, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v128, v38, 0x7fff
	v_cmp_o_f32_e64 s11, v62, v62
	v_cmp_o_f32_e64 s15, v130, v130
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s12
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v127 :: v_dual_and_b32 v36, 1, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.l, v132.h
	v_cmp_o_f32_e64 s17, v132, v132
	v_cmp_o_f32_e64 s18, v131, v131
	v_add3_u32 v34, v131, v34, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v35.h, s14
	v_and_b32_e32 v33, 1, v49
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s13
	v_add3_u32 v35, v130, v36, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s11
	v_cndmask_b16 v40.l, 0x7fff, v34.h, s18
	v_add3_u32 v36, v132, v33, 0x7fff
	v_permlanex16_b32 v41, v38, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v39.h, 0x7fff, v35.h, s15
	v_permlanex16_b32 v34, v37, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v36.h, s17
	v_perm_b32 v35, v41, v38, v120
	v_permlanex16_b32 v42, v39, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v41, v38, v121
	v_perm_b32 v33, v34, v37, v120
	v_permlanex16_b32 v41, v40, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v34, v37, v121
	v_perm_b32 v37, v42, v39, v120
	v_perm_b32 v38, v42, v39, v121
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v39, v41, v40, v120
	v_perm_b32 v40, v41, v40, v121
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v110 offset:256
	ds_load_u16_d16 v43, v110 offset:512
	ds_load_u16_d16 v44, v110 offset:768
	ds_load_u16_d16 v45, v110 offset:1024
	ds_load_u16_d16 v46, v110 offset:1280
	ds_load_u16_d16 v47, v110 offset:1536
	ds_load_u16_d16 v48, v110 offset:1792
	ds_load_u16_d16 v41, v110
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v110 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v110 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v110 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v110 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v110 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v110 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v110 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v110 offset:128
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v127
	v_mul_f32_e32 v31, v31, v127
	v_mul_f32_e32 v32, v32, v127
	v_mul_f32_e32 v17, v17, v127
	v_mul_f32_e32 v18, v18, v127
	v_mul_f32_e32 v19, v19, v127
	v_mul_f32_e32 v20, v20, v127
	v_mul_f32_e32 v21, v21, v127
	v_mul_f32_e32 v22, v22, v127
	v_mul_f32_e32 v23, v23, v127
	v_mul_f32_e32 v24, v24, v127
	v_mul_f32_e32 v9, v9, v127
	v_mul_f32_e32 v10, v10, v127
	v_mul_f32_e32 v11, v11, v127
	v_mul_f32_e32 v12, v12, v127
	v_mul_f32_e32 v13, v13, v127
	v_mul_f32_e32 v14, v14, v127
	v_mul_f32_e32 v15, v15, v127
	v_mul_f32_e32 v16, v16, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v110 offset:32
	ds_load_u16_d16 v42, v110 offset:288
	ds_load_u16_d16 v43, v110 offset:544
	ds_load_u16_d16 v44, v110 offset:800
	ds_load_u16_d16 v45, v110 offset:1056
	ds_load_u16_d16 v46, v110 offset:1312
	ds_load_u16_d16 v47, v110 offset:1568
	ds_load_u16_d16 v48, v110 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v110 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v110 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v110 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v110 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v110 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v110 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v110 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v110 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v127
	v_mul_f32_e32 v2, v2, v127
	v_mul_f32_e32 v3, v3, v127
	v_mul_f32_e32 v4, v4, v127
	v_mul_f32_e32 v5, v5, v127
	v_mul_f32_e32 v6, v6, v127
	v_mul_f32_e32 v7, v7, v127
	v_mul_f32_e32 v8, v8, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v110 offset:576
	ds_load_u16_d16 v44, v110 offset:832
	ds_load_u16_d16 v45, v110 offset:1088
	ds_load_u16_d16 v46, v110 offset:1344
	ds_load_u16_d16 v47, v110 offset:1600
	ds_load_u16_d16 v48, v110 offset:1856
	ds_load_u16_d16 v41, v110 offset:64
	ds_load_u16_d16 v42, v110 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v110 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v110 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v110 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v110 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v110 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v110 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v110 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v110 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v110 offset:352
	ds_load_u16_d16 v41, v110 offset:96
	ds_load_u16_d16 v43, v110 offset:608
	ds_load_u16_d16 v44, v110 offset:864
	ds_load_u16_d16 v45, v110 offset:1120
	ds_load_u16_d16 v46, v110 offset:1376
	ds_load_u16_d16 v47, v110 offset:1632
	ds_load_u16_d16 v48, v110 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v110 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v110 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v110 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v110 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v110 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v110 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v110 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v110 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v61, v126
	v_sub_f32_e32 v36, v60, v126
	v_sub_f32_e32 v37, v59, v126
	v_sub_f32_e32 v38, v57, v126
	v_sub_f32_e32 v39, v58, v126
	v_sub_f32_e32 v40, v55, v126
	v_sub_f32_e32 v41, v54, v126
	v_sub_f32_e32 v42, v56, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
.Ltmp11:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v64, v128
	v_add_f32_e32 v46, v131, v132
.Ltmp12:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s10
	v_cndmask_b32_e64 v36, 0, v36, s9
	v_cndmask_b32_e64 v37, 0, v37, s8
	v_cndmask_b32_e64 v38, 0, v38, s7
	v_cndmask_b32_e64 v39, 0, v39, s5
	v_cndmask_b32_e64 v40, 0, v40, s4
	v_cndmask_b32_e64 v41, 0, v41, s6
	v_cndmask_b32_e64 v42, 0, v42, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, v37.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v35, v36 :: v_dual_add_f32 v132, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v41.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v39, v40 :: v_dual_add_f32 v128, v41, v42
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v41, v41
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v131, v132
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v36.h
	v_mov_b16_e32 v50.l, v35.h
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v128 :: v_dual_and_b32 v48, 1, v51
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v51, 1, v53
	v_cmp_o_f32_e64 s5, v37, v37
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v63, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v125, v131, v125
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v37, v48, 0x7fff
	v_add3_u32 v41, v41, v51, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v129, v130
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v50
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v43, v44
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v36, v36
	v_cndmask_b16 v48.l, 0x7fff, v41.h, s9
	v_and_b32_e32 v41, 1, v49
	v_mov_b16_e32 v49.l, v38.h
	v_cmp_o_f32_e64 s3, v35, v35
	v_mov_b16_e32 v52.l, v39.h
	v_add3_u32 v35, v35, v47, 0x7fff
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v43, 1, v49
	v_mov_b16_e32 v49.l, v40.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v110 offset:2112
	ds_load_u16_d16 v34, v110 offset:2368
	ds_load_u16_d16 v133, v110 offset:2048
	ds_load_u16_d16 v135, v110 offset:2560
	ds_load_u16_d16 v136, v110 offset:2816
	ds_load_u16_d16 v137, v110 offset:3072
	ds_load_u16_d16 v138, v110 offset:3328
	ds_load_u16_d16 v139, v110 offset:3584
	ds_load_u16_d16 v140, v110 offset:3840
	ds_load_u16_d16 v134, v110 offset:2304
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v38, v38
	v_and_b32_e32 v50, 1, v52
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s3
	v_and_b32_e32 v41, 1, v49
	v_mov_b16_e32 v49.l, v42.h
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s1
	v_add3_u32 v36, v38, v43, 0x7fff
	v_cmp_o_f32_e64 s6, v40, v40
	v_cmp_o_f32_e64 s7, v39, v39
	v_and_b32_e32 v38, 1, v49
	v_cmp_o_f32_e64 s8, v42, v42
	v_add3_u32 v39, v39, v50, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s5
	v_cndmask_b16 v37.h, 0x7fff, v36.h, s4
	v_add3_u32 v36, v40, v41, 0x7fff
	v_add3_u32 v38, v42, v38, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s7
	v_permlanex16_b32 v43, v35, s67, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v37, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v39.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v48.h, 0x7fff, v38.h, s8
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v45, v46
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v43, v35, v120
	v_perm_b32 v42, v43, v35, v121
	v_permlanex16_b32 v35, v39, s67, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v48, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v40, v37, v120
	v_perm_b32 v44, v40, v37, v121
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v129, v130
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v45, v35, v39, v120
	v_perm_b32 v46, v35, v39, v121
	v_perm_b32 v47, v36, v48, v120
	v_perm_b32 v48, v36, v48, v121
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v49, v110 offset:2144
	ds_load_u16_d16 v35, v110 offset:2624
	ds_load_u16_d16 v36, v110 offset:2880
	ds_load_u16_d16 v37, v110 offset:3136
	ds_load_u16_d16 v38, v110 offset:3392
	ds_load_u16_d16 v39, v110 offset:3648
	ds_load_u16_d16 v40, v110 offset:3904
	ds_load_u16_d16 v50, v110 offset:2400
	ds_load_u16_d16 v51, v110 offset:2656
	ds_load_u16_d16 v52, v110 offset:2912
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v133, v110 offset:2176
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v135, v110 offset:2688
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v136, v110 offset:2944
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v137, v110 offset:3200
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v138, v110 offset:3456
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v139, v110 offset:3712
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v140, v110 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v134, v110 offset:2432
	ds_load_u16_d16 v57, v110 offset:2080
	ds_load_u16_d16 v53, v110 offset:3168
	ds_load_u16_d16 v58, v110 offset:2336
	ds_load_u16_d16 v54, v110 offset:3424
	ds_load_u16_d16 v59, v110 offset:2592
	ds_load_u16_d16 v55, v110 offset:3680
	ds_load_u16_d16 v60, v110 offset:2848
	ds_load_u16_d16 v56, v110 offset:3936
	ds_load_u16_d16 v61, v110 offset:3104
	ds_load_u16_d16 v62, v110 offset:3360
	ds_load_u16_d16 v63, v110 offset:3616
	ds_load_u16_d16 v64, v110 offset:3872
	ds_load_u16_d16_hi v33, v110 offset:2240
	ds_load_u16_d16_hi v34, v110 offset:2496
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v35, v110 offset:2752
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v36, v110 offset:3008
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v37, v110 offset:3264
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v38, v110 offset:3520
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v39, v110 offset:3776
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v40, v110 offset:4032
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v57, v110 offset:2208
	ds_load_u16_d16_hi v49, v110 offset:2272
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v58, v110 offset:2464
	ds_load_u16_d16_hi v50, v110 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v59, v110 offset:2720
	ds_load_u16_d16_hi v51, v110 offset:2784
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v60, v110 offset:2976
	ds_load_u16_d16_hi v52, v110 offset:3040
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v110 offset:3232
	ds_load_u16_d16_hi v53, v110 offset:3296
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v62, v110 offset:3488
	ds_load_u16_d16_hi v54, v110 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v63, v110 offset:3744
	ds_load_u16_d16_hi v55, v110 offset:3808
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v64, v110 offset:4000
	ds_load_u16_d16_hi v56, v110 offset:4064
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v128, v125 :: v_dual_mov_b32 v128, v75
.Ltmp32:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[133:140], v[41:48], v[25:32]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v125, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[41:48], v[9:16]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v125, v75
	v_mov_b32_e32 v125, v126
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp36:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v75, v128, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[41:48], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[41:48], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow181
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v33, null, v75, v75, v25
	s_waitcnt lgkmcnt(7)
	v_div_scale_f32 v34, null, v75, v75, v26
	s_waitcnt lgkmcnt(6)
	v_div_scale_f32 v35, null, v75, v75, v27
	s_waitcnt lgkmcnt(5)
	v_rcp_f32_e32 v36, v33
	s_waitcnt lgkmcnt(3)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(2)
	v_div_scale_f32 v39, vcc_lo, v25, v75, v25
	v_rcp_f32_e32 v38, v35
	s_waitcnt lgkmcnt(1)
	v_div_scale_f32 v40, s0, v26, v75, v26
	v_div_scale_f32 v43, null, v75, v75, v28
	v_div_scale_f32 v49, s3, v28, v75, v28
	v_fma_f32 v41, -v33, v36, 1.0
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s45, s45, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s47, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_div_scale_f32 v41, s1, v27, v75, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v33, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v0, 62, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v75, v75, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v43, v42, 1.0
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v75, v75, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v36, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v37, v45
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v45, null, v75, v75, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v47, v39, 1.0
	v_div_fixup_f32 v26, v34, v75, v26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	v_div_fixup_f32 v25, v33, v75, v25
	v_fmac_f32_e32 v39, v37, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v37, null, v75, v75, v31
	v_fmac_f32_e32 v42, v50, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v35, v46, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v35, v46, v41
	v_fma_f32 v35, -v40, v44, 1.0
	v_div_fmas_f32 v34, v34, v38, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v34, v75, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v36, v49, v42 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v33, -v43, v36, v49
	v_fma_f32 v46, -v45, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v75, v32
	v_fmac_f32_e32 v36, v33, v42
	v_div_scale_f32 v33, s4, v29, v75, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v36, v49
	v_mul_f32_e32 v41, v33, v39
	v_div_scale_f32 v43, s1, v30, v75, v30
	v_div_scale_f32 v49, null, v75, v75, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v43, v44
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v36, v75, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v75, v75, v17
	v_fma_f32 v34, -v40, v42, v43
	v_div_scale_f32 v36, s3, v31, v75, v31
	v_fma_f32 v33, -v47, v41, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v38
	v_fmac_f32_e32 v42, v34, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v39, v41
	v_mul_f32_e32 v41, v46, v48
	v_fma_f32 v39, -v40, v42, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v33, v75, v29
	v_fma_f32 v43, -v38, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v43, v47
	v_div_fmas_f32 v39, v39, v44, v42
	v_fma_f32 v42, -v45, v41, v46
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v17, v75, v17
	v_div_scale_f32 v44, null, v75, v75, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v42, v48
	v_div_scale_f32 v42, s3, v18, v75, v18
	v_mul_f32_e32 v34, v36, v35
	v_div_fixup_f32 v30, v39, v75, v30
	v_div_scale_f32 v39, null, v75, v75, v19
	v_fma_f32 v40, -v37, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v40, v35
	v_rcp_f32_e32 v40, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v37, v34, v36
	v_div_fmas_f32 v33, v33, v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v49, v40, 1.0
	v_fma_f32 v34, -v45, v41, v46
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, null, v75, v75, v22
	v_fmac_f32_e32 v40, v37, v40
	v_mul_f32_e32 v36, v43, v47
	v_rcp_f32_e32 v37, v39
	v_div_fixup_f32 v31, v33, v75, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v38, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v35, v47
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v45, -v39, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v38, v36, v43
	v_div_scale_f32 v38, s4, v19, v75, v19
	v_fmac_f32_e32 v37, v45, v37
	v_div_scale_f32 v45, null, v75, v75, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v44, v35, 1.0
	v_fmac_f32_e32 v35, v43, v35
	v_div_fmas_f32 v34, v34, v48, v41
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, s1, v20, v75, v20
	v_div_fmas_f32 v33, v33, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v34, v75, v32
	v_rcp_f32_e32 v36, v45
	v_mul_f32_e32 v47, v43, v35
	v_mul_f32_e32 v41, v42, v40
	v_div_fixup_f32 v17, v33, v75, v17
	v_rcp_f32_e32 v48, v46
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v49, v41, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v34, v40
	v_mul_f32_e32 v34, v38, v37
	v_fma_f32 v33, -v49, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v39, v34, v38
	v_fma_f32 v49, -v45, v36, 1.0
	v_div_fmas_f32 v33, v33, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v42, v37
	v_fma_f32 v40, -v44, v47, v43
	v_fmac_f32_e32 v36, v49, v36
	v_div_scale_f32 v41, s3, v21, v75, v21
	v_fma_f32 v42, -v46, v48, 1.0
	v_div_fixup_f32 v18, v33, v75, v18
	v_fma_f32 v33, -v39, v34, v38
	v_fmac_f32_e32 v47, v40, v35
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v41, v36
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v39, s5, v22, v75, v22
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v34, -v44, v47, v43
	v_div_scale_f32 v44, null, v75, v75, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v45, v38, v41
	v_mul_f32_e32 v43, v39, v48
	v_div_fmas_f32 v34, v34, v35, v47
	v_rcp_f32_e32 v35, v44
	v_div_fixup_f32 v19, v33, v75, v19
	v_fmac_f32_e32 v38, v37, v36
	v_fma_f32 v37, -v46, v43, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v75, v75, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v38, v41
	v_fmac_f32_e32 v43, v37, v48
	v_div_fixup_f32 v20, v34, v75, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v44, v35, 1.0
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v33, v33, v36, v38
	v_fma_f32 v36, -v46, v43, v39
	v_div_scale_f32 v39, s3, v24, v75, v24
	v_fmac_f32_e32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v33, v75, v21
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, null, v75, v75, v10
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v40, v42, 1.0
	v_div_scale_f32 v34, s1, v23, v75, v23
	v_div_scale_f32 v37, null, v75, v75, v9
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v33, v35
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_scale_f32 v33, s4, v9, v75, v9
	v_fmac_f32_e32 v42, v47, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v75, v22
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v48, null, v75, v75, v12
	v_mul_f32_e32 v38, v34, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v43, -v40, v38, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v46, v36, 1.0
	v_fmac_f32_e32 v36, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v43, v42
	v_fma_f32 v43, -v37, v41, 1.0
	v_fma_f32 v34, -v40, v38, v34
	v_div_scale_f32 v40, null, v75, v75, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v38, -v44, v45, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v10, v75, v10
	v_div_fixup_f32 v23, v34, v75, v23
	v_div_fmas_f32 v35, v38, v35, v45
	v_mul_f32_e32 v39, v33, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v40, v43, 1.0
	v_div_fixup_f32 v24, v35, v75, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v47, -v37, v39, v33
	v_fma_f32 v35, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v11, v75, v11
	v_fmac_f32_e32 v39, v47, v41
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s3, v12, v75, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v75, v75, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v40, v45, v44
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v34, v43
	v_mul_f32_e32 v49, v42, v36
	v_rcp_f32_e32 v34, v37
	v_div_fixup_f32 v9, v33, v75, v9
	v_fma_f32 v38, -v46, v49, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v38, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v38, -v46, v49, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v75, v13
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v40, v45, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v41, v34
	v_div_scale_f32 v40, null, v75, v75, v14
	v_div_fmas_f32 v38, v38, v43, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v36, v75, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v75, v11
	v_div_scale_f32 v38, null, v75, v75, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v38
	v_mul_f32_e32 v39, v35, v50
	v_fma_f32 v36, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v48, v39, v35
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v43, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v48, v39, v35
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v75, v75, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v50, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v35, v75, v12
	v_fma_f32 v35, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v75, v75, v2
	v_div_scale_f32 v34, null, v75, v75, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v33, v75, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v75, v14
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v35, s1, v15, v75, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v33, s3, v16, v75, v16
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v75, v1
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v75, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	v_div_fmas_f32 v36, v36, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_fma_f32 v39, -v38, v40, v35
	v_mul_f32_e32 v42, v33, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v75, v14
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v75, v75, v3
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v48, v37
	v_rcp_f32_e32 v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v44, v40
	v_fma_f32 v33, -v43, v42, v33
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v50, 1.0
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v39, v50
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_scale_f32 v39, s1, v3, v75, v3
	v_div_scale_f32 v40, null, v75, v75, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v36, v39, v50
	v_div_fixup_f32 v16, v33, v75, v16
	v_div_fixup_f32 v1, v34, v75, v1
	v_div_fmas_f32 v37, v37, v47, v38
	v_div_scale_f32 v34, null, v75, v75, v5
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v37, v75, v2
	v_div_scale_f32 v37, null, v75, v75, v7
	v_fmac_f32_e32 v36, v41, v50
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v35, v75, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v44, null, v75, v75, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v48, s4, v7, v75, v7
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v75, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v48, v41
	v_div_fixup_f32 v3, v33, v75, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v36, 1.0
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v75, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v75, v5
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v75, v75, v6
	v_mul_f32_e32 v49, v33, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_rcp_f32_e32 v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v43, v47, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v34, v49, v33
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v75, v6
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fma_f32 v40, -v35, v51, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v75, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fmac_f32_e32 v51, v40, v39
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v75, v5
	v_fma_f32 v36, -v44, v53, v50
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v33, s61, v92
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v75, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s61, v85
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v75, v7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v85
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v75, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v35, v33, v85
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s61, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s61, s46
	s_mov_b32 s46, 0x7ffffffe
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v37, v33, v85, 2
	v_add_lshl_u32 v38, v33, v91, 2
	v_add_lshl_u32 v39, v33, v90, 2
	v_add_lshl_u32 v0, v33, v0, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s61, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v37, s[44:47], 0 offen
	buffer_store_b32 v26, v38, s[44:47], 0 offen
	buffer_store_b32 v27, v39, s[44:47], 0 offen
	v_add_lshl_u32 v25, v33, v89, 2
	v_add_lshl_u32 v26, v33, v88, 2
	v_add_lshl_u32 v27, v33, v87, 2
	v_add_lshl_u32 v37, v33, v86, 2
	v_add_lshl_u32 v38, v33, v84, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s61, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x4
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v37, s[44:47], 0 offen
	buffer_store_b32 v32, v38, s[44:47], 0 offen
	v_add_lshl_u32 v25, v33, v83, 2
	v_add_lshl_u32 v26, v33, v82, 2
	v_add_lshl_u32 v27, v33, v81, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v33, v80, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_lshl_u32 v29, v33, v79, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[44:47], 0 offen
	buffer_store_b32 v18, v26, s[44:47], 0 offen
	buffer_store_b32 v19, v27, s[44:47], 0 offen
	v_add_lshl_u32 v18, v33, v78, 2
	v_add_lshl_u32 v19, v33, v77, 2
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[44:47], 0 offen
	v_add_lshl_u32 v20, v33, v76, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[44:47], 0 offen
	v_add_lshl_u32 v17, v33, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[44:47], 0 offen
	buffer_store_b32 v24, v20, s[44:47], 0 offen
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[44:47], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v17, s[44:47], 0 offen
	buffer_store_b32 v14, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_lshl_u32 v11, v33, v36, 2
	v_add_nc_u32_e32 v12, 0xc8, v35
	v_add_nc_u32_e32 v13, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v11, s[44:47], 0 offen
	buffer_store_b32 v2, v12, s[44:47], 0 offen
	buffer_store_b32 v3, v13, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v35
	v_add_nc_u32_e32 v2, 0xe0, v35
	v_add_nc_u32_e32 v3, 0xe8, v35
	v_add_nc_u32_e32 v9, 0xf0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v9, s[44:47], 0 offen
	buffer_store_b32 v8, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp37:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 145
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 145
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9764
; TotalNumSgprs: 70
; NumVgprs: 145
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 70
; NumVGPRsForWavesPerEU: 145
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
    .vgpr_spill_count: 0
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
