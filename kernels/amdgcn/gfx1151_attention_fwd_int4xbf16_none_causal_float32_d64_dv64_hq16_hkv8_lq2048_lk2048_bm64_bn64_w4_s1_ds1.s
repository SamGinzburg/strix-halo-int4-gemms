	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s50, s[0:1], 0x60
	s_load_b32 s12, s[0:1], 0x88
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s2, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s4, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v43
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s2, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s2, s4
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v79, v0, 4, 1
	v_and_b32_e32 v42, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s4, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[45:46], null, s50, v5, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s38, s50, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s13, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v44, 30, v79
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s13, s13, 64
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s38
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s50, s5, v[45:46]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s13, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v7, 4, v6
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v6, v1
	ds_bpermute_b32 v35, v6, v2
	ds_bpermute_b32 v36, v6, v3
	ds_bpermute_b32 v38, v6, v4
	ds_bpermute_b32 v37, v7, v1
	ds_bpermute_b32 v39, v7, v2
	ds_bpermute_b32 v40, v7, v3
	ds_bpermute_b32 v41, v7, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v2, v5, 48, v42
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v46, s2, v2
	v_or_b32_e32 v91, s5, v2
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v46
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s5, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention.py:0:24
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow106
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s64, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v90, 2, v79
	v_or_b32_e32 v89, 4, v79
	v_or_b32_e32 v88, 6, v79
	v_or_b32_e32 v87, 8, v79
	v_or_b32_e32 v86, 10, v79
	v_or_b32_e32 v85, 12, v79
	v_or_b32_e32 v84, 14, v79
	v_or_b32_e32 v83, 16, v79
	v_or_b32_e32 v82, 18, v79
	v_or_b32_e32 v81, 20, v79
	v_or_b32_e32 v80, 22, v79
	v_or_b32_e32 v78, 24, v79
	v_or_b32_e32 v77, 26, v79
	v_or_b32_e32 v76, 28, v79
	v_or_b32_e32 v75, 30, v79
	v_or_b32_e32 v74, 32, v79
	v_or_b32_e32 v73, 34, v79
	v_or_b32_e32 v72, 36, v79
	v_or_b32_e32 v71, 38, v79
	v_or_b32_e32 v70, 40, v79
	v_or_b32_e32 v69, 42, v79
	v_or_b32_e32 v68, 44, v79
	v_or_b32_e32 v67, 46, v79
	v_or_b32_e32 v66, 48, v79
	v_or_b32_e32 v65, 50, v79
	v_or_b32_e32 v64, 52, v79
	v_or_b32_e32 v61, 54, v79
	v_or_b32_e32 v59, 56, v79
	v_or_b32_e32 v63, 58, v79
	v_or_b32_e32 v62, 60, v79
	v_or_b32_e32 v60, 62, v1
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
	v_mov_b32_e32 v93, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v91
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v92, s12, v46
	v_and_b32_e32 v4, 24, v44
	v_mov_b32_e32 v44, 0x5410
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_load_b32 s1, s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v56, 7, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v2, 0x7f0, v43
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_and_b32 v3, 24, v0
	v_bfe_i32 v5, v0, 3, 1
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v57, 0x78, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s52, s8
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s8, s13, 0x800
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v33, v1, s[52:55], 0 offen
	v_dual_mov_b32 v58, 0x7632 :: v_dual_and_b32 v1, 16, v0
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s8, s8, 63
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s9, s3, s0
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s12, s8, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s13, s9, 0xfff0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s12, s12, 26
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s9, s9, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s13
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v47, v38, v41, s0
	v_xor_b32_e32 v0, v2, v3
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v93, 0x410, v5
	v_mul_u32_u24_e32 v95, 0x90, v56
	v_mov_b32_e32 v23, v17
	v_lshl_or_b32 v94, v42, 5, v4
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v42, 4, v56
	v_cndmask_b32_e64 v49, v35, v39, s0
	v_cndmask_b32_e64 v51, v41, v38, s0
	v_cndmask_b32_e64 v53, v39, v35, s0
	v_cndmask_b32_e64 v38, 0x1054, v44, s0
	v_cndmask_b32_e64 v39, 0x3276, v58, s0
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s68, s8, s12
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s8, s9, 0xffffc000
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s9, s3, 0x10007
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v46, v36, v40, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s3, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v48, v34, v37, s0
	v_cndmask_b32_e64 v50, v40, v36, s0
	v_cndmask_b32_e64 v52, v37, v34, s0
	v_xor_b32_e32 v34, 8, v0
	v_xor_b32_e32 v35, 8, v94
	v_xor_b32_e32 v36, 16, v94
	v_xor_b32_e32 v37, 24, v94
	v_xor_b32_e32 v40, v42, v57
	v_xor_b32_e32 v95, v95, v93
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s3, 0x80000
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v39, v39, 8, v39
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v20, v17 :: v_dual_lshlrev_b32 v43, 3, v56
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v57
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v97, 0, v34
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v99, 0, v36
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v98, 0, v35
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v39, 0x760076, v39
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v100, 0, v37
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v38, 0x540054, v38
	v_lshl_or_b32 v96, v56, 10, v40
	v_xor_b32_e32 v40, 16, v95
	v_xor_b32_e32 v41, 32, v95
	v_xor_b32_e32 v42, 48, v95
	v_xor_b32_e32 v34, 0x70, v95
	v_xor_b32_e32 v35, 0x820, v95
	v_xor_b32_e32 v36, 0x830, v95
	v_xor_b32_e32 v37, 0x810, v95
	v_xor_b32_e32 v123, 0x1870, v95
	s_and_b32 s69, s0, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s1, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[54:55], null, s64, v54, v[43:44]
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v101, 0, v40
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v103, 0, v42
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v102, 0, v41
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v107, 0, v34
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v109, 0, v36
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v108, 0, v35
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v110, 0, v37
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s64, v43
	v_xor_b32_e32 v43, 64, v95
	v_xor_b32_e32 v44, 0x50, v95
	v_xor_b32_e32 v55, 0x60, v95
	v_xor_b32_e32 v56, 0x860, v95
	v_xor_b32_e32 v57, 0x870, v95
	v_xor_b32_e32 v58, 0x840, v95
	v_xor_b32_e32 v93, 0x850, v95
	v_xor_b32_e32 v115, 0x1040, v95
	v_xor_b32_e32 v116, 0x1050, v95
	v_xor_b32_e32 v117, 0x1060, v95
	v_xor_b32_e32 v118, 0x1070, v95
	v_xor_b32_e32 v119, 0x1010, v95
	v_xor_b32_e32 v120, 0x1020, v95
	v_xor_b32_e32 v121, 0x1030, v95
	v_xor_b32_e32 v122, 0x1860, v95
	v_xor_b32_e32 v124, 0x1840, v95
	v_xor_b32_e32 v125, 0x1850, v95
	v_xor_b32_e32 v126, 0x1820, v95
	v_xor_b32_e32 v127, 0x1830, v95
	v_xor_b32_e32 v128, 0x1810, v95
	v_xor_b32_e32 v34, 0x90, v96
	v_xor_b32_e32 v35, 0x120, v96
	v_xor_b32_e32 v36, 0x1b0, v96
	v_xor_b32_e32 v37, 0x240, v96
	v_xor_b32_e32 v40, 0x2d0, v96
	v_xor_b32_e32 v41, 0x360, v96
	v_xor_b32_e32 v42, 0x3f0, v96
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v39, v39, 4, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s69, s69, s8
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v105, 0, v44
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v104, 0, v43
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v106, 0, v55
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v111, 0, v56
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v113, 0, v58
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v112, 0, v57
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v115, 0, v115
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v114, 0, v93
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v117, 0, v117
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v116, 0, v116
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v119, 0, v119
	v_dual_mov_b32 v93, v17 :: v_dual_add_nc_u32 v122, 0, v122
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_or_b32_e32 v129, s69, v67
	v_or_b32_e32 v130, s69, v66
	v_or_b32_e32 v131, s69, v65
	v_or_b32_e32 v132, s69, v64
	v_or_b32_e32 v133, s69, v61
	v_or_b32_e32 v134, s69, v59
	v_or_b32_e32 v135, s69, v63
	v_or_b32_e32 v136, s69, v62
	v_add_nc_u32_e32 v137, 0, v34
	v_add_nc_u32_e32 v138, 0, v35
	v_add_nc_u32_e32 v139, 0, v36
	v_add_nc_u32_e32 v140, 0, v37
	v_add_nc_u32_e32 v141, 0, v40
	v_add_nc_u32_e32 v143, 0, v41
	v_add_nc_u32_e32 v144, 0, v42
	v_and_b32_e32 v145, 0x5040504, v38
	v_and_b32_e32 v146, 0x7060706, v39
	s_mov_b32 s40, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s51, s64, 1
	s_mul_i32 s65, s64, 3
	s_mov_b32 s66, 0x76543210
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
	s_mov_b32 s67, s40
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s68, s68, 63
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s10
	s_mov_b32 s60, s6
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s57, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v142, s0, v33 :: v_dual_add_nc_u32 v123, 0, v123
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v120, 0, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v148, v142 :: v_dual_add_nc_u32 v121, 0, v121
	v_mov_b32_e32 v147, v142
	v_mov_b32_e32 v149, v142
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s67, s69
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v55, 0, v94
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[42:43], null, s0, s50, v[45:46]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_mov_b32 v38, s45
	v_mov_b32_e32 v36, s43
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[43:44], null, s0, s64, v[54:55]
	v_dual_mov_b32 v34, s41 :: v_dual_add_nc_u32 v41, 0, v0
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s38
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v37, s44
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v40, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v43
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[153:156], v42, s[52:55], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v56, v43, s64, 1
	v_add_lshl_u32 v57, v43, s51, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v161, 0x80000000, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v221, 0x80000000, v56 :: v_dual_cndmask_b32 v42, 0x80000000, v57
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v39, s46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v43, s65, 1
	v_or_b32_e32 v176, s69, v86
	v_or_b32_e32 v183, s69, v72
	v_or_b32_e32 v177, s69, v85
	v_or_b32_e32 v184, s69, v71
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_or_b32_e32 v179, s69, v83
	v_or_b32_e32 v185, s69, v70
	v_or_b32_e32 v175, s69, v87
	v_or_b32_e32 v180, s69, v82
	v_or_b32_e32 v186, s69, v69
	v_or_b32_e32 v181, s69, v81
	v_or_b32_e32 v187, s69, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v216, v129, s67, 1
	v_add_lshl_u32 v217, v130, s67, 1
	v_add_lshl_u32 v218, v131, s67, 1
	v_or_b32_e32 v151, s69, v79
	v_or_b32_e32 v152, s69, v90
	v_or_b32_e32 v173, s69, v89
	v_or_b32_e32 v174, s69, v88
	v_or_b32_e32 v178, s69, v84
	v_or_b32_e32 v182, s69, v80
	v_or_b32_e32 v219, s69, v78
	v_or_b32_e32 v220, s69, v77
	v_add_lshl_u32 v151, v151, s67, 1
	v_add_lshl_u32 v152, v152, s67, 1
	v_add_lshl_u32 v173, v173, s67, 1
	v_add_lshl_u32 v174, v174, s67, 1
	v_add_lshl_u32 v178, v178, s67, 1
	v_add_lshl_u32 v182, v182, s67, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[153:154]
	ds_store_b64 v97, v[155:156]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[168:171], v55 offset1:1
	ds_load_2addr_stride64_b64 v[55:58], v55 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[196:199], v98 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[208:211], v42, s[60:63], 0 offen
	buffer_load_b128 v[41:44], v43, s[60:63], 0 offen
	buffer_load_b128 v[212:215], v161, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[168:169], v[52:53], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[57:58], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[55:56], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[170:171], v[52:53], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v98 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v99 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[198:199], v[50:51], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[196:197], v[50:51], v[188:195] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[33:34], v[50:51], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[35:36], v[50:51], v[200:207] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v99 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[39:40], v[48:49], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[37:38], v[48:49], v[188:195] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v100 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[33:34], v[48:49], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[35:36], v[48:49], v[200:207] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v100 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[37:38], v[46:47], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[39:40], v[46:47], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v153
	v_cvt_f32_i32_e32 v197, v201
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v170, v203
	v_cvt_f32_i32_e32 v153, v156
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v40, v154
	v_cvt_f32_i32_e32 v154, v155
	v_cvt_f32_i32_e32 v155, v159
	v_cvt_f32_i32_e32 v171, v204
	v_cvt_f32_i32_e32 v172, v207
	v_mul_f32_e32 v37, v142, v37
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[35:36], v[46:47], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[33:34], v[46:47], v[188:195] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[33:36], v221, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v172, v148, v172
	v_dual_mul_f32 v40, v147, v40 :: v_dual_mul_f32 v153, v149, v153
	v_cvt_f32_i32_e32 v225, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v193, v176, s67, 1
	v_add_lshl_u32 v176, v183, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v226, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v194, v177, s67, 1
	v_add_lshl_u32 v177, v184, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v199, v162
	v_cvt_f32_i32_e32 v162, v167
	v_cvt_f32_i32_e32 v167, v205
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v205, v179, s67, 1
	v_add_lshl_u32 v179, v185, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v224, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v192, v175, s67, 1
	v_add_lshl_u32 v175, v180, s67, 1
	v_add_lshl_u32 v180, v186, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v161, v168
	v_cvt_f32_i32_e32 v168, v206
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v206, v181, s67, 1
	v_add_lshl_u32 v181, v187, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v198, v163
	v_cvt_f32_i32_e32 v163, v169
	v_cvt_f32_i32_e32 v169, v202
	v_cvt_f32_i32_e32 v160, v166
	v_cvt_f32_i32_e32 v196, v164
	v_cvt_f32_i32_e32 v164, v188
	v_cvt_f32_i32_e32 v222, v190
	v_cvt_f32_i32_e32 v223, v191
	v_cvt_f32_i32_e32 v166, v189
	v_or_b32_e32 v188, s69, v76
	v_or_b32_e32 v189, s69, v75
	v_or_b32_e32 v190, s69, v74
	v_or_b32_e32 v191, s69, v73
	v_cvt_f32_i32_e32 v159, v165
	v_cvt_f32_i32_e32 v227, v195
	v_cvt_f32_i32_e32 v165, v200
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v183, v219, s67, 1
	v_add_lshl_u32 v184, v220, s67, 1
	v_add_lshl_u32 v185, v188, s67, 1
	v_add_lshl_u32 v186, v189, s67, 1
	v_add_lshl_u32 v207, v190, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v199, v148, v199 :: v_dual_mul_f32 v198, v149, v198
	v_dual_mul_f32 v169, v147, v169 :: v_dual_mul_f32 v164, v149, v164
	v_mul_f32_e32 v167, v142, v167
	v_dual_mul_f32 v171, v149, v171 :: v_dual_mul_f32 v168, v147, v168
	v_dual_mul_f32 v166, v147, v166 :: v_dual_mul_f32 v155, v148, v155
	v_mul_f32_e32 v156, v149, v156
	v_cvt_f32_i32_e32 v157, v157
	v_dual_mul_f32 v158, v147, v158 :: v_dual_mul_f32 v165, v142, v165
	v_dual_mul_f32 v154, v148, v154 :: v_dual_mul_f32 v159, v142, v159
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v160, v147, v160 :: v_dual_mul_f32 v157, v142, v157
	v_dual_mul_f32 v161, v149, v161 :: v_dual_mul_f32 v162, v148, v162
	v_dual_mul_f32 v197, v142, v197 :: v_dual_mul_f32 v196, v148, v196
	v_mul_f32_e32 v170, v148, v170
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v58.l, v209.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v58.h, v42.l
	v_mov_b16_e64 v42.l, v209.h
	v_mov_b16_e64 v56.l, v210.l
	v_mov_b16_e32 v56.h, v43.l
	v_mov_b16_e32 v39.h, v44.l
	v_mov_b16_e64 v44.l, v211.h
	v_mov_b16_e64 v43.l, v210.h
	v_mov_b16_e64 v39.l, v211.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v203.l, v212.l
	v_mov_b16_e64 v57.l, v213.l
	v_mov_b16_e64 v55.l, v214.l
	v_mov_b16_e64 v204.l, v208.l
	v_mov_b16_e64 v204.h, v41.l
	v_mov_b16_e64 v41.l, v208.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v208, v191, s67, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v38.l, v215.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v203.h, v33.l
	v_mov_b16_e64 v33.l, v212.h
	v_mov_b16_e32 v57.h, v34.l
	v_mov_b16_e64 v34.l, v213.h
	v_mov_b16_e32 v55.h, v35.l
	v_mov_b16_e64 v35.l, v214.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v209, v176, s[56:59], 0 offen
	buffer_load_u16 v210, v177, s[56:59], 0 offen
	buffer_load_u16 v211, v179, s[56:59], 0 offen
	buffer_load_u16 v212, v180, s[56:59], 0 offen
	buffer_load_u16 v213, v181, s[56:59], 0 offen
	buffer_load_u16 v214, v216, s[56:59], 0 offen
	buffer_load_u16 v202, v217, s[56:59], 0 offen
	buffer_load_u16 v201, v218, s[56:59], 0 offen
	v_add_lshl_u32 v176, v132, s67, 1
	s_clause 0x12
	buffer_load_u16 v200, v176, s[56:59], 0 offen
	buffer_load_u16 v195, v175, s[56:59], 0 offen
	buffer_load_u16 v176, v151, s[56:59], 0 offen
	buffer_load_u16 v177, v152, s[56:59], 0 offen
	buffer_load_u16 v175, v173, s[56:59], 0 offen
	buffer_load_u16 v179, v174, s[56:59], 0 offen
	buffer_load_u16 v173, v192, s[56:59], 0 offen
	buffer_load_u16 v174, v193, s[56:59], 0 offen
	buffer_load_u16 v180, v194, s[56:59], 0 offen
	buffer_load_u16 v181, v178, s[56:59], 0 offen
	buffer_load_u16 v178, v205, s[56:59], 0 offen
	buffer_load_u16 v189, v206, s[56:59], 0 offen
	buffer_load_u16 v190, v182, s[56:59], 0 offen
	buffer_load_u16 v191, v183, s[56:59], 0 offen
	buffer_load_u16 v187, v184, s[56:59], 0 offen
	buffer_load_u16 v188, v185, s[56:59], 0 offen
	buffer_load_u16 v193, v186, s[56:59], 0 offen
	buffer_load_u16 v194, v207, s[56:59], 0 offen
	buffer_load_u16 v192, v208, s[56:59], 0 offen
	v_add_lshl_u32 v151, v133, s67, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v149, v163
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v38.h, v36.l
	v_mov_b16_e64 v36.l, v215.h
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v182, v151, s[56:59], 0 offen
	v_add_lshl_u32 v151, v134, s67, 1
	buffer_load_u16 v183, v151, s[56:59], 0 offen
	v_add_lshl_u32 v151, v135, s67, 1
	buffer_load_u16 v184, v151, s[56:59], 0 offen
	v_add_lshl_u32 v151, v136, s67, 1
	buffer_load_u16 v185, v151, s[56:59], 0 offen
	v_add_lshl_u32 v151, s0, v60, 1
	buffer_load_u16 v186, v151, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v151, 0, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v151, v[203:204]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v151, v92
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s67, v65
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v66
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s0, s2, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v67
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s2, s4
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v68
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v69
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s2, s6
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v70
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s2, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v71
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s2, s8
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v72
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s2, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v73
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s2, s10
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v74
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s2, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v75
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s13
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v76
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s35, s2, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v77
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v151, v92
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s67, v78
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s36, s2, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v80
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s2, s16
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v82
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s2, s18
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v83
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s2, s11
	s_and_b32 s19, s2, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v84
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s2, s20
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v85
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s2, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v86
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s2, s22
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v87
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s2, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s2, s24
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v89
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s2, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v90
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s2, s26
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v79
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s2, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v60
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s2, s28
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v62
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v63
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s29
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v59
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s2, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v151, v92
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v151, s67, v61
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s67, s67, 64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s33
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v151, v92
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v151, v142, v222
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s34
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s67, s68
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v200, 16, v200
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(22)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v200, v196, v200 :: v_dual_lshlrev_b32 v195, 16, v195
	v_dual_mul_f32 v195, v197, v195 :: v_dual_lshlrev_b32 v152, 16, v209
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v203, v151, v152 :: v_dual_lshlrev_b32 v208, 16, v214
	v_dual_mul_f32 v151, v147, v223 :: v_dual_lshlrev_b32 v152, 16, v210
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v202, 16, v202
	v_lshlrev_b32_e32 v201, 16, v201
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v204, v151, v152 :: v_dual_lshlrev_b32 v189, 16, v189
	v_dual_mul_f32 v151, v148, v224 :: v_dual_lshlrev_b32 v152, 16, v211
	v_dual_mul_f32 v202, v199, v202 :: v_dual_mul_f32 v201, v198, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v170, v170, v190
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v169, v169, v189 :: v_dual_lshlrev_b32 v194, 16, v194
	v_mul_f32_e32 v205, v151, v152
	v_dual_mul_f32 v151, v149, v225 :: v_dual_lshlrev_b32 v152, 16, v212
	v_dual_mul_f32 v164, v164, v194 :: v_dual_lshlrev_b32 v191, 16, v191
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v206, v151, v152 :: v_dual_mul_f32 v151, v142, v226
	v_dual_mul_f32 v189, v171, v191 :: v_dual_lshlrev_b32 v152, 16, v213
	v_dual_mul_f32 v168, v168, v188 :: v_dual_lshlrev_b32 v193, 16, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v192, 16, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v207, v151, v152
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v183, 16, v183
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v171, v172, v193
	v_dual_mul_f32 v166, v166, v192 :: v_dual_lshlrev_b32 v187, 16, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v167, v167, v187
	v_dual_mul_f32 v176, v37, v176 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v152, v147, v227 :: v_dual_lshlrev_b32 v181, 16, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v177, v40, v177
	v_dual_mul_f32 v180, v155, v180 :: v_dual_lshlrev_b32 v179, 16, v179
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v40, v33 :: v_dual_lshlrev_b32 v185, 16, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, v153, v179
	v_dual_mul_f32 v174, v158, v174 :: v_dual_lshlrev_b32 v175, 16, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v183, v160, v183 :: v_dual_lshlrev_b32 v186, 16, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v175, v154, v175
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v137, v[40:41]
	ds_store_b64 v138, v[57:58]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v177, s27
	v_cndmask_b32_e64 v188, 0xff800000, v176, s28
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v165, v178
	v_mul_f32_e32 v178, v159, v182
	v_dual_mul_f32 v182, v162, v184 :: v_dual_mul_f32 v173, v157, v173
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, 0xff800000, v180, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v41, v34 :: v_dual_mul_f32 v208, v152, v208
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v181, v156, v181
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v168, s18
	v_cndmask_b32_e64 v168, 0xff800000, v167, s36
	v_cndmask_b32_e64 v160, 0xff800000, v164, s13
	v_cndmask_b32_e64 v167, 0xff800000, v171, s35
	v_cndmask_b32_e64 v170, 0xff800000, v170, s3
	v_cndmask_b32_e64 v171, 0xff800000, v169, s39
	v_cndmask_b32_e64 v172, 0xff800000, v195, s19
	v_cndmask_b32_e64 v169, 0xff800000, v189, s37
	v_cndmask_b32_e64 v189, 0xff800000, v179, s25
	v_cndmask_b32_e64 v164, 0xff800000, v183, s15
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v139, v[41:42]
	ds_store_b64 v140, v[55:56]
	v_dual_mov_b32 v42, v35 :: v_dual_mul_f32 v33, v161, v185
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v166, s12
	v_cndmask_b32_e64 v166, 0xff800000, v178, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v163, v186
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v173, s24
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v37, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v174, s23
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v151.h, 0
	v_add_nc_u32_e32 v152, 0, v95
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v201, s0
	v_cndmask_b32_e64 v58, 0xff800000, v202, s4
	v_cndmask_b32_e64 v153, 0xff800000, v208, s5
	v_cndmask_b32_e64 v154, 0xff800000, v207, s6
	v_cndmask_b32_e64 v156, 0xff800000, v205, s8
	v_cndmask_b32_e64 v158, 0xff800000, v204, s9
	v_cndmask_b32_e64 v159, 0xff800000, v203, s10
	v_cndmask_b32_e64 v157, 0xff800000, v206, s7
	v_cndmask_b32_e64 v155, 0xff800000, v200, s1
	v_cndmask_b32_e64 v190, 0xff800000, v175, s26
	v_cndmask_b32_e64 v191, 0xff800000, v181, s21
	v_cndmask_b32_e64 v162, 0xff800000, v33, s16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v167, v160, v161
	v_max3_f32 v55, v172, v171, v170
	v_max3_f32 v56, v169, v168, v40
	v_max_f32_e32 v174, v188, v187
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, 0xff800000, v165, s20
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v175, v189, v186, v44
	v_max_f32_e32 v176, v166, v164
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v163, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.h, v151.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v182, s14
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v159, v158, v156
	v_max3_f32 v34, v157, v154, v153
	v_max3_f32 v35, v58, v57, v155
	v_max3_f32 v193, v192, v191, v173
	v_max_f32_e32 v177, v162, v163
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v141, v[42:43]
	ds_store_b64 v143, v[38:39]
	ds_store_b64 v144, v[36:37]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v55, v56, v41
	v_max3_f32 v39, v174, v190, v175
	v_max3_f32 v37, v33, v34, v35
	v_max3_f32 v41, v176, v165, v177
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v198.h, v151.h
	v_mov_b16_e64 v199.h, v151.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v39, v193, v38
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.h, v151.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[174:177], v152
	ds_load_b128 v[182:185], v108
	ds_load_b128 v[178:181], v101
	ds_load_b128 v[33:36], v102
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v37, v38, v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v55, v150, v37, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v187, v55
	v_sub_f32_e32 v39, v190, v55
	v_sub_f32_e32 v38, v188, v55
	v_sub_f32_e32 v41, v189, v55
	v_sub_f32_e32 v42, v186, v55
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v44, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v192, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v165, v55
	v_sub_f32_e32 v163, v163, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v210, 0, v37, s27
	v_cndmask_b32_e64 v212, 0, v39, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v211, 0, v38, s28
	v_cndmask_b32_e64 v213, 0, v41, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v210.h
	v_mov_b16_e64 v198.l, v212.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v191, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v214, 0, v42, s24
	v_cndmask_b32_e64 v215, 0, v43, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v199.l, v211.h
	v_and_b32_e32 v37, 1, v151
	v_mov_b16_e64 v151.l, v213.h
	v_and_b32_e32 v39, 1, v198
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.l, v214.h
	v_and_b32_e32 v38, 1, v199
	v_and_b32_e32 v43, 1, v151
	v_mov_b16_e64 v151.l, v215.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v216, 0, v44, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v211, v211
	v_and_b32_e32 v41, 1, v196
	v_add3_u32 v37, v210, v37, 0x7fff
	v_add3_u32 v38, v211, v38, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v217, 0, v56, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v210, v210
	v_and_b32_e32 v44, 1, v151
	v_cmp_o_f32_e64 s24, v212, v212
	v_cmp_o_f32_e64 s25, v215, v215
	v_cmp_o_f32_e64 s26, v214, v214
	v_add3_u32 v39, v212, v39, 0x7fff
	v_add3_u32 v41, v214, v41, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s21
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s22
	v_add3_u32 v38, v213, v43, 0x7fff
	v_add3_u32 v43, v215, v44, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s24
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s26
	v_permlanex16_b32 v44, v37, s66, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v197.l, v216.h
	v_cndmask_b16 v39.h, 0x7fff, v43.h, s25
	v_cmp_o_f32_e64 s28, v216, v216
	v_mov_b16_e64 v151.l, v217.h
	v_perm_b32 v190, v44, v37, v145
	v_perm_b32 v191, v44, v37, v146
	v_permlanex16_b32 v37, v39, s66, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 1, v197
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v213, v213
	v_cmp_o_f32_e64 s27, v217, v217
	v_perm_b32 v194, v37, v39, v145
	v_perm_b32 v195, v37, v39, v146
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v150, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v216, v42, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v172, v55
	v_sub_f32_e32 v160, v160, v55
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s28
	v_permlanex16_b32 v43, v38, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v158, v158, v55
	v_sub_f32_e32 v156, v156, v55
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[198:201], v152 offset:2048
	ds_load_b128 v[186:189], v109
	ds_load_b128 v[202:205], v110
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v192, v43, v38, v145
	v_perm_b32 v193, v43, v38, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v56, 0, v37, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v151
	v_mov_b16_e64 v37.h, v151.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v158, v158
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v217, v42, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v56
	v_mul_f32_e32 v18, v18, v56
	v_mul_f32_e32 v19, v19, v56
	v_mul_f32_e32 v20, v20, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s27
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v56
	v_mul_f32_e32 v23, v23, v56
	v_mul_f32_e32 v24, v24, v56
	v_mul_f32_e32 v9, v9, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v41, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v56
	v_mul_f32_e32 v12, v12, v56
	v_mul_f32_e32 v13, v13, v56
	v_mul_f32_e32 v14, v14, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v196, v38, v41, v145
	v_perm_b32 v197, v38, v41, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v38, v173, v55 :: v_dual_mul_f32 v15, v15, v56
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v56
	v_mul_f32_e32 v30, v30, v56
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[174:181], v[190:197], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[174:177], v115
	ds_load_b128 v[178:181], v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v56
	v_mul_f32_e32 v2, v2, v56
	v_mul_f32_e32 v3, v3, v56
	v_mul_f32_e32 v4, v4, v56
	v_mul_f32_e32 v5, v5, v56
	v_mul_f32_e32 v6, v6, v56
	v_mul_f32_e32 v7, v7, v56
	v_mul_f32_e32 v8, v8, v56
	v_mul_f32_e32 v25, v25, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v38, s20
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v56
	v_mul_f32_e32 v27, v27, v56
	v_mul_f32_e32 v28, v28, v56
	v_mul_f32_e32 v29, v29, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.l, v150.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v150, v150
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v32, v56 :: v_dual_and_b32 v37, 1, v37
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[174:181], v[190:197], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[174:177], v122
	ds_load_b128 v[178:181], v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s8
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v37, v150, v37, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s9
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[41:44], v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v154, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s20
	v_cmp_o_f32_e64 s9, v158, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s13
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[174:181], v[190:197], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v39, s19
	v_cndmask_b32_e64 v154, 0, v154, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v180.h
	v_cmp_o_f32_e64 s19, v180, v180
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v150, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v151
	v_add3_u32 v38, v180, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s19
	v_permlanex16_b32 v38, v37, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v172, v38, v37, v145
	v_perm_b32 v173, v38, v37, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v171, v55
	v_sub_f32_e32 v38, v170, v55
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[182:189], v[190:197], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[182:185], v124
	ds_load_b128 v[206:209], v121
	ds_load_b128 v[186:189], v125
	ds_load_b128 v[190:193], v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v37, s39
	v_cndmask_b32_e64 v194, 0, v38, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v37.h, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v37.l, v181.h
	v_mov_b16_e64 v151.l, v194.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v194, v194
	v_cmp_o_f32_e64 s19, v181, v181
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v151
	v_add3_u32 v37, v181, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v194, v38, 0x7fff
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v194, v181, v194
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v157, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s3
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v150, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v37, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v174, v38, v37, v145
	v_perm_b32 v175, v38, v37, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v169, v55
	v_sub_f32_e32 v38, v168, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v159, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v195, 0, v37, s37
	v_cndmask_b32_e64 v196, 0, v38, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v37.h, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v37.l, v195.h
	v_mov_b16_e64 v151.l, v196.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v196, v196
	v_cmp_o_f32_e64 s19, v195, v195
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v151
	v_add3_u32 v37, v195, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v196, v38, 0x7fff
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v195, v195, v196
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s3
	v_permlanex16_b32 v38, v37, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v176, v38, v37, v145
	v_perm_b32 v177, v38, v37, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v40, v55
	v_sub_f32_e32 v38, v167, v55
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v37, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v218, 0, v38, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v37.h, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.l, v197.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v151.l, v218.h
	v_cmp_o_f32_e64 s3, v218, v218
	v_cmp_o_f32_e64 s18, v197, v197
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v151
	v_add3_u32 v37, v197, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v218, v38, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v156, v156
	v_permlanex16_b32 v38, v37, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v178, v38, v37, v145
	v_perm_b32 v179, v38, v37, v146
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[37:40], v103
	ds_load_b128 v[167:170], v104
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[182:189], v[172:179], v[1:8]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v187, v211, v210 :: v_dual_add_f32 v188, v212, v213
.Ltmp23:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[198:205], v[172:179], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v200, 0, v165, s14
	v_cndmask_b32_e64 v201, 0, v163, s11
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v165, v187, v188 :: v_dual_add_f32 v188, v156, v157
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v166, v166
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v197, v218
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v198, v216, v217 :: v_dual_sub_f32 v155, v155, v55
.Ltmp29:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[172:179], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v117
	ds_load_b128 v[37:40], v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.h, v151.h
	v_mov_b16_e64 v184.h, v151.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v161, v161, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v166, s17
	v_cndmask_b32_e64 v58, 0, v58, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v166, v159, v158 :: v_dual_sub_f32 v57, v57, v55
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v185.h, v151.h
	v_mov_b16_e64 v186.h, v151.h
	v_mov_b16_e64 v183.l, v58.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v157, v157
	v_cmp_o_f32_e64 s4, v154, v154
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s12
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v189, v214, v215
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v164, v55
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[172:179], v[9:16]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v34.h, v151.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v151.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v194, v58, v57
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.l, v160.h
	v_mov_b16_e64 v35.l, v159.h
	v_mov_b32_e32 v33, v93
	v_mov_b16_e64 v36.h, v151.h
	v_mov_b16_e64 v93.h, v151.h
	v_mov_b16_e64 v36.l, v156.h
	v_mov_b16_e64 v93.l, v154.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v163, v195, v163 :: v_dual_and_b32 v34, 1, v34
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v153, s5
	v_cndmask_b32_e64 v153, 0, v155, s1
	v_cndmask_b32_e64 v155, 0, v164, s15
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v55
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v164, v160, v161 :: v_dual_add_f32 v187, v189, v198
	v_add_f32_e32 v189, v154, v196
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v184.l, v153.h
	v_mov_b16_e64 v185.l, v155.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v164, v164, v166
	v_add_f32_e32 v166, v153, v199
	v_dual_add_f32 v188, v188, v189 :: v_dual_add_f32 v189, v155, v200
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v166, v194, v166 :: v_dual_and_b32 v35, 1, v35
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v160, v160
	v_cmp_o_f32_e64 s1, v159, v159
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v150, v150, v163 :: v_dual_and_b32 v93, 1, v93
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v184, 1, v184
	v_and_b32_e32 v185, 1, v185
	v_add3_u32 v34, v160, v34, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s16
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v164, v188
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v159, v35, 0x7fff
	v_cmp_o_f32_e64 s5, v58, v58
	v_mov_b16_e64 v151.l, v161.h
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v194, v162, v201
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.l, v162.h
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s12, v162, v162
	v_cmp_o_f32_e64 s8, v161, v161
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v189, v189, v194
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v183, 1, v183
	v_and_b32_e32 v159, 1, v186
	v_add3_u32 v36, v156, v36, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s0
	v_add3_u32 v93, v154, v93, 0x7fff
	v_add3_u32 v58, v58, v183, 0x7fff
	v_add3_u32 v183, v153, v184, 0x7fff
	v_add3_u32 v184, v155, v185, 0x7fff
	v_add3_u32 v185, v162, v159, 0x7fff
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v159, v165, v187 :: v_dual_add_f32 v162, v166, v189
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v196, v196
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v186, v159, v150
	v_dual_add_f32 v187, v160, v162 :: v_dual_and_b32 v150, 1, v151
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v158.h
	v_cndmask_b16 v93.l, 0x7fff, v93.h, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[171:174], v105
	ds_load_b128 v[37:40], v106
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v153, v153
	v_add3_u32 v150, v161, v150, 0x7fff
	v_and_b32_e32 v159, 1, v151
	v_mov_b16_e64 v151.l, v157.h
	v_cmp_o_f32_e64 s7, v155, v155
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[153:156], v152 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v150.h, s8
	v_add3_u32 v158, v158, v159, 0x7fff
	v_and_b32_e32 v160, 1, v151
	v_mov_b16_e64 v151.l, v196.h
	v_cmp_o_f32_e64 s0, v57, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[175:178], v111
	ds_load_b128 v[179:182], v112
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v158.h, s9
	v_add3_u32 v157, v157, v160, 0x7fff
	v_and_b32_e32 v150, 1, v151
	v_permlanex16_b32 v158, v34, s66, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v151.l, v57.h
	v_permlanex16_b32 v159, v35, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v157.h, s10
	v_add3_u32 v150, v196, v150, 0x7fff
	v_perm_b32 v210, v158, v34, v145
	v_perm_b32 v211, v158, v34, v146
	v_perm_b32 v212, v159, v35, v145
	v_permlanex16_b32 v34, v36, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v93.h, 0x7fff, v150.h, s11
	v_perm_b32 v213, v159, v35, v146
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[218:221], v152 offset:6144
	ds_load_b128 v[157:160], v119
	ds_load_b128 v[202:205], v120
	ds_load_b128 v[194:197], v127
	ds_load_b128 v[222:225], v128
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v199, v199
	v_perm_b32 v214, v34, v36, v145
	v_permlanex16_b32 v35, v93, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v215, v34, v36, v146
	v_cndmask_b16 v34.l, 0x7fff, v58.h, s5
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v186, v187
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v200, v200
	v_perm_b32 v216, v35, v93, v145
	v_perm_b32 v217, v35, v93, v146
	v_cmp_o_f32_e64 s4, v201, v201
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v93, v58, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v183.h, s6
	v_mov_b32_e32 v150, v55
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[210:217], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[161:164], v113
	ds_load_b128 v[165:168], v114
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v93, v58, v93 :: v_dual_and_b32 v58, 1, v151
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v199.h
	v_cndmask_b16 v36.l, 0x7fff, v184.h, s7
	v_cndmask_b16 v55.l, 0x7fff, v185.h, s12
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[153:160], v[210:217], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v57, v57, v58, 0x7fff
	v_and_b32_e32 v58, 1, v151
	v_mov_b16_e64 v151.l, v200.h
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[175:182], v[210:217], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[190:197], v[210:217], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v57.h, s0
	v_add3_u32 v58, v199, v58, 0x7fff
	v_and_b32_e32 v57, 1, v151
	v_mov_b16_e64 v151.l, v201.h
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v93, v33, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v152, v34, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v35.h, 0x7fff, v58.h, s1
	v_add3_u32 v57, v200, v57, 0x7fff
	v_and_b32_e32 v151, 1, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v154, v35, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v57.h, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v58, v201, v151, 0x7fff
	v_perm_b32 v151, v152, v34, v145
	v_perm_b32 v152, v152, v34, v146
	v_perm_b32 v153, v154, v35, v145
	v_permlanex16_b32 v34, v36, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v55.h, 0x7fff, v58.h, s4
	v_perm_b32 v154, v154, v35, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v155, v34, v36, v145
	v_permlanex16_b32 v35, v55, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v156, v34, v36, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v157, v35, v55, v145
	v_perm_b32 v158, v35, v55, v146
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[37:44], v[151:158], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[161:168], v[151:158], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[202:209], v[151:158], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[218:225], v[151:158], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v91
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v93, v93, v17
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v93, v93, v18
	v_div_scale_f32 v35, null, v93, v93, v19
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v17, v93, v17
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v18, v93, v18
	v_div_scale_f32 v43, null, v93, v93, v20
	v_div_scale_f32 v49, s3, v20, v93, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s51, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v19, v93, v19
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v93, v93, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v93, v93, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v93, v17
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v17, v34, v93, v18
	v_div_scale_f32 v34, s4, v21, v93, v21
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v93, v93, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v93, v93, v23
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v93
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v22, v93, v22
	v_div_fixup_f32 v18, v18, v93, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v36, v93, v20
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v93, v93, v25
	v_div_scale_f32 v36, s3, v23, v93, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v20, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v20, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v20, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v24, v93, v24
	v_div_scale_f32 v43, null, v93, v93, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v25, v93, v25
	v_div_fixup_f32 v20, v20, v93, v21
	v_div_fixup_f32 v21, v34, v93, v22
	v_fma_f32 v22, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v93, v93, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v22, v22, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v93, v93, v28
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v26, v93, v26
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v22, v22, v93, v23
	v_div_fixup_f32 v23, v35, v93, v24
	v_fma_f32 v24, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v27, v93, v27
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v93, v93, v29
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v24, v24, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v28, v93, v28
	v_div_scale_f32 v47, null, v93, v93, v30
	v_div_fixup_f32 v24, v24, v93, v25
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
	v_div_scale_f32 v42, s3, v29, v93, v29
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v25, v25, v93, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v26, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v93, v93, v31
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v30, v93, v30
	v_div_fmas_f32 v26, v26, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v93, v93, v32
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v26, v26, v93, v27
	v_div_fixup_f32 v27, v34, v93, v28
	v_fma_f32 v28, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v31, v93, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v28, v28, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v93, v93, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v32, v93, v32
	v_div_scale_f32 v46, null, v93, v93, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v28, v28, v93, v29
	v_div_fixup_f32 v29, v35, v93, v30
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v93, v93, v11
	v_fma_f32 v30, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v39
	v_div_fmas_f32 v34, v34, v41, v37
	v_fmac_f32_e32 v44, v30, v36
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v41, s1, v10, v93, v10
	v_div_scale_f32 v30, s4, v9, v93, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v44, v40
	v_fmac_f32_e32 v35, v47, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v93, v93, v12
	v_dual_mul_f32 v40, v30, v42 :: v_dual_mul_f32 v49, v41, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v93, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v30
	v_div_fixup_f32 v31, v34, v93, v31
	v_div_fixup_f32 v32, v36, v93, v32
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v93, v93, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v30, -v38, v40, v30
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v93, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v93, v93, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v93, v13
	v_div_fixup_f32 v9, v30, v93, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v93, v10
	v_mul_f32_e32 v30, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v93, v11
	v_fma_f32 v43, -v37, v30, v41
	v_div_scale_f32 v38, null, v93, v93, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v93, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v30, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v93, v12
	v_fma_f32 v36, -v37, v30, v41
	v_div_scale_f32 v43, null, v93, v93, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v36, v34, v30
	v_div_scale_f32 v34, null, v93, v93, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v93, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v93, v93, v2
	v_div_fixup_f32 v13, v30, v93, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v30, v45
	v_div_scale_f32 v30, s3, v16, v93, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v93, v93, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v30, v45
	v_div_scale_f32 v48, s4, v1, v93, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v30
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v93, v2
	v_div_fixup_f32 v14, v35, v93, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v43, v42, v30
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v93, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v93, v93, v4
	v_div_fmas_f32 v30, v30, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v93, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v30, v93, v16
	v_div_fixup_f32 v1, v34, v93, v1
	v_div_scale_f32 v34, null, v93, v93, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v93, v93, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v93, v2
	v_div_fmas_f32 v30, v30, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v93, v93, v6
	v_div_scale_f32 v37, null, v93, v93, v7
	v_div_scale_f32 v38, vcc_lo, v4, v93, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v30, v93, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v30, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s1, v5, v93, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v30, v36
	v_dual_fmac_f32 v46, v50, v46 :: v_dual_fmac_f32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v93, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v93, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v30
	v_div_scale_f32 v50, s5, v8, v93, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v30, -v34, v49, v30
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_div_fmas_f32 v30, v30, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v37, v52, v48
	v_div_fixup_f32 v5, v30, v93, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s64, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v38, v93, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v93, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s64, v79
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v79, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v93, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v90, 2
	v_add_lshl_u32 v35, v32, v89, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v93, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[48:51], 0 offen
	buffer_store_b32 v17, v34, s[48:51], 0 offen
	buffer_store_b32 v18, v35, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v88, 2
	v_add_lshl_u32 v17, v32, v87, 2
	v_add_lshl_u32 v18, v32, v86, 2
	v_add_lshl_u32 v33, v32, v85, 2
	v_add_lshl_u32 v34, v32, v84, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s64, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v19, v0, s[48:51], 0 offen
	buffer_store_b32 v20, v17, s[48:51], 0 offen
	buffer_store_b32 v21, v18, s[48:51], 0 offen
	buffer_store_b32 v22, v33, s[48:51], 0 offen
	buffer_store_b32 v23, v34, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v83, 2
	v_add_lshl_u32 v17, v32, v82, 2
	v_add_lshl_u32 v18, v32, v81, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v80, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v78, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v0, s[48:51], 0 offen
	buffer_store_b32 v25, v17, s[48:51], 0 offen
	buffer_store_b32 v26, v18, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v77, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s64, v74
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	buffer_store_b32 v27, v19, s[48:51], 0 offen
	v_add_lshl_u32 v18, v32, v76, 2
	v_add_lshl_u32 v19, v32, v75, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v28, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v74, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v73, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[48:51], 0 offen
	buffer_store_b32 v31, v19, s[48:51], 0 offen
	buffer_store_b32 v9, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v72, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v71, 2
	v_add_lshl_u32 v18, v32, v70, 2
	v_add_lshl_u32 v19, v32, v69, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[48:51], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s64, v66
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v68, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[48:51], 0 offen
	buffer_store_b32 v13, v10, s[48:51], 0 offen
	buffer_store_b32 v14, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v32, v67, 2
	v_add_lshl_u32 v10, v32, v66, 2
	v_add_lshl_u32 v11, v32, v65, 2
	v_add_lshl_u32 v12, v32, v64, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[48:51], 0 offen
	buffer_store_b32 v16, v9, s[48:51], 0 offen
	buffer_store_b32 v1, v10, s[48:51], 0 offen
	buffer_store_b32 v2, v11, s[48:51], 0 offen
	buffer_store_b32 v3, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v61, 2
	v_add_lshl_u32 v1, v32, v59, 2
	v_add_lshl_u32 v2, v32, v63, 2
	v_add_lshl_u32 v3, v32, v62, 2
	v_add_lshl_u32 v9, v32, v60, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[48:51], 0 offen
	buffer_store_b32 v5, v1, s[48:51], 0 offen
	buffer_store_b32 v6, v2, s[48:51], 0 offen
	buffer_store_b32 v7, v3, s[48:51], 0 offen
	buffer_store_b32 v8, v9, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 228
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 228
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12036
; TotalNumSgprs: 72
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 228
; Occupancy: 6
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
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
