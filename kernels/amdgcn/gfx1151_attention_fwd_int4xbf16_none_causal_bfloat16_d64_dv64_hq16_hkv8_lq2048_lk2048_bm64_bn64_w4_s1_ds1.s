	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s38, s[0:1], 0x60
	s_load_b32 s5, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v36, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v36
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v55, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 15, v0
	v_and_b32_e32 v52, 16, v0
	s_mov_b32 s7, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v37, 30, v55
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[41:42], null, s38, v5, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s38, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	v_cmp_eq_u32_e64 s19, 0, v52
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s38, s8, v[41:42]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v1
	ds_bpermute_b32 v39, v6, v2
	ds_bpermute_b32 v40, v6, v3
	ds_bpermute_b32 v46, v6, v4
	ds_bpermute_b32 v48, v7, v1
	ds_bpermute_b32 v49, v7, v2
	ds_bpermute_b32 v50, v7, v3
	ds_bpermute_b32 v47, v7, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v5, 48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v35, s6, v1
	.loc	1 810 48 is_stmt 1              ; attention.py:810:48
	s_add_i32 s6, s6, s5
	v_or_b32_e32 v54, s8, v1
	s_add_i32 s6, s6, 64
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v35
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s19
	v_cndmask_b32_e64 v3, 0x3276, v3, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 0x5040504, v2
	v_and_b32_e32 v53, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow107
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s37, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v58, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v54
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_load_b32 s0, s[0:1], 0x68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v44, v38, v48, s19
	v_cndmask_b32_e64 v48, v48, v38, s19
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 0x78, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v57, s5, v35
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v35, 7, v0
	v_dual_mov_b32 v5, 0x7632 :: v_dual_and_b32 v2, 24, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v3, 24, v37
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s6, 0x800
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 28
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v33, v1, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v43, v46, v47, s19
	v_cndmask_b32_e64 v42, v40, v50, s19
	v_cndmask_b32_e64 v45, v39, v49, s19
	v_cndmask_b32_e64 v47, v47, v46, s19
	v_cndmask_b32_e64 v46, v50, v40, s19
	v_cndmask_b32_e64 v49, v49, v39, s19
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v1, 0x7f0, v36
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 63
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v38
	v_lshl_or_b32 v89, v34, 5, v3
	v_cndmask_b32_e64 v34, 0x1054, v4, s19
	v_cndmask_b32_e64 v39, 0x3276, v5, s19
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v53, 0x410, v6
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v153, 0xff800000
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v36, 3, v35
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v40, 4, v35
	v_mul_u32_u24_e32 v58, 0x90, v35
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s5, 31
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s7, s1, 0xfff0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s7
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s37, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[50:51], null, s37, v37, v[36:37]
	v_lshl_or_b32 v34, v34, 8, v34
	v_lshl_or_b32 v36, v39, 8, v39
	v_xor_b32_e32 v37, v40, v38
	v_xor_b32_e32 v90, v58, v53
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s65, s5, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s5, s3, 0x10007
	v_xor_b32_e32 v88, v1, v2
	s_add_i32 s3, s3, s5
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v34, 0x540054, v34
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v36, 0x760076, v36
	s_bfe_i32 s3, s3, 0x80000
	v_lshl_or_b32 v91, v35, 10, v37
	v_xor_b32_e32 v116, 0x1030, v90
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s3, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	s_lshl_b32 s3, s3, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v70, 28, v55
	v_or_b32_e32 v71, 30, v55
	v_or_b32_e32 v72, 32, v55
	v_or_b32_e32 v73, 34, v55
	v_or_b32_e32 v74, 36, v55
	v_or_b32_e32 v75, 38, v55
	v_or_b32_e32 v76, 40, v55
	v_or_b32_e32 v77, 42, v55
	v_or_b32_e32 v78, 44, v55
	v_or_b32_e32 v79, 46, v55
	v_or_b32_e32 v80, 48, v55
	v_or_b32_e32 v81, 50, v55
	v_or_b32_e32 v82, 52, v55
	v_or_b32_e32 v83, 54, v55
	v_or_b32_e32 v84, 56, v55
	v_or_b32_e32 v85, 58, v55
	v_or_b32_e32 v86, 60, v55
	v_or_b32_e32 v87, 62, v55
	v_xor_b32_e32 v92, 8, v88
	v_xor_b32_e32 v93, 8, v89
	v_xor_b32_e32 v94, 16, v89
	v_xor_b32_e32 v95, 24, v89
	v_xor_b32_e32 v35, 16, v90
	v_xor_b32_e32 v37, 32, v90
	v_xor_b32_e32 v38, 48, v90
	v_xor_b32_e32 v39, 64, v90
	v_xor_b32_e32 v40, 0x50, v90
	v_xor_b32_e32 v51, 0x60, v90
	v_xor_b32_e32 v53, 0x70, v90
	v_xor_b32_e32 v58, 0x820, v90
	v_xor_b32_e32 v104, 0x830, v90
	v_xor_b32_e32 v105, 0x810, v90
	v_xor_b32_e32 v106, 0x860, v90
	v_xor_b32_e32 v107, 0x870, v90
	v_xor_b32_e32 v108, 0x840, v90
	v_xor_b32_e32 v109, 0x850, v90
	v_xor_b32_e32 v110, 0x1040, v90
	v_xor_b32_e32 v111, 0x1050, v90
	v_xor_b32_e32 v112, 0x1060, v90
	v_xor_b32_e32 v113, 0x1070, v90
	v_xor_b32_e32 v114, 0x1010, v90
	v_xor_b32_e32 v115, 0x1020, v90
	v_xor_b32_e32 v117, 0x1860, v90
	v_xor_b32_e32 v118, 0x1870, v90
	v_xor_b32_e32 v119, 0x1840, v90
	v_xor_b32_e32 v120, 0x1850, v90
	v_xor_b32_e32 v121, 0x1820, v90
	v_xor_b32_e32 v122, 0x1830, v90
	v_xor_b32_e32 v123, 0x1810, v90
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v36, v36, 4, v36
	v_xor_b32_e32 v142, 0x90, v91
	v_xor_b32_e32 v143, 0x120, v91
	v_xor_b32_e32 v144, 0x1b0, v91
	v_xor_b32_e32 v146, 0x240, v91
	v_xor_b32_e32 v147, 0x2d0, v91
	v_xor_b32_e32 v148, 0x360, v91
	v_xor_b32_e32 v149, 0x3f0, v91
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s1, s1, 0xffffc000
	s_and_b32 s66, s3, 0xfffff800
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, 2, v55
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s66, s66, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 4, v55
	v_or_b32_e32 v59, 6, v55
	v_or_b32_e32 v60, 8, v55
	v_or_b32_e32 v61, 10, v55
	v_or_b32_e32 v62, 12, v55
	v_or_b32_e32 v63, 14, v55
	v_or_b32_e32 v64, 16, v55
	v_or_b32_e32 v65, 18, v55
	v_or_b32_e32 v66, 20, v55
	v_or_b32_e32 v67, 22, v55
	v_or_b32_e32 v68, 24, v55
	v_or_b32_e32 v69, 26, v55
	v_mov_b32_e32 v18, v17
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v92, 0, v92
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v93, 0, v93
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v96, 0, v35
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v95, 0, v95
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v98, 0, v38
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v97, 0, v37
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v100, 0, v40
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v99, 0, v39
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v102, 0, v53
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v101, 0, v51
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v104, 0, v104
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v103, 0, v58
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v106, 0, v106
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v105, 0, v105
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v108, 0, v108
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v107, 0, v107
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v110, 0, v110
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v109, 0, v109
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v112, 0, v112
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v111, 0, v111
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v114, 0, v114
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v113, 0, v113
	v_dual_mov_b32 v58, v17 :: v_dual_add_nc_u32 v119, 0, v119
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v123, 0, v123
	v_or_b32_e32 v124, s66, v70
	v_or_b32_e32 v125, s66, v71
	v_or_b32_e32 v126, s66, v72
	v_or_b32_e32 v127, s66, v73
	v_or_b32_e32 v128, s66, v74
	v_or_b32_e32 v129, s66, v75
	v_or_b32_e32 v130, s66, v76
	v_or_b32_e32 v131, s66, v77
	v_or_b32_e32 v132, s66, v78
	v_or_b32_e32 v133, s66, v79
	v_or_b32_e32 v134, s66, v80
	v_or_b32_e32 v135, s66, v81
	v_or_b32_e32 v136, s66, v82
	v_or_b32_e32 v137, s66, v83
	v_or_b32_e32 v138, s66, v84
	v_or_b32_e32 v139, s66, v85
	v_or_b32_e32 v140, s66, v86
	v_or_b32_e32 v141, s66, v87
	v_and_b32_e32 v51, 0x5040504, v34
	v_and_b32_e32 v53, 0x7060706, v36
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v148, 0, v148
	v_add_nc_u32_e32 v149, 0, v149
	s_mov_b32 s40, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s39, s37, 1
	s_mul_i32 s50, s37, 3
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s64, s40
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s65, s65, 63
	s_and_b32 s61, s11, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s60, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s57, s15
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v145, s0, v33 :: v_dual_add_nc_u32 v116, 0, v116
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v117, 0, v117
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v151, v145 :: v_dual_add_nc_u32 v118, 0, v118
	v_mov_b32_e32 v150, v145
	v_mov_b32_e32 v152, v145
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s64, s66
	v_or_b32_e32 v162, s66, v56
	v_mad_u64_u32 v[223:224], null, s0, s38, v[41:42]
	v_or_b32_e32 v163, s66, v0
	v_or_b32_e32 v164, s66, v59
	v_or_b32_e32 v165, s66, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v229, v162, s64, 1
	v_mad_u64_u32 v[224:225], null, s0, s37, v[50:51]
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v162, 0x80000000, v223, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v230, v163, s64, 1
	v_add_lshl_u32 v231, v164, s64, 1
	v_add_lshl_u32 v232, v165, s64, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_add_nc_u32 v154, 0, v88
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[162:165], v162, s[52:55], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s41 :: v_dual_add_nc_u32 v155, 0, v89
	v_or_b32_e32 v166, s66, v61
	v_or_b32_e32 v167, s66, v62
	v_or_b32_e32 v168, s66, v63
	v_or_b32_e32 v169, s66, v64
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v205, s64, v68
	v_or_b32_e32 v206, s64, v67
	v_or_b32_e32 v207, s64, v66
	v_or_b32_e32 v208, s64, v65
	v_or_b32_e32 v221, s64, v84
	v_or_b32_e32 v222, s64, v83
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v233, v166, s64, 1
	v_add_lshl_u32 v234, v167, s64, 1
	v_add_lshl_u32 v235, v168, s64, 1
	v_add_lshl_u32 v236, v169, s64, 1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v205, v57
	v_cmp_le_i32_e64 s24, v206, v57
	v_cmp_le_i32_e64 s25, v207, v57
	v_cmp_le_i32_e64 s27, v208, v57
	v_cmp_le_i32_e64 s36, v221, v57
	v_cmp_le_i32_e64 s18, v222, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v167, v224, s37, 1
	v_lshlrev_b32_e32 v166, 1, v224
	v_add_lshl_u32 v168, v224, s39, 1
	v_add_lshl_u32 v169, v224, s50, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v36, s43
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v38, s45
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v40, s47
	v_or_b32_e32 v189, s66, v68
	v_or_b32_e32 v190, s66, v69
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v191, s64, v82
	v_or_b32_e32 v192, s64, v81
	v_or_b32_e32 v193, s64, v80
	v_or_b32_e32 v194, s64, v79
	v_or_b32_e32 v195, s64, v78
	v_or_b32_e32 v196, s64, v77
	v_or_b32_e32 v197, s64, v76
	v_or_b32_e32 v198, s64, v75
	v_or_b32_e32 v199, s64, v74
	v_or_b32_e32 v200, s64, v73
	v_or_b32_e32 v201, s64, v72
	v_or_b32_e32 v202, s64, v71
	v_or_b32_e32 v203, s64, v70
	v_or_b32_e32 v204, s64, v69
	v_or_b32_e32 v209, s64, v64
	v_or_b32_e32 v210, s64, v63
	v_or_b32_e32 v211, s64, v62
	v_or_b32_e32 v212, s64, v61
	v_or_b32_e32 v213, s64, v60
	v_or_b32_e32 v214, s64, v59
	v_or_b32_e32 v215, s64, v0
	v_or_b32_e32 v216, s64, v56
	v_or_b32_e32 v217, s64, v55
	v_or_b32_e32 v218, s64, v87
	v_or_b32_e32 v219, s64, v86
	v_or_b32_e32 v220, s64, v85
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v161, 0, v90
	v_cndmask_b32_e32 v241, 0x80000000, v167, vcc_lo
	v_dual_cndmask_b32 v240, 0x80000000, v166 :: v_dual_add_nc_u32 v173, 0, v91
	v_dual_cndmask_b32 v166, 0x80000000, v168 :: v_dual_cndmask_b32 v167, 0x80000000, v169
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v238, v189, s64, 1
	v_add_lshl_u32 v239, v190, s64, 1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v191, v57
	v_cmp_le_i32_e64 s3, v192, v57
	v_cmp_le_i32_e64 s1, v193, v57
	v_cmp_le_i32_e64 s5, v194, v57
	v_cmp_le_i32_e64 s6, v195, v57
	v_cmp_le_i32_e64 s7, v196, v57
	v_cmp_le_i32_e64 s9, v197, v57
	v_cmp_le_i32_e64 s10, v198, v57
	v_cmp_le_i32_e64 s11, v199, v57
	v_cmp_le_i32_e64 s12, v200, v57
	v_cmp_le_i32_e64 s13, v201, v57
	v_cmp_le_i32_e64 s20, v202, v57
	v_cmp_le_i32_e64 s22, v203, v57
	v_cmp_le_i32_e64 s21, v204, v57
	v_cmp_le_i32_e64 s14, v209, v57
	v_cmp_le_i32_e64 s26, v210, v57
	v_cmp_le_i32_e64 s33, v211, v57
	v_cmp_le_i32_e64 s29, v212, v57
	v_cmp_le_i32_e64 s28, v213, v57
	v_cmp_le_i32_e64 s30, v214, v57
	v_cmp_le_i32_e64 s31, v215, v57
	v_cmp_le_i32_e64 s34, v216, v57
	v_cmp_le_i32_e64 s35, v217, v57
	v_cmp_le_i32_e64 s15, v218, v57
	v_cmp_le_i32_e64 s17, v219, v57
	v_cmp_le_i32_e64 s16, v220, v57
	v_or_b32_e32 v156, s66, v55
	v_or_b32_e32 v170, s66, v65
	v_or_b32_e32 v171, s66, v66
	v_or_b32_e32 v172, s66, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v158, v128, s64, 1
	v_add_lshl_u32 v159, v129, s64, 1
	v_add_lshl_u32 v160, v130, s64, 1
	v_add_lshl_u32 v174, v131, s64, 1
	v_add_lshl_u32 v175, v132, s64, 1
	v_add_lshl_u32 v176, v133, s64, 1
	v_add_lshl_u32 v177, v134, s64, 1
	v_add_lshl_u32 v183, v135, s64, 1
	v_add_lshl_u32 v185, v136, s64, 1
	v_add_lshl_u32 v184, v124, s64, 1
	v_add_lshl_u32 v188, v125, s64, 1
	v_add_lshl_u32 v186, v126, s64, 1
	v_add_lshl_u32 v187, v127, s64, 1
	v_add_lshl_u32 v179, v137, s64, 1
	v_add_lshl_u32 v180, v138, s64, 1
	v_add_lshl_u32 v178, v139, s64, 1
	v_add_lshl_u32 v181, v140, s64, 1
	v_add_lshl_u32 v182, v141, s64, 1
	v_add_lshl_u32 v156, v156, s64, 1
	v_add_lshl_u32 v170, v170, s64, 1
	v_add_lshl_u32 v171, v171, s64, 1
	v_add_lshl_u32 v237, v172, s64, 1
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s0, s2, s0
	s_and_b32 s1, s2, s1
	s_and_b32 s5, s2, s5
	s_and_b32 s8, s2, s7
	s_and_b32 s9, s2, s9
	s_and_b32 s7, s2, s3
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s3, s2, s20
	s_and_b32 s20, s2, s21
	s_and_b32 s21, s2, s23
	s_and_b32 s23, s2, s24
	s_and_b32 s24, s2, s25
	s_and_b32 s25, s2, s27
	s_and_b32 s22, s2, s22
	s_and_b32 s27, s2, s28
	s_and_b32 s28, s2, s30
	s_and_b32 s34, s2, s34
	s_and_b32 s35, s2, s35
	s_and_b32 s30, s2, s29
	s_and_b32 s29, s2, s26
	s_and_b32 s26, s2, s14
	s_and_b32 s14, s2, s15
	s_and_b32 s17, s2, s17
	s_and_b32 s6, s2, s6
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s31, s2, s31
	s_and_b32 s33, s2, s33
	s_and_b32 s15, s2, s16
	s_and_b32 s16, s2, s36
	s_and_b32 s18, s2, s18
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s36, 0xff800000, v153
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v157.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s64, s64, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v154, v[162:163]
	ds_store_b64 v92, v[164:165]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[221:224], v155 offset1:1
	ds_load_2addr_stride64_b64 v[205:208], v155 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[225:228], v93 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[217:220], v166, s[60:63], 0 offen
	buffer_load_b128 v[213:216], v167, s[60:63], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v157.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s64, s65
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[221:222], v[48:49], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[207:208], v[48:49], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[205:206], v[48:49], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[223:224], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v93 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v94 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[227:228], v[46:47], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[225:226], v[46:47], v[197:204] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[221:224], v240, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[33:34], v[46:47], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[35:36], v[46:47], v[205:212] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v94 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[39:40], v[44:45], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[37:38], v[44:45], v[197:204] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v95 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[33:34], v[44:45], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[35:36], v[44:45], v[205:212] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v95 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[37:38], v[42:43], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[39:40], v[42:43], v[205:212] neg_lo:[1,1,0]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v157.h
	v_mov_b16_e64 v38.h, v157.h
	v_mov_b16_e64 v39.h, v157.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v162
	v_cvt_f32_i32_e32 v154, v163
	v_cvt_f32_i32_e32 v155, v165
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v163, v168
	v_cvt_f32_i32_e32 v164, v169
	v_cvt_f32_i32_e32 v165, v166
	v_cvt_f32_i32_e32 v166, v167
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[35:36], v[42:43], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[33:34], v[42:43], v[197:204] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v206, v145, v206 :: v_dual_mul_f32 v207, v150, v207
	v_cvt_f32_i32_e32 v212, v212
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v189
	v_cvt_f32_i32_e32 v168, v190
	v_cvt_f32_i32_e32 v169, v192
	v_cvt_f32_i32_e32 v228, v191
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[189:192], v241, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v225, v195
	v_cvt_f32_i32_e32 v226, v194
	v_cvt_f32_i32_e32 v227, v196
	v_cvt_f32_i32_e32 v240, v197
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v203, v203
	v_mul_f32_e32 v200, v150, v200
	v_cvt_f32_i32_e32 v204, v204
	v_dual_mul_f32 v199, v145, v199 :: v_dual_mul_f32 v202, v152, v202
	v_mul_f32_e32 v167, v151, v167
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v201, v151, v201 :: v_dual_mul_f32 v204, v150, v204
	v_dual_mul_f32 v203, v145, v203 :: v_dual_mul_f32 v168, v152, v168
	v_mul_f32_e32 v228, v151, v228
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v211, v211
	v_dual_mul_f32 v208, v151, v208 :: v_dual_mul_f32 v209, v152, v209
	v_mul_f32_e32 v212, v151, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v210, v145, v210 :: v_dual_mul_f32 v155, v152, v155
	v_mul_f32_e32 v211, v150, v211
	v_cvt_f32_i32_e32 v198, v198
	v_mul_f32_e32 v165, v145, v165
	v_cvt_f32_i32_e32 v205, v205
	v_mul_f32_e32 v154, v150, v154
	v_cvt_f32_i32_e32 v193, v193
	v_mul_f32_e32 v198, v150, v198
	v_mul_f32_e32 v40, v145, v40
	v_dual_mul_f32 v205, v145, v205 :: v_dual_mul_f32 v162, v151, v162
	v_dual_mul_f32 v169, v145, v169 :: v_dual_mul_f32 v166, v150, v166
	v_mul_f32_e32 v225, v152, v225
	v_dual_mul_f32 v193, v150, v193 :: v_dual_mul_f32 v226, v151, v226
	v_mul_f32_e32 v227, v152, v227
	v_mul_f32_e32 v163, v151, v163
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v34.l, v217.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v34.h, v213.l
	v_mov_b16_e64 v213.l, v217.h
	v_mov_b16_e64 v36.l, v218.l
	v_mov_b16_e64 v36.h, v214.l
	v_mov_b16_e64 v214.l, v218.h
	v_mov_b16_e64 v195.l, v219.l
	v_mov_b16_e64 v195.h, v215.l
	v_mov_b16_e64 v197.h, v216.l
	v_mov_b16_e64 v216.l, v220.h
	v_mov_b16_e64 v215.l, v219.h
	v_mov_b16_e64 v197.l, v220.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v33.l, v221.l
	v_mov_b16_e64 v35.l, v222.l
	v_mov_b16_e64 v194.l, v223.l
	v_mov_b16_e64 v196.l, v224.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v33.h, v189.l
	v_mov_b16_e64 v189.l, v221.h
	v_mov_b16_e64 v35.h, v190.l
	v_mov_b16_e64 v190.l, v222.h
	v_mov_b16_e64 v194.h, v191.l
	v_mov_b16_e64 v191.l, v223.h
	v_mov_b16_e64 v196.h, v192.l
	v_mov_b16_e64 v192.l, v224.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v158, v158, s[56:59], 0 offen
	buffer_load_u16 v159, v159, s[56:59], 0 offen
	buffer_load_u16 v160, v160, s[56:59], 0 offen
	buffer_load_u16 v174, v174, s[56:59], 0 offen
	buffer_load_u16 v175, v175, s[56:59], 0 offen
	buffer_load_u16 v176, v176, s[56:59], 0 offen
	buffer_load_u16 v177, v177, s[56:59], 0 offen
	buffer_load_u16 v183, v183, s[56:59], 0 offen
	buffer_load_u16 v185, v185, s[56:59], 0 offen
	buffer_load_u16 v170, v170, s[56:59], 0 offen
	buffer_load_u16 v171, v171, s[56:59], 0 offen
	buffer_load_u16 v217, v237, s[56:59], 0 offen
	buffer_load_u16 v218, v238, s[56:59], 0 offen
	buffer_load_u16 v188, v188, s[56:59], 0 offen
	buffer_load_u16 v219, v239, s[56:59], 0 offen
	buffer_load_u16 v184, v184, s[56:59], 0 offen
	buffer_load_u16 v186, v186, s[56:59], 0 offen
	buffer_load_u16 v187, v187, s[56:59], 0 offen
	buffer_load_u16 v156, v156, s[56:59], 0 offen
	buffer_load_u16 v220, v229, s[56:59], 0 offen
	buffer_load_u16 v221, v231, s[56:59], 0 offen
	buffer_load_u16 v222, v235, s[56:59], 0 offen
	buffer_load_u16 v223, v232, s[56:59], 0 offen
	buffer_load_u16 v224, v233, s[56:59], 0 offen
	buffer_load_u16 v229, v230, s[56:59], 0 offen
	buffer_load_u16 v230, v234, s[56:59], 0 offen
	buffer_load_u16 v231, v236, s[56:59], 0 offen
	buffer_load_u16 v179, v179, s[56:59], 0 offen
	buffer_load_u16 v180, v180, s[56:59], 0 offen
	buffer_load_u16 v181, v181, s[56:59], 0 offen
	buffer_load_u16 v182, v182, s[56:59], 0 offen
	buffer_load_u16 v178, v178, s[56:59], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v152, v164
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v173, v[33:34]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v232, v152, v240
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v237.h, v157.h
	v_mov_b16_e64 v239.h, v157.h
	v_mov_b16_e64 v234.h, v157.h
	v_mov_b16_e64 v235.h, v157.h
	v_mov_b16_e64 v236.h, v157.h
	v_mov_b16_e64 v238.h, v157.h
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v34, v200, v159 :: v_dual_lshlrev_b32 v177, 16, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v159, v201, v160 :: v_dual_lshlrev_b32 v174, 16, v174
	v_mul_f32_e32 v33, v199, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v167, v167, v177 :: v_dual_lshlrev_b32 v176, 16, v176
	v_mul_f32_e32 v173, v202, v174
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v160, v204, v176 :: v_dual_lshlrev_b32 v185, 16, v185
	v_mul_f32_e32 v158, v203, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v171, v207, v171 :: v_dual_mul_f32 v170, v206, v170
	v_mul_f32_e32 v174, v228, v185
	s_waitcnt vmcnt(20)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v168, v168, v183 :: v_dual_lshlrev_b32 v217, 16, v217
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v218, 16, v218
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v158, s6
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v177, v208, v217 :: v_dual_lshlrev_b32 v188, 16, v188
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v183, v209, v218
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v219, 16, v219
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v224, 16, v224
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v212, v188
	v_dual_mul_f32 v175, v210, v219 :: v_dual_lshlrev_b32 v186, 16, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v182, 16, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v212, v189 :: v_dual_mul_f32 v185, v232, v186
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v184, v211, v184 :: v_dual_lshlrev_b32 v187, 16, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v221, 16, v221
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v175, s20
	v_cndmask_b32_e64 v176, 0xff800000, v176, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v186, v198, v187
	v_dual_mul_f32 v188, v155, v221 :: v_dual_lshlrev_b32 v223, 16, v223
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v220, 16, v220
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v167, s1
	v_cndmask_b32_e64 v177, 0xff800000, v177, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v201, v165, v223 :: v_dual_lshlrev_b32 v230, 16, v230
	v_mul_f32_e32 v187, v154, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v168, s7
	v_cndmask_b32_e64 v165, 0xff800000, v185, s13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v199, v163, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, v40, v156 :: v_dual_lshlrev_b32 v229, 16, v229
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v231, 16, v231
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v160, s5
	v_cndmask_b32_e64 v160, 0xff800000, v159, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v198, v162, v229
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v203, v205, v231 :: v_dual_lshlrev_b32 v222, 16, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v205, v226, v178
	v_dual_mul_f32 v202, v166, v224 :: v_dual_lshlrev_b32 v181, 16, v181
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v200, v164, v222
	v_mul_f32_e32 v204, v169, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v189, v225, v181
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v173, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v169, v193, v180
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v193, v216 :: v_dual_mul_f32 v182, v227, v182
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v174, s0
	v_cndmask_b32_e64 v174, 0xff800000, v184, s22
	v_cndmask_b32_e64 v166, 0xff800000, v186, s12
	v_cndmask_b32_e64 v179, 0xff800000, v171, s24
	v_cndmask_b32_e64 v180, 0xff800000, v170, s25
	v_cndmask_b32_e64 v178, 0xff800000, v183, s21
	v_cndmask_b32_e64 v173, 0xff800000, v202, s30
	v_cndmask_b32_e64 v216, 0xff800000, v201, s27
	v_cndmask_b32_e64 v217, 0xff800000, v187, s34
	v_cndmask_b32_e64 v40, 0xff800000, v40, s35
	v_cndmask_b32_e64 v218, 0xff800000, v188, s28
	v_cndmask_b32_e64 v167, 0xff800000, v189, s17
	v_cndmask_b32_e64 v168, 0xff800000, v182, s14
	v_cndmask_b32_e64 v163, 0xff800000, v34, s10
	v_cndmask_b32_e64 v164, 0xff800000, v33, s11
	v_cndmask_b32_e64 v219, 0xff800000, v198, s31
	v_cndmask_b32_e64 v181, 0xff800000, v203, s26
	v_cndmask_b32_e64 v220, 0xff800000, v200, s29
	v_cndmask_b32_e64 v221, 0xff800000, v199, s33
	v_cndmask_b32_e64 v169, 0xff800000, v169, s16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v182, v180, v179, v177
	v_max3_f32 v183, v178, v175, v174
	v_max_f32_e32 v184, v40, v217
	v_max3_f32 v185, v218, v216, v173
	v_max_f32_e32 v187, v167, v168
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v142, v[212:213]
	ds_store_b64 v143, v[35:36]
	v_mov_b32_e32 v213, v190
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v204, s18
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v176, v165, v166
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v205, s15
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v144, v[213:214]
	ds_store_b64 v146, v[194:195]
	v_mov_b32_e32 v214, v191
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v164, v163, v160
	v_max3_f32 v34, v162, v158, v156
	v_max3_f32 v35, v155, v154, v159
	v_max3_f32 v222, v221, v220, v181
	v_max_f32_e32 v186, v171, v169
	v_max3_f32 v182, v182, v183, v36
	v_max3_f32 v223, v184, v219, v185
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v147, v[214:215]
	ds_store_b64 v148, v[196:197]
	ds_store_b64 v149, v[192:193]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v215, v33, v34, v35
	v_max3_f32 v224, v186, v170, v187
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v182, v223, v222, v182
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[183:186], v103
	ds_load_b128 v[191:194], v110
	ds_load_b128 v[195:198], v111
	ds_load_b128 v[203:206], v96
	ds_load_b128 v[33:36], v97
	ds_load_b128 v[199:202], v161
	ds_load_b128 v[207:210], v161 offset:2048
	ds_load_b128 v[187:190], v104
	ds_load_b128 v[211:214], v105
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v182, v182, v215, v224
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[223:226], v116
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v215, v182, s51, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v182, v153, v182, v215
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v215, v217, v182
	v_sub_f32_e32 v217, v219, v182
	v_sub_f32_e32 v173, v173, v182
	v_sub_f32_e32 v219, v221, v182
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v221, v153, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v215, v215
	v_exp_f32_e32 v217, v217
	v_exp_f32_e32 v173, v173
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v179, v179, v182
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v221, v221
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v180, v180, v182
	v_sub_f32_e32 v177, v177, v182
	v_sub_f32_e32 v175, v175, v182
	v_sub_f32_e32 v178, v178, v182
	v_sub_f32_e32 v174, v174, v182
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v215, s34
	v_cndmask_b32_e64 v228, 0, v217, s31
	v_cndmask_b32_e64 v231, 0, v173, s30
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v156, v182
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v173, 0, v221, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v216, v216, v182
	v_sub_f32_e32 v40, v40, v182
	v_sub_f32_e32 v218, v218, v182
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v153.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v216, v216
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v218, v218
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v219, v219
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.l, v228.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v228, v228
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v230, 0, v216, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v227, 0, v40, s35
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v27, v27, v173 :: v_dual_and_b32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.l, v230.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v220, v220, v182
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v229, 0, v218, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v172.l, v227.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v232, 0, v219, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v220, v220
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v227, v227
	v_and_b32_e32 v40, 1, v172
	v_and_b32_e32 v172, 1, v157
	v_mov_b16_e64 v157.l, v229.h
	v_mov_b16_e64 v39.l, v232.h
	v_cmp_o_f32_e64 s33, v230, v230
	v_add3_u32 v40, v227, v40, 0x7fff
	v_add3_u32 v172, v153, v172, 0x7fff
	v_and_b32_e32 v215, 1, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v233, 0, v220, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v231.h
	v_cndmask_b16 v172.l, 0x7fff, v40.h, s28
	v_cmp_o_f32_e64 s29, v229, v229
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v173 :: v_dual_and_b32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v157
	v_mov_b16_e64 v157.l, v233.h
	v_add3_u32 v38, v228, v38, 0x7fff
	v_add3_u32 v37, v230, v37, 0x7fff
	v_add3_u32 v215, v229, v215, 0x7fff
	v_cmp_o_f32_e64 s31, v231, v231
	v_and_b32_e32 v216, 1, v157
	v_cmp_o_f32_e64 s34, v233, v233
	v_cmp_o_f32_e64 s35, v232, v232
	v_add3_u32 v39, v232, v39, 0x7fff
	v_cndmask_b16 v172.h, 0x7fff, v172.h, s27
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s30
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s33
	v_cndmask_b16 v37.h, 0x7fff, v215.h, s29
	v_add3_u32 v40, v231, v40, 0x7fff
	v_add3_u32 v218, v233, v216, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s35
	v_permlanex16_b32 v217, v172, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v219, v37, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s31
	v_cndmask_b16 v39.h, 0x7fff, v218.h, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v215, v217, v172, v51
	v_perm_b32 v216, v217, v172, v53
	v_perm_b32 v217, v219, v37, v51
	v_permlanex16_b32 v40, v38, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v218, v219, v37, v53
	v_permlanex16_b32 v37, v39, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v173
	v_mul_f32_e32 v29, v29, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v219, v40, v38, v51
	v_perm_b32 v220, v40, v38, v53
	v_perm_b32 v221, v37, v39, v51
	v_perm_b32 v222, v37, v39, v53
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v173
	v_mul_f32_e32 v31, v31, v173
	v_dual_mul_f32 v32, v32, v173 :: v_dual_sub_f32 v155, v155, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v173
	v_mul_f32_e32 v2, v2, v173
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[183:190], v[215:222], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[183:186], v117
	ds_load_b128 v[187:190], v118
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v173
	v_mul_f32_e32 v4, v4, v173
	v_dual_mul_f32 v5, v5, v173 :: v_dual_sub_f32 v160, v160, v182
	v_mul_f32_e32 v6, v6, v173
	v_dual_mul_f32 v7, v7, v173 :: v_dual_sub_f32 v162, v162, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s5
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v173
	v_mul_f32_e32 v17, v17, v173
	v_mul_f32_e32 v20, v20, v173
	v_dual_mul_f32 v24, v24, v173 :: v_dual_sub_f32 v181, v181, v182
	v_dual_mul_f32 v9, v9, v173 :: v_dual_sub_f32 v176, v176, v182
	v_dual_mul_f32 v10, v10, v173 :: v_dual_sub_f32 v159, v159, v182
	v_mul_f32_e32 v12, v12, v173
	v_mul_f32_e32 v14, v14, v173
	v_mul_f32_e32 v15, v15, v173
	v_mul_f32_e32 v16, v16, v173
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[183:190], v[215:222], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v172.h, v157.h
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.h, v157.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[199:206], v[215:222], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v174, v174
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[191:198], v[215:222], v[9:16]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v217, 0, v179, s24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v175, v175
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v184.h, v157.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v219, 0, v178, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.l, v217.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v216, 0, v180, s25
	v_cndmask_b32_e64 v221, 0, v174, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v184.l, v219.h
	v_and_b32_e32 v174, 1, v183
	v_mov_b16_e64 v185.h, v157.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v215, 0, v181, s26
	v_cndmask_b32_e64 v218, 0, v177, s23
	v_cndmask_b32_e64 v220, 0, v175, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v217, v217
	v_mov_b16_e64 v185.l, v221.h
	v_and_b32_e32 v175, 1, v184
	v_add3_u32 v174, v217, v174, 0x7fff
	v_mov_b16_e64 v157.l, v216.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v222, 0, v176, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v215.h
	v_cmp_o_f32_e64 s24, v219, v219
	v_and_b32_e32 v176, 1, v185
	v_add3_u32 v175, v219, v175, 0x7fff
	v_cndmask_b16 v177.l, 0x7fff, v174.h, s22
	v_and_b32_e32 v174, 1, v157
	v_mov_b16_e64 v157.l, v218.h
	v_cmp_o_f32_e64 s26, v221, v221
	v_and_b32_e32 v172, 1, v172
	v_add3_u32 v176, v221, v176, 0x7fff
	v_cndmask_b16 v179.l, 0x7fff, v175.h, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v158, v158, v182 :: v_dual_and_b32 v175, 1, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v220.h
	v_cmp_o_f32_e64 s3, v216, v216
	v_cmp_o_f32_e64 s20, v215, v215
	v_add3_u32 v172, v215, v172, 0x7fff
	v_cndmask_b16 v181.l, 0x7fff, v176.h, s26
	v_add3_u32 v174, v216, v174, 0x7fff
	v_and_b32_e32 v176, 1, v157
	v_mov_b16_e64 v157.l, v222.h
	v_cmp_o_f32_e64 s21, v218, v218
	v_cndmask_b16 v172.l, 0x7fff, v172.h, s20
	v_cndmask_b16 v172.h, 0x7fff, v174.h, s3
	v_add3_u32 v174, v218, v175, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v154, v154, v182 :: v_dual_and_b32 v175, 1, v157
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[37:40], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v220, v220
	v_cmp_o_f32_e64 s25, v222, v222
	v_add3_u32 v176, v220, v176, 0x7fff
	v_cndmask_b16 v177.h, 0x7fff, v174.h, s21
	v_add3_u32 v180, v222, v175, 0x7fff
	v_permlanex16_b32 v178, v172, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[191:194], v119
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v179.h, 0x7fff, v176.h, s23
	v_permlanex16_b32 v183, v177, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v181.h, 0x7fff, v180.h, s25
	v_perm_b32 v174, v178, v172, v51
	v_perm_b32 v175, v178, v172, v53
	v_permlanex16_b32 v172, v179, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v176, v183, v177, v51
	v_perm_b32 v177, v183, v177, v53
	v_permlanex16_b32 v183, v181, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v178, v172, v179, v51
	v_perm_b32 v179, v172, v179, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v180, v183, v181, v51
	v_perm_b32 v181, v183, v181, v53
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[183:186], v99
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v154, v154
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[174:181], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v112
	ds_load_b128 v[37:40], v113
	ds_load_b128 v[195:198], v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[207:214], v[174:181], v[25:32]
	v_mov_b32_e32 v172, v58
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v58.h, v157.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[203:206], v161 offset:4096
	ds_load_b128 v[199:202], v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s1
	v_cndmask_b32_e64 v154, 0, v154, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v237.l, v155.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[174:181], v[9:16]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v38, v165, v182
	v_sub_f32_e32 v39, v166, v182
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v227, v153
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v163, v182
	v_sub_f32_e32 v163, v171, v182
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v164, v182
	v_sub_f32_e32 v164, v169, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v170, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v164, v164
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[33:36], v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v39, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v167, v182
	v_sub_f32_e32 v167, v168, v182
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v38, s13
	v_cndmask_b32_e64 v240, 0, v163, s18
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[191:198], v[174:181], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v153, s10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v167, v167
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v168, v169
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v160, s9
	v_cndmask_b32_e64 v192, 0, v162, s8
	v_cndmask_b32_e64 v193, 0, v158, s6
	v_cndmask_b32_e64 v211, 0, v164, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v191.h, v157.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v40, s11
	v_cndmask_b32_e64 v194, 0, v159, s0
	v_cndmask_b32_e64 v241, 0, v165, s15
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v219, v220
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v166, s17
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v153, v192
	v_add_f32_e32 v207, v193, v156
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v211.h
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v221, v222
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v191.l, v166.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s14
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v230, v231
	v_add_f32_e32 v159, v217, v218
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v208, v155, v154 :: v_dual_and_b32 v191, 1, v191
	v_add_f32_e32 v209, v194, v240
	v_add_f32_e32 v158, v215, v216
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v58.l, v168.h
	v_mov_b16_e64 v234.l, v170.h
	v_mov_b16_e64 v235.l, v153.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v232, v233
	v_dual_add_f32 v232, v165, v207 :: v_dual_and_b32 v215, 1, v237
	v_dual_add_f32 v230, v160, v162 :: v_dual_and_b32 v217, 1, v239
	v_add_f32_e32 v164, v170, v171
	v_add_f32_e32 v38, v228, v229
	v_add_f32_e32 v210, v211, v241
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v231, v163, v164 :: v_dual_and_b32 v212, 1, v234
	v_add_f32_e32 v227, v37, v38
	v_add_f32_e32 v37, v166, v167
	v_dual_add_f32 v228, v39, v40 :: v_dual_and_b32 v213, 1, v235
	v_add_f32_e32 v233, v208, v209
	v_add_f32_e32 v229, v158, v159
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v168, v168
	v_cmp_o_f32_e64 s1, v170, v170
	v_cmp_o_f32_e64 s3, v153, v153
	v_add3_u32 v58, v168, v58, 0x7fff
	v_add3_u32 v168, v170, v212, 0x7fff
	v_add3_u32 v170, v153, v213, 0x7fff
	v_mov_b32_e32 v153, v182
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v242, v210, v37
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v166, v166
	v_add3_u32 v166, v166, v191, 0x7fff
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v227, v228
	v_add_f32_e32 v227, v231, v232
	v_add_f32_e32 v191, v229, v230
	v_add_f32_e32 v228, v233, v242
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v155, v155
	v_add3_u32 v155, v155, v215, 0x7fff
	v_cndmask_b16 v155.l, 0x7fff, v58.h, s0
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v182, v191
	v_add_f32_e32 v182, v227, v228
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v169.h
	v_cmp_o_f32_e64 s10, v169, v169
	v_mov_b16_e64 v236.l, v193.h
	v_cmp_o_f32_e64 s11, v171, v171
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v58, v182
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v191.l, 0x7fff, v155.h, s6
	v_cndmask_b16 v235.l, 0x7fff, v166.h, s9
	v_and_b32_e32 v214, 1, v236
	v_cmp_o_f32_e64 s5, v193, v193
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v182, v58, s51, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v192, v192
	v_cmp_o_f32_e64 s13, v156, v156
	v_add3_u32 v193, v193, v214, 0x7fff
	v_cndmask_b16 v166.l, 0x7fff, v168.h, s1
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v58, v182
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v182, 1, v157
	v_mov_b16_e64 v157.l, v171.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[158:161], v161 offset:6144
	ds_load_b128 v[207:210], v114
	ds_load_b128 v[219:222], v115
	ds_load_b128 v[37:40], v122
	ds_load_b128 v[162:165], v123
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v238.l, v194.h
	v_cmp_o_f32_e64 s14, v154, v154
	v_add3_u32 v169, v169, v182, 0x7fff
	v_and_b32_e32 v227, 1, v157
	v_mov_b16_e64 v157.l, v192.h
	v_cndmask_b16 v168.l, 0x7fff, v170.h, s3
	v_cndmask_b16 v170.l, 0x7fff, v193.h, s5
	v_cndmask_b16 v155.h, 0x7fff, v169.h, s10
	v_add3_u32 v171, v171, v227, 0x7fff
	v_and_b32_e32 v182, 1, v157
	v_mov_b16_e64 v157.l, v156.h
	v_and_b32_e32 v216, 1, v238
	v_cmp_o_f32_e64 s8, v211, v211
	v_cndmask_b16 v166.h, 0x7fff, v171.h, s11
	v_add3_u32 v171, v192, v182, 0x7fff
	v_and_b32_e32 v169, 1, v157
	v_permlanex16_b32 v182, v155, s51, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v157.l, v154.h
	v_add3_u32 v234, v211, v217, 0x7fff
	v_cndmask_b16 v168.h, 0x7fff, v171.h, s12
	v_add3_u32 v156, v156, v169, 0x7fff
	v_perm_b32 v227, v182, v155, v51
	v_perm_b32 v228, v182, v155, v53
	v_and_b32_e32 v155, 1, v157
	v_mov_b16_e64 v157.l, v240.h
	v_permlanex16_b32 v169, v166, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v170.h, 0x7fff, v156.h, s13
	v_permlanex16_b32 v156, v168, s51, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v154, v154, v155, 0x7fff
	v_and_b32_e32 v155, 1, v157
	v_mov_b16_e64 v157.l, v241.h
	v_perm_b32 v229, v169, v166, v51
	v_perm_b32 v230, v169, v166, v53
	v_permlanex16_b32 v166, v170, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v191.h, 0x7fff, v154.h, s14
	v_and_b32_e32 v154, 1, v157
	v_mov_b16_e64 v157.l, v167.h
	v_cmp_o_f32_e64 s7, v194, v194
	v_add3_u32 v194, v194, v216, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[187:190], v100
	ds_load_b128 v[195:198], v101
	ds_load_b128 v[174:177], v106
	ds_load_b128 v[178:181], v107
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v194.l, 0x7fff, v234.h, s8
	v_perm_b32 v231, v156, v168, v51
	v_perm_b32 v232, v156, v168, v53
	v_perm_b32 v233, v166, v170, v51
	v_perm_b32 v234, v166, v170, v53
	v_and_b32_e32 v157, 1, v157
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[211:214], v108
	ds_load_b128 v[215:218], v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v240, v240
	v_cmp_o_f32_e64 s16, v241, v241
	v_cmp_o_f32_e64 s17, v167, v167
	v_add3_u32 v155, v240, v155, 0x7fff
	v_add3_u32 v154, v241, v154, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[227:234], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v167, v157, 0x7fff
	v_cndmask_b16 v193.l, 0x7fff, v194.h, s7
	v_cndmask_b16 v193.h, 0x7fff, v155.h, s15
	v_cndmask_b16 v194.h, 0x7fff, v154.h, s16
	v_permlanex16_b32 v156, v191, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v235.h, 0x7fff, v35.h, s17
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[183:190], v[227:234], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v193, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v194, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[174:181], v[227:234], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v235, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[203:210], v[227:234], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v156, v191, v51
	v_perm_b32 v34, v156, v191, v53
	v_perm_b32 v35, v36, v193, v51
	v_perm_b32 v36, v36, v193, v53
	v_perm_b32 v37, v38, v194, v51
	v_perm_b32 v38, v38, v194, v53
	v_perm_b32 v39, v40, v235, v51
	v_perm_b32 v40, v40, v235, v53
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v58, v172, v173
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[195:202], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[211:218], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[33:40], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[158:165], v[33:40], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v54
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v58, v58, v17
	v_div_scale_f32 v34, null, v58, v58, v18
	v_div_scale_f32 v35, null, v58, v58, v19
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v17, v58, v17
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v18, v58, v18
	v_div_scale_f32 v43, null, v58, v58, v20
	v_div_scale_f32 v49, s3, v20, v58, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s37, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_div_scale_f32 v41, s1, v19, v58, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v58, v58, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v43, v42, 1.0
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v58, v58, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v50, v42
	v_div_fmas_f32 v34, v34, v37, v45
	v_rcp_f32_e32 v44, v40
	v_div_fixup_f32 v0, v0, v58, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v17, v34, v58, v18
	v_div_scale_f32 v34, s4, v21, v58, v21
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v58, v58, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v54, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_fmac_f32_e32 v46, v54, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v35, v46, v41
	v_dual_mul_f32 v41, v34, v39 :: v_dual_mul_f32 v36, v49, v42
	v_fma_f32 v35, -v40, v44, 1.0
	v_div_fmas_f32 v18, v18, v38, v46
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v44, v35, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v18, v58, v19
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v58, v58, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v46, v35
	v_fma_f32 v38, -v43, v36, v49
	v_div_scale_f32 v43, s1, v22, v58, v22
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v43, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v46, v48
	v_div_fixup_f32 v19, v36, v58, v20
	v_fmac_f32_e32 v41, v38, v39
	v_fma_f32 v20, -v40, v42, v43
	v_div_scale_f32 v36, s3, v23, v58, v23
	v_div_scale_f32 v38, null, v58, v58, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v47, v41, v34
	v_fmac_f32_e32 v42, v20, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v36, v35
	v_rcp_f32_e32 v49, v38
	v_div_scale_f32 v46, s5, v24, v58, v24
	v_div_fmas_f32 v20, v34, v39, v41
	v_fma_f32 v34, -v40, v42, v43
	v_fma_f32 v39, -v37, v47, v36
	v_div_scale_f32 v43, null, v58, v58, v26
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v38, v49, 1.0
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_div_fixup_f32 v20, v20, v58, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v25, v58, v25
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v34, v58, v22
	v_fma_f32 v22, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_fma_f32 v36, -v43, v39, 1.0
	v_div_scale_f32 v37, null, v58, v58, v27
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v22, v22, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v58, v58, v28
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v26, v58, v26
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v22, v22, v58, v23
	v_div_fixup_f32 v23, v35, v58, v24
	v_fma_f32 v24, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v27, v58, v27
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v58, v58, v29
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v24, v24, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v28, v58, v28
	v_div_scale_f32 v47, null, v58, v58, v30
	v_div_fixup_f32 v24, v24, v58, v25
	v_fma_f32 v25, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v25, v25, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v29, v58, v29
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v25, v25, v58, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v26, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v58, v58, v31
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v30, v58, v30
	v_div_fmas_f32 v26, v26, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v58, v58, v32
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v26, v26, v58, v27
	v_div_fixup_f32 v27, v34, v58, v28
	v_fma_f32 v28, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v31, v58, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v28, v28, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v58, v58, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v32, v58, v32
	v_div_scale_f32 v46, null, v58, v58, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v28, v28, v58, v29
	v_div_fixup_f32 v29, v35, v58, v30
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v58, v58, v11
	v_fma_f32 v30, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v39
	v_div_fmas_f32 v34, v34, v41, v37
	v_fmac_f32_e32 v44, v30, v36
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v41, s1, v10, v58, v10
	v_div_scale_f32 v30, s4, v9, v58, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v44, v40
	v_fmac_f32_e32 v35, v47, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v58, v58, v12
	v_dual_mul_f32 v40, v30, v42 :: v_dual_mul_f32 v49, v41, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v58, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v30
	v_div_fixup_f32 v31, v34, v58, v31
	v_div_fixup_f32 v32, v36, v58, v32
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v58, v58, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v30, -v38, v40, v30
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v58, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v58, v58, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v58, v13
	v_div_fixup_f32 v9, v30, v58, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v58, v10
	v_mul_f32_e32 v30, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v58, v11
	v_fma_f32 v43, -v37, v30, v41
	v_div_scale_f32 v38, null, v58, v58, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v58, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v30, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v58, v12
	v_fma_f32 v36, -v37, v30, v41
	v_div_scale_f32 v43, null, v58, v58, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v36, v34, v30
	v_div_scale_f32 v34, null, v58, v58, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v58, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v58, v58, v2
	v_div_fixup_f32 v13, v30, v58, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v30, v45
	v_div_scale_f32 v30, s3, v16, v58, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v58, v58, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v30, v45
	v_div_scale_f32 v48, s4, v1, v58, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v54, v48, v37 :: v_dual_fmac_f32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v58, v2
	v_div_fixup_f32 v14, v35, v58, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v54, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v43, v42, v30
	v_fmac_f32_e32 v54, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v58, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v58, v58, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v54, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v30, v30, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v58, v15
	v_div_fmas_f32 v34, v34, v37, v54
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v30, v58, v16
	v_div_fixup_f32 v1, v34, v58, v1
	v_div_scale_f32 v34, null, v58, v58, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v58, v58, v8
	v_fma_f32 v30, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v58, v58, v6
	v_div_fixup_f32 v2, v37, v58, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v58, v58, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v58, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v30, v58, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v30, -v34, v36, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s1, v5, v58, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v58, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v30, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v58, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v54, v45, v39
	v_fma_f32 v47, -v34, v49, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v48, v41 :: v_dual_fmac_f32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v58, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v54, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v55, v48
	v_mul_f32_e32 v56, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v54, v40, v39
	v_fma_f32 v30, -v34, v49, v30
	v_fmac_f32_e32 v55, v47, v41
	v_fma_f32 v34, -v44, v56, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v54, v45
	v_div_fmas_f32 v30, v30, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v34, v46
	v_fma_f32 v34, -v37, v55, v48
	v_div_fmas_f32 v35, v35, v39, v54
	v_div_fixup_f32 v4, v38, v58, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v55
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s4
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v30, v58, v5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s5
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_bfe_u32 v25, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v56, v50
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v58, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v58, v7
	v_div_fixup_f32 v8, v36, v58, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v19, v0, s19
	v_cndmask_b32_e64 v0, v0, v19, s19
	v_cndmask_b32_e64 v6, v18, v17, s19
	v_cndmask_b32_e64 v7, v17, v18, s19
	v_cndmask_b32_e64 v13, v20, v22, s19
	v_cndmask_b32_e64 v15, v21, v23, s19
	v_cndmask_b32_e64 v16, v12, v9, s19
	v_cndmask_b32_e64 v9, v9, v12, s19
	v_cndmask_b32_e64 v12, v11, v10, s19
	v_cndmask_b32_e64 v10, v10, v11, s19
	v_cndmask_b32_e64 v17, v3, v1, s19
	v_cndmask_b32_e64 v1, v1, v3, s19
	v_cndmask_b32_e64 v18, v4, v2, s19
	v_cndmask_b32_e64 v2, v2, v4, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v22, v20, s19
	v_cndmask_b32_e64 v14, v23, v21, s19
	v_permlanex16_b32 v3, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v2, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s37, v34
	v_cmp_gt_i32_e64 s3, s37, v32
	v_cmp_gt_i32_e64 s0, s37, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v51
	v_perm_b32 v1, v3, v5, v53
	v_perm_b32 v2, v4, v6, v51
	v_perm_b32 v3, v4, v6, v53
	v_perm_b32 v4, v7, v8, v51
	v_perm_b32 v5, v7, v8, v53
	v_perm_b32 v6, v11, v14, v51
	v_perm_b32 v7, v11, v14, v53
	v_perm_b32 v10, v13, v12, v51
	v_perm_b32 v11, v13, v12, v53
	v_perm_b32 v12, v15, v17, v51
	v_perm_b32 v13, v15, v17, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v51
	v_perm_b32 v9, v9, v16, v53
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s37, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v51
	v_perm_b32 v15, v19, v18, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 243
		.amdhsa_next_free_sgpr 67
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 243
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12948
; TotalNumSgprs: 69
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 243
; Occupancy: 5
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
