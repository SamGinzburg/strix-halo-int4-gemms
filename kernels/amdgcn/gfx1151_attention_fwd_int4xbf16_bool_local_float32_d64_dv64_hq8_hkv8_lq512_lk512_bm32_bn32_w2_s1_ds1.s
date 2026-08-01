	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x60
	s_load_b32 s7, s[0:1], 0x84
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v33, 1, v0
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x7c
	s_load_b64 s[52:53], s[0:1], 0x0
	s_load_b64 s[48:49], s[0:1], 0x38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s67, s3, 9
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v57, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s6, v33
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	s_add_i32 s66, s6, s67
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v83, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	s_mov_b32 s40, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v84, 2, v83
	v_or_b32_e32 v82, 4, v83
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v9, v3, 30, v83
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[58:59], null, s64, v33, v[57:58]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s8, s64, v57
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s53, 0xffff
	v_lshlrev_b32_e32 v86, 2, v9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s6, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 6, v83
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s64, s66, v[58:59]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v87, 4, v86
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 8, v83
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v79, 10, v83
	v_or_b32_e32 v78, 12, v83
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v77, 14, v83
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, 16, v83
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[5:8], v1, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 18, v83
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s2, 0x200
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v72, 20, v83
	v_and_or_b32 v85, v33, 16, v1
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 22, v83
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v70, 24, v83
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v9, s6, v85
	.loc	1 808 34 is_stmt 1              ; attention.py:808:34
	s_lshr_b32 s11, s11, 27
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v69, 26, v83
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s69, s9, s11
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v76, 28, v83
	v_or_b32_e32 v75, 30, v83
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v9
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s68, s10, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s69, s69, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s68, s69
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v86, v5
	ds_bpermute_b32 v35, v86, v6
	ds_bpermute_b32 v37, v86, v7
	ds_bpermute_b32 v39, v86, v8
	ds_bpermute_b32 v36, v87, v5
	ds_bpermute_b32 v38, v87, v6
	ds_bpermute_b32 v40, v87, v7
	ds_bpermute_b32 v41, v87, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_35
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[12:19], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v5, s66, v85
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v6, 1, v0
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x68
	s_load_b64 s[50:51], s[0:1], 0x30
	v_dual_mov_b32 v8, 0x6420 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v45, 0x7531 :: v_dual_add_nc_u32 v4, s7, v4
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v46, 2, v33
	v_and_b32_e32 v101, 0x3f0, v2
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_and_b32 v2, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 24, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s17, 0xffff
	s_mov_b32 s52, s16
	v_mov_b32_e32 v48, 0x7632
	buffer_load_u16 v43, v5, s[52:55], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v5, 16, v0
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_add_i32 s7, s3, s0
	v_cndmask_b32_e64 v49, 0x7531, v8, s1
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v7, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v5
	v_lshl_or_b32 v124, v1, 5, v3
	v_mov_b32_e32 v28, v25
	v_xor_b32_e32 v123, v101, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v60, v39, v41, s0
	v_cndmask_b32_e64 v59, v37, v40, s0
	v_cndmask_b32_e64 v62, v41, v39, s0
	v_cndmask_b32_e64 v61, v40, v37, s0
	v_cndmask_b32_e64 v64, v35, v38, s0
	v_cndmask_b32_e64 v66, v38, v35, s0
	v_cndmask_b32_e64 v37, 0x6420, v45, s1
	v_lshl_or_b32 v38, v49, 8, v49
	v_cndmask_b32_e64 v39, 0x1054, v47, s0
	v_cndmask_b32_e64 v40, 0x3276, v48, s0
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v42, 56, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v38, 0x750031, v38
	v_cndmask_b32_e64 v63, v34, v36, s0
	v_cndmask_b32_e64 v65, v36, v34, s0
	v_xor_b32_e32 v34, 8, v123
	v_xor_b32_e32 v35, 8, v124
	v_xor_b32_e32 v36, 16, v124
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v50, 6, v6
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v127, 0, v35
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v128, 0, v36
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v35, 0x750031, v37
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v36, 0x540054, v39
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v37, 0x760076, v40
	v_mul_lo_u32 v33, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, 1, v57
	v_or_b32_e32 v89, 2, v57
	v_or_b32_e32 v90, 3, v57
	v_or_b32_e32 v91, 4, v57
	v_or_b32_e32 v92, 5, v57
	v_or_b32_e32 v93, 6, v57
	v_or_b32_e32 v94, 7, v57
	v_or_b32_e32 v95, 8, v57
	v_or_b32_e32 v96, 9, v57
	v_or_b32_e32 v97, 10, v57
	v_or_b32_e32 v98, 11, v57
	v_or_b32_e32 v99, 12, v57
	v_or_b32_e32 v100, 13, v57
	v_or_b32_e32 v103, 14, v57
	v_or_b32_e32 v104, 15, v57
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v121, s4, v4
	v_mov_b32_e32 v24, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s7, -8
	v_and_or_b32 v126, v46, 60, v50
	v_xor_b32_e32 v41, 24, v124
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_add_nc_u32 v122, s5, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s5, s7, 3
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s7, s20, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s4
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s21, s5
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s22, s3
	v_lshl_add_u32 v102, v1, 1, 0
	v_or_b32_e32 v105, s67, v83
	v_or_b32_e32 v106, s67, v84
	v_or_b32_e32 v107, s67, v82
	v_or_b32_e32 v108, s67, v81
	v_or_b32_e32 v109, s67, v80
	v_or_b32_e32 v110, s67, v79
	v_or_b32_e32 v111, s67, v78
	v_or_b32_e32 v112, s67, v77
	v_or_b32_e32 v113, s67, v74
	v_or_b32_e32 v114, s67, v73
	v_or_b32_e32 v115, s67, v72
	v_or_b32_e32 v116, s67, v71
	v_or_b32_e32 v117, s67, v70
	v_or_b32_e32 v118, s67, v69
	v_or_b32_e32 v119, s67, v76
	v_or_b32_e32 v120, s67, v75
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v129, 0, v41
	v_dual_mov_b32 v13, v25 :: v_dual_mov_b32 v154, 0xff800000
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v131, v25
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s65, v42
	v_xor_b32_e32 v130, 64, v126
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v133, v33, v88
	v_add_nc_u32_e32 v134, v33, v89
	v_add_nc_u32_e32 v135, v33, v90
	v_add_nc_u32_e32 v136, v33, v91
	v_add_nc_u32_e32 v137, v33, v92
	v_add_nc_u32_e32 v138, v33, v93
	v_add_nc_u32_e32 v139, v33, v94
	v_add_nc_u32_e32 v140, v33, v95
	v_add_nc_u32_e32 v141, v33, v96
	v_add_nc_u32_e32 v142, v33, v97
	v_add_nc_u32_e32 v143, v33, v98
	v_add_nc_u32_e32 v144, v33, v99
	v_add_nc_u32_e32 v145, v33, v100
	v_add_nc_u32_e32 v146, v33, v103
	v_add_nc_u32_e32 v147, v33, v104
	v_add_nc_u32_e32 v148, v33, v57
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s23, s6
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_i32 s74, s3, s5
	s_lshl_b32 s70, s65, 3
	s_lshl_b32 s71, s65, 4
	s_mul_i32 s72, s65, 24
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s61, s15, 0xffff
	s_mov_b32 s56, s18
	s_mov_b32 s60, s14
	s_mov_b32 s52, s12
	s_mov_b32 s53, s13
	s_mov_b32 s57, s19
	s_add_i32 s74, s74, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[67:68], null, s65, v44, v[42:43]
	v_add_nc_u32_e32 v68, 0, v34
	v_lshl_or_b32 v34, v38, 4, v38
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v132, 0x7050301, v34
	v_lshl_or_b32 v34, v35, 4, v35
	v_lshl_or_b32 v35, v36, 4, v36
	v_lshl_or_b32 v36, v37, 4, v37
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v37, 16, v43
	v_mov_b32_e32 v9, v25
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v149, 0x7050301, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v11, v25 :: v_dual_mul_f32 v152, s7, v37
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v151, 0x7060706, v36
	v_and_b32_e32 v150, 0x5040504, v35
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	v_and_b16 v54.l, 0xff, v54.l
	v_and_b16 v54.h, 0xff, v54.h
	v_and_b16 v50.h, 0xff, v50.h
	v_and_b16 v50.l, 0xff, v50.l
	v_and_b16 v49.l, 0xff, v49.l
	v_and_b16 v49.h, 0xff, v49.h
	v_and_b16 v155.h, 0xff, v52.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v53.l, 0xff, v53.l
	v_and_b16 v51.l, 0xff, v51.l
	v_and_b16 v51.h, 0xff, v51.h
	v_cmp_ne_u16_e64 s3, 0, v49.h
	v_cmp_ne_u16_e64 s5, 0, v49.l
	v_cmp_ne_u16_e64 s6, 0, v50.l
	v_cmp_ne_u16_e64 s10, 0, v50.h
	v_cmp_ne_u16_e64 s15, 0, v54.h
	v_cmp_ne_u16_e64 s16, 0, v54.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v158.h, v159.l
	v_mov_b16_e64 v159.l, v52.l
	v_mov_b16_e64 v159.h, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v175, v152, v33
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v33.l, 0xff, v55.l
	v_and_b16 v53.h, 0xff, v53.h
	v_and_b16 v156.h, 0xff, v52.h
	v_cmp_ne_u16_e64 s12, 0, v51.h
	v_cmp_ne_u16_e64 s18, 0, v51.l
	v_cmp_ne_u16_e64 s21, 0, v155.h
	v_cmp_ne_u16_e64 s14, 0, v53.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s7, s7, s3
	s_and_b32 s3, s9, s5
	s_and_b32 s9, s13, s6
	s_and_b32 s13, s17, s10
	s_and_b32 s15, s33, s15
	s_and_b32 s16, s34, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v55.h, 0xff, v55.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v177, v152, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v33.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v33, 0, 1, s13
	v_cndmask_b32_e64 v50, 0, 1, s15
	v_cndmask_b32_e64 v35, 0, 1, s16
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v56.h, 0xff, v56.h
	v_and_b16 v56.l, 0xff, v56.l
	v_cmp_ne_u16_e64 s20, 0, v156.h
	v_cmp_ne_u16_e64 s11, 0, v53.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s31, s14
	s_and_b32 s17, s19, s12
	s_and_b32 s19, s22, s18
	s_and_b32 s22, s28, s21
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v163.h, v164.l
	v_mov_b16_e64 v164.l, v52.l
	v_mov_b16_e64 v164.h, v165.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v152, v34
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v34, 0, 1, s3
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v169.h, v170.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v170, v36
	v_cvt_f32_i32_e32 v173, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v55.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s7
	v_cndmask_b32_e64 v36, 0, 1, s9
	v_cndmask_b32_e64 v49, 0, 1, s14
	v_cndmask_b32_e64 v53, 0, 1, s19
	v_cndmask_b32_e64 v55, 0, 1, s22
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v50.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v56.l
	v_cmp_ne_u16_e64 s25, 0, v56.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s11, s30, s11
	s_and_b32 s20, s27, s20
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v174, v38
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v38, 0, 1, s11
	v_cndmask_b32_e64 v51, 0, 1, s17
	v_cndmask_b32_e64 v54, 0, 1, s20
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v37.l
	v_mov_b16_e32 v37.l, v49.l
	v_or_b16 v49.h, v36.l, v33.l
	v_mov_b16_e32 v33.l, v55.l
	v_or_b16 v50.h, v35.l, v34.h
	v_mov_b16_e32 v35.l, v53.l
	s_and_b32 s21, s35, s23
	s_and_b32 s23, s36, s24
	s_and_b32 s24, s37, s25
	s_and_b32 s25, s38, s26
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v52.h, v155.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v155, 0, 1, s23
	v_cndmask_b32_e64 v178, 0, 1, s25
	v_or_b16 v49.l, v34.l, v33.h
	v_lshlrev_b16 v33.h, 8, v37.l
	v_mov_b16_e32 v34.l, v38.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v37.l, v54.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v51.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v171.h, v156.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v56, 0, 1, s21
	v_cndmask_b32_e64 v156, 0, 1, s24
	v_mov_b16_e64 v36.l, v178.l
	v_mov_b16_e64 v38.l, v155.l
	v_or_b16 v50.l, v34.l, v33.h
	v_or_b16 v33.h, v37.l, v33.l
	v_or_b16 v33.l, v35.l, v34.h
	v_lshlrev_b16 v35.h, 8, v36.l
	v_mov_b16_e64 v36.l, v156.l
	v_lshlrev_b16 v36.h, 8, v38.l
	v_mov_b16_e32 v38.l, v56.l
	v_perm_b32 v37, v33, v49, v132
	v_perm_b32 v33, v33, v49, v149
	v_or_b16 v34.h, v36.l, v35.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v34.l, v38.l, v36.h
	ds_bpermute_b32 v37, v86, v37
	ds_bpermute_b32 v33, v87, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v172.l, v52.l
	v_mov_b16_e64 v172.h, v157.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v38, v34, v50, v132
	v_perm_b32 v34, v34, v50, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.l, v52.l
	v_mov_b16_e64 v165.h, v166.l
	v_mov_b16_e64 v166.h, v167.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v38, v86, v38
	ds_bpermute_b32 v34, v87, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v167.l, v52.l
	v_mov_b16_e64 v167.h, v168.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v157.l, v52.l
	v_mov_b16_e64 v157.h, v158.l
	v_mov_b16_e64 v158.l, v52.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v155, v33, v37, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v152, v174
	v_mul_f32_e32 v35, v152, v170
	v_mul_f32_e32 v43, v152, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v160.l, v52.l
	v_mov_b16_e64 v160.h, v161.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_mul_f32_e32 v56, v35, v165
	v_dual_mul_f32 v45, v152, v45 :: v_dual_mul_f32 v50, v43, v172
	v_mul_f32_e32 v44, v152, v44
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, v152, v40 :: v_dual_mul_f32 v43, v45, v158
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v158, v37, v33, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v44, v157
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v157, v34, v38, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v152, v47
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, v38, v34, s0
	v_and_b32_e32 v33, 1, v155
	v_and_b32_e32 v34, 0x100, v155
	v_and_b32_e32 v38, 1, v157
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v152, v46 :: v_dual_mul_f32 v53, v47, v160
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.l, v52.l
	v_mov_b16_e64 v161.h, v162.l
	v_mov_b16_e64 v162.l, v52.l
	v_mov_b16_e64 v162.h, v163.l
	v_mov_b16_e64 v163.l, v52.l
	v_mov_b16_e64 v166.l, v52.l
	v_mov_b16_e64 v168.l, v52.l
	v_mov_b16_e64 v168.h, v169.l
	v_mov_b16_e64 v169.l, v52.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v39, v152, v39
	v_mul_f32_e32 v44, v46, v159
	v_dual_mul_f32 v48, v152, v48 :: v_dual_mul_f32 v45, v175, v162
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v33
	v_cmp_eq_u32_e64 s28, 0, v34
	v_and_b32_e32 v33, 1, v37
	v_and_b32_e32 v34, 0x100, v37
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v152, v173
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v171.l, v52.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v152, v42
	v_mul_f32_e32 v41, v152, v41
	v_dual_mul_f32 v54, v48, v161 :: v_dual_and_b32 v47, 0x100, v158
	v_mul_f32_e32 v156, v40, v169
	v_dual_mul_f32 v55, v177, v164 :: v_dual_and_b32 v40, 1, v158
	v_mul_f32_e32 v46, v176, v163
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 1, v33
	v_cmp_eq_u32_e64 s5, 0, v34
	v_mad_u64_u32 v[33:34], null, s29, s65, v[67:68]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v36, v166 :: v_dual_mul_f32 v36, v49, v167
	v_mul_f32_e32 v49, v39, v168
	v_dual_mul_f32 v42, v42, v171 :: v_dual_and_b32 v39, 0x100, v157
	v_mul_f32_e32 v41, v41, v52
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s18, 1, v38
	v_cmp_eq_u32_e64 s10, 1, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s26, 0, v39
	v_cmp_eq_u32_e64 s12, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v41, s27
	v_cndmask_b32_e64 v160, v42, 0xff800000, s28
	v_cndmask_b32_e64 v161, 0xff800000, v43, s18
	v_cndmask_b32_e64 v162, 0xff800000, v45, s10
	v_cndmask_b32_e64 v163, v44, 0xff800000, s26
	v_cndmask_b32_e64 v164, v46, 0xff800000, s12
	v_cndmask_b32_e64 v166, v36, 0xff800000, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v35, s6
	v_cndmask_b32_e64 v35, v162, v159, s0
	v_cndmask_b32_e64 v38, v164, v160, s0
	v_cndmask_b32_e64 v39, v160, v164, s0
	v_cndmask_b32_e64 v42, v166, v163, s0
	v_cndmask_b32_e64 v40, v165, v161, s0
	v_cndmask_b32_e64 v41, v161, v165, s0
	v_cndmask_b32_e64 v43, v163, v166, s0
	ds_bpermute_b32 v167, v126, v35
	ds_bpermute_b32 v169, v126, v38
	ds_bpermute_b32 v170, v130, v39
	ds_bpermute_b32 v171, v126, v40
	ds_bpermute_b32 v172, v130, v41
	ds_bpermute_b32 v173, v126, v42
	ds_bpermute_b32 v174, v130, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v39, 0x10000, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v159, v162, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v176, 0x10000, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v33, s70, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s29, 0, v39
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v168, v130, v36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v176
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v36, v33, s71, 1
	v_add_lshl_u32 v33, v33, s72, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, v49, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v49, 0x10000, v157
	v_and_b32_e32 v157, 0x1000000, v157
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, v55, 0xff800000, s31
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v35, s4
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v181, v170, v169, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v49
	v_and_b32_e32 v49, 0x10000, v155
	v_and_b32_e32 v155, 0x1000000, v155
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, v169, v170, s1
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v170, v172, v171, s1
	v_cndmask_b32_e64 v171, v171, v172, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s36, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v172, v174, v173, s1
	v_cndmask_b32_e64 v173, v173, v174, s1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v174, v167, v167
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v158, 0x1000000, v158
	v_cmp_eq_u32_e64 s35, 0, v157
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, v53, 0xff800000, s33
	v_cndmask_b32_e64 v157, v50, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v155
	v_cmp_eq_u32_e64 s34, 0, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v36, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, v175, v53, s0
	v_cndmask_b32_e64 v155, v55, v157, s0
	v_cndmask_b32_e64 v177, v157, v55, s0
	v_cndmask_b32_e64 v56, v56, 0xff800000, s34
	v_cndmask_b32_e64 v178, v51, 0xff800000, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v33, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v46, 0x1000000, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v51, v126, v155
	ds_bpermute_b32 v155, v130, v177
	ds_bpermute_b32 v177, v126, v49
	v_cndmask_b32_e64 v49, v56, v178, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[33:36], v34, s[60:63], 0 offen
	buffer_load_b128 v[37:40], v38, s[60:63], 0 offen
	buffer_load_b128 v[41:44], v41, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, v54, 0xff800000, s35
	v_cndmask_b32_e64 v158, v53, v175, s0
	ds_bpermute_b32 v180, v126, v49
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v49, v168, v168
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v46
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v158, v130, v158
	v_cndmask_b32_e64 v179, v178, v56, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v174, v49
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, v156, 0xff800000, s30
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v184, v178, v161, v163
.Ltmp8:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v153
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v179, v130, v179
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s39, 0xff800000, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, v156, v54, s0
	v_cndmask_b32_e64 v176, v54, v156, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v183, v155, v51, s1
	v_cndmask_b32_e64 v155, v51, v155, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v171, v172, v173
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v50, v126, v50
	ds_bpermute_b32 v176, v130, v176
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v174, v169, v183, v155
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 32
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v49, v181, v174
	v_max_f32_e32 v174, v159, v160
.Ltmp14:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v174, v174, v157, v184
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, v176, v50, s1
	v_cndmask_b32_e64 v176, v50, v176, s1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v177, v158, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v50, v51, v50, v176
	v_max3_f32 v51, v180, v179, v170
	v_max3_f32 v49, v49, v51, v50
	v_max3_f32 v50, v165, v166, v175
	v_max3_f32 v51, v164, v55, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v185, v49
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v51, v50, v156
	v_max3_f32 v51, v53, v54, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v174, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v174, v50, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v50, v153, v50, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v185, v185
.Ltmp25:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v125, v125, v125
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, v168, v167, s1
	v_cndmask_b32_e64 v167, v167, v168, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v178, v178, v50 :: v_dual_max_f32 v51, v49, v51
	v_sub_f32_e32 v54, v54, v50
	v_sub_f32_e32 v162, v162, v50
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v174, v153, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, v179, v180, s1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v125, v125, v51
	v_max_f32_e32 v49, v154, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v164, v50
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v174, v174
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v170, v170, v125 :: v_dual_max_f32 v49, v49, v51
	v_sub_f32_e32 v172, v172, v125
	v_sub_f32_e32 v167, v167, v125
	v_dual_sub_f32 v169, v169, v125 :: v_dual_sub_f32 v166, v166, v50
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v184, v154, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, v180, v179, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v174, 0, v174, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v173, v125
	v_dual_sub_f32 v179, v183, v125 :: v_dual_sub_f32 v156, v156, v50
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v168, v184
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, v158, v177, s1
	v_cndmask_b32_e64 v158, v177, v158, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v177, v181, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v169, v169
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v180, v184, v125 :: v_dual_sub_f32 v159, v159, v50
	v_dual_sub_f32 v158, v158, v125 :: v_dual_sub_f32 v157, v157, v50
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v51, 0, v168, s39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v185, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v172, v172
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v174
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v168, v168
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v53, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v158, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v182, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v182, v53
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s3
	v_cndmask_b32_e64 v169, 0, v169, s13
	v_cndmask_b32_e64 v172, 0, v172, s15
	v_cndmask_b32_e64 v53, 0, v168, s7
	v_cndmask_b32_e64 v168, 0, v177, s9
	v_cndmask_b32_e64 v173, 0, v173, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v154, v154, v125 :: v_dual_sub_f32 v163, v163, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v179, s17
	v_cndmask_b32_e64 v179, 0, v180, s21
	v_cndmask_b32_e64 v158, 0, v158, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v125
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v53, v167 :: v_dual_mul_f32 v28, v28, v174
	v_dual_add_f32 v167, v168, v169 :: v_dual_mul_f32 v30, v30, v174
	v_add_f32_e32 v168, v172, v173
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v170, v170
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v179, v158
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v171, v171
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v176, v176, v125 :: v_dual_sub_f32 v161, v161, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v56, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s22
	v_cndmask_b32_e64 v170, 0, v170, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s20
	v_cndmask_b32_e64 v171, 0, v171, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v181, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v153, v153, v154 :: v_dual_add_f32 v154, v170, v171
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v53, v167 :: v_dual_mul_f32 v20, v20, v174
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s25
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v154, v168
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, v56, 0, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v18, v18, v174 :: v_dual_add_f32 v169, v180, v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v159, s27
	v_cndmask_b32_e64 v155, 0, v155, s19
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v174
	v_mul_f32_e32 v24, v24, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v52.l
	v_mov_b16_e64 v159.l, v56.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v155, v177, v155 :: v_dual_mul_f32 v10, v10, v174
.Ltmp37:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v16, v16, v174 :: v_dual_and_b32 v159, 1, v159
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v155, v153
	v_dual_add_f32 v155, v158, v169 :: v_dual_sub_f32 v160, v160, v50
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v159, v56, v159, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v153, v154, v155
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v56.h, v52.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v178, v178
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v53, v153 :: v_dual_mul_f32 v14, v14, v174
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, v157, 0, s36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v158, v164
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v56.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v55, v50
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v169, v156, 0, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v156.h, v52.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, v178, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v56, 1, v56
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v155, v166
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v166, v54, 0, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v56, v153, v56, 0x7fff
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v54, v53
.Ltmp45:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v174
	v_mul_f32_e32 v27, v27, v174
	v_mul_f32_e32 v29, v29, v174
	v_mul_f32_e32 v31, v31, v174
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, v55, 0, s31
	v_cndmask_b32_e64 v55, v160, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.l, 0x7fff, v159.h, s7
	v_cmp_o_f32_e64 s7, v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v161, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v52.l
	v_mov_b16_e64 v156.l, v55.h
	v_cmp_o_f32_e64 s3, v55, v55
	v_cndmask_b16 v173.l, 0x7fff, v56.h, s7
	v_mov_b16_e32 v56.h, v52.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v165, v165, v50 :: v_dual_and_b32 v156, 1, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v166, v166
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v174
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v156, v55, v156, 0x7fff
	v_mov_b16_e64 v55.l, v157.h
	v_mov_b16_e32 v55.h, v52.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v174
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, v182, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v156.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, v163, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	v_cmp_o_f32_e64 s3, v157, v157
	v_mov_b16_e64 v56.l, v165.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v156.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v55, v157, v55, 0x7fff
	v_mov_b16_e64 v157.l, v159.h
	v_mov_b16_e64 v157.h, v52.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v174 :: v_dual_and_b32 v161, 1, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v173.h, 0x7fff, v55.h, s3
	v_cmp_o_f32_e64 s3, v156, v156
	v_and_b32_e32 v55, 1, v157
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v153, v156, v161, 0x7fff
	v_mov_b16_e64 v153.l, v166.h
	v_and_b32_e32 v56, 1, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, v158, 0, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v156, v159, v55, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v153.h, s3
	v_mov_b16_e64 v153.h, v52.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v174
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v162, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v159, v159
	v_add3_u32 v159, v165, v56, 0x7fff
	v_and_b32_e32 v153, 1, v153
	v_mov_b16_e64 v56.l, v157.h
	v_mov_b16_e32 v56.h, v52.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v175, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v158.h
	v_mov_b16_e64 v161.h, v52.l
	v_add3_u32 v153, v166, v153, 0x7fff
	v_and_b32_e32 v162, 1, v56
	v_cndmask_b16 v55.l, 0x7fff, v156.h, s3
	v_cmp_o_f32_e64 s3, v157, v157
	v_and_b32_e32 v161, 1, v161
	v_cndmask_b16 v56.h, 0x7fff, v153.h, s7
	v_add3_u32 v153, v157, v162, 0x7fff
	v_mov_b16_e64 v157.l, v168.h
	v_mov_b16_e64 v157.h, v52.l
	v_add3_u32 v156, v158, v161, 0x7fff
	v_cmp_o_f32_e64 s7, v158, v158
	v_mov_b16_e64 v158.l, v167.h
	v_mov_b16_e64 v158.h, v52.l
	v_and_b32_e32 v157, 1, v157
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s3
	v_cndmask_b16 v153.l, 0x7fff, v156.h, s7
	v_cmp_o_f32_e64 s3, v168, v168
	v_and_b32_e32 v156, 1, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, v155, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v168, v157, 0x7fff
	v_mov_b16_e64 v157.l, v154.h
	v_mov_b16_e64 v157.h, v52.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v175
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v162, 0, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v52.h, 0x7fff, v155.h, s3
	v_add3_u32 v156, v167, v156, 0x7fff
	v_and_b32_e32 v155, 1, v157
	v_cmp_o_f32_e64 s9, v165, v165
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v162, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v162, v[37:40] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v162, v[41:44] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v162, v[45:48] offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v154, v155, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v35, v102 offset:512
	ds_load_u16_d16 v42, v102 offset:288
	ds_load_u16_d16 v156, v102 offset:608
	ds_load_u16_d16 v155, v102 offset:352
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, v164, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.l, 0x7fff, v159.h, s9
	v_mov_b16_e64 v159.l, v158.h
	v_mov_b16_e64 v159.h, v52.l
	v_mov_b16_e64 v161.l, v169.h
	v_mov_b16_e64 v161.h, v52.l
	v_cmp_o_f32_e64 s6, v154, v154
	v_cmp_o_f32_e64 s9, v164, v164
	v_and_b32_e32 v157, 1, v159
	v_mov_b16_e64 v159.l, v164.h
	v_and_b32_e32 v33, 1, v161
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v215.l, 0x7fff, v155.h, s6
	v_cmp_o_f32_e64 s5, v158, v158
	v_add3_u32 v34, v158, v157, 0x7fff
	v_and_b32_e32 v159, 1, v159
	v_add3_u32 v33, v169, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v169, v169
	v_permlanex16_b32 v37, v173, s73, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s3, v167, v167
	v_add3_u32 v36, v164, v159, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v102
	ds_load_u16_d16 v41, v102 offset:32
	ds_load_u16_d16 v164, v102 offset:576
	ds_load_u16_d16 v34, v102 offset:256
	ds_load_u16_d16 v162, v102 offset:64
	ds_load_u16_d16 v163, v102 offset:320
	ds_load_u16_d16_hi v155, v102 offset:480
	ds_load_u16_d16 v154, v102 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v215.h, 0x7fff, v34.h, s5
	v_cndmask_b16 v217.h, 0x7fff, v33.h, s7
	v_perm_b32 v172, v37, v173, v150
	v_cndmask_b16 v217.l, 0x7fff, v36.h, s9
	v_permlanex16_b32 v36, v160, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v173, v37, v173, v151
	v_cndmask_b16 v52.l, 0x7fff, v156.h, s3
	v_permlanex16_b32 v175, v55, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v177, v56, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v36, v160, v150
	v_perm_b32 v171, v36, v160, v151
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v36, v102 offset:768
	ds_load_u16_d16 v165, v102 offset:832
	ds_load_u16_d16_hi v164, v102 offset:704
	ds_load_u16_d16 v43, v102 offset:544
	ds_load_u16_d16_hi v33, v102 offset:128
	ds_load_u16_d16_hi v41, v102 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v162, v102 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v102 offset:224
	ds_load_u16_d16_hi v35, v102 offset:640
	ds_load_u16_d16_hi v34, v102 offset:384
	ds_load_u16_d16_hi v42, v102 offset:416
	ds_load_u16_d16_hi v163, v102 offset:448
	ds_load_u16_d16 v166, v102 offset:1088
	ds_load_u16_d16 v167, v102 offset:1344
	ds_load_u16_d16 v168, v102 offset:1600
	ds_load_u16_d16 v169, v102 offset:1856
	ds_load_u16_d16 v178, v102 offset:2112
	ds_load_u16_d16 v180, v102 offset:2624
	ds_load_u16_d16 v181, v102 offset:2880
	ds_load_u16_d16 v182, v102 offset:3136
	ds_load_u16_d16 v183, v102 offset:3392
	ds_load_u16_d16 v184, v102 offset:3648
	ds_load_u16_d16 v185, v102 offset:3904
	ds_load_u16_d16 v37, v102 offset:1024
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v36, v102 offset:896
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v43, v102 offset:672
	ds_load_u16_d16 v44, v102 offset:800
	ds_load_u16_d16_hi v165, v102 offset:960
	ds_load_u16_d16 v157, v102 offset:864
	ds_load_u16_d16_hi v156, v102 offset:736
	ds_load_u16_d16 v38, v102 offset:1280
	ds_load_u16_d16 v45, v102 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v166, v102 offset:1216
	ds_load_u16_d16 v158, v102 offset:1120
	ds_load_u16_d16 v39, v102 offset:1536
	ds_load_u16_d16 v46, v102 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v167, v102 offset:1472
	ds_load_u16_d16 v159, v102 offset:1376
	ds_load_u16_d16 v40, v102 offset:1792
	ds_load_u16_d16 v47, v102 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v168, v102 offset:1728
	ds_load_u16_d16 v160, v102 offset:1632
	ds_load_u16_d16 v186, v102 offset:2048
	ds_load_u16_d16 v48, v102 offset:1824
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v169, v102 offset:1984
	ds_load_u16_d16 v161, v102 offset:1888
	ds_load_u16_d16 v187, v102 offset:2304
	ds_load_u16_d16 v194, v102 offset:2080
	ds_load_u16_d16 v179, v102 offset:2368
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v178, v102 offset:2240
	ds_load_u16_d16 v202, v102 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v37, v102 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v44, v102 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v157, v102 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v102 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v45, v102 offset:1184
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v158, v102 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v39, v102 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v46, v102 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v159, v102 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v40, v102 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v47, v102 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v102 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v186, v102 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v48, v102 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v161, v102 offset:2016
	ds_load_u16_d16 v188, v102 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v187, v102 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v194, v102 offset:2208
	ds_load_u16_d16 v195, v102 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v179, v102 offset:2496
	ds_load_u16_d16 v203, v102 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v202, v102 offset:2272
	ds_load_u16_d16 v189, v102 offset:2816
	ds_load_u16_d16 v196, v102 offset:2592
	ds_load_u16_d16_hi v180, v102 offset:2752
	ds_load_u16_d16 v204, v102 offset:2656
	ds_load_u16_d16 v190, v102 offset:3072
	ds_load_u16_d16 v197, v102 offset:2848
	ds_load_u16_d16_hi v181, v102 offset:3008
	ds_load_u16_d16 v205, v102 offset:2912
	ds_load_u16_d16 v191, v102 offset:3328
	ds_load_u16_d16 v198, v102 offset:3104
	ds_load_u16_d16_hi v182, v102 offset:3264
	ds_load_u16_d16 v206, v102 offset:3168
	ds_load_u16_d16 v192, v102 offset:3584
	ds_load_u16_d16 v199, v102 offset:3360
	ds_load_u16_d16_hi v183, v102 offset:3520
	ds_load_u16_d16 v207, v102 offset:3424
	ds_load_u16_d16 v193, v102 offset:3840
	ds_load_u16_d16 v200, v102 offset:3616
	ds_load_u16_d16_hi v184, v102 offset:3776
	ds_load_u16_d16 v208, v102 offset:3680
	ds_load_u16_d16 v201, v102 offset:3872
	ds_load_u16_d16_hi v185, v102 offset:4032
	ds_load_u16_d16 v209, v102 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v188, v102 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v195, v102 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v203, v102 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v189, v102 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v196, v102 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v204, v102 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v190, v102 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v197, v102 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v205, v102 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v191, v102 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v198, v102 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v206, v102 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v192, v102 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v199, v102 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v207, v102 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v193, v102 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v200, v102 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v208, v102 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v201, v102 offset:4000
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v174
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v102 offset:4064
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v174
	v_mul_f32_e32 v23, v23, v174
	v_mul_f32_e32 v9, v9, v174
	v_mul_f32_e32 v11, v11, v174
	v_mul_f32_e32 v13, v13, v174
	v_mul_f32_e32 v15, v15, v174
	v_mul_f32_e32 v1, v1, v174
	v_mul_f32_e32 v3, v3, v174
	v_mul_f32_e32 v5, v5, v174
	v_mul_f32_e32 v7, v7, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v174, v175, v55, v150
	v_perm_b32 v175, v175, v55, v151
	v_perm_b32 v176, v177, v56, v150
	v_perm_b32 v177, v177, v56, v151
	v_permlanex16_b32 v211, v153, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v213, v52, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v216, v215, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v218, v217, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[170:177], v[1:8]
	v_mov_b32_e32 v154, v49
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[170:177], v[25:32]
.Ltmp48:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v53, v54
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v210, v211, v153, v150
	v_perm_b32 v211, v211, v153, v151
	v_perm_b32 v212, v213, v52, v150
	v_perm_b32 v213, v213, v52, v151
	v_perm_b32 v214, v216, v215, v150
	v_perm_b32 v215, v216, v215, v151
	v_perm_b32 v216, v218, v217, v150
	v_perm_b32 v217, v218, v217, v151
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[170:177], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[162:169], v[170:177], v[9:16]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v33, v131, v51
	v_mov_b32_e32 v153, v50
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[186:193], v[210:217], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[194:201], v[210:217], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[178:185], v[210:217], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[202:209], v[210:217], v[1:8]
	v_mov_b32_e32 v131, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_36
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s29, s68, s67
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v56, s47 :: v_dual_add_nc_u32 v37, 0, v123
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s29, s64, v[58:59]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v55, s46 :: v_dual_mov_b32 v52, s43
	v_dual_mov_b32 v53, s44 :: v_dual_mov_b32 v50, s41
	v_mov_b32_e32 v51, s42
	v_mov_b32_e32 v49, s40
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v171, s68, v57
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s6, s74, s68
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v54, s45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v68, v[35:36]
	v_add_nc_u32_e32 v33, 0, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[155:158], v33 offset1:1
	ds_load_2addr_stride64_b64 v[159:162], v127 offset1:1
	ds_load_2addr_stride64_b64 v[163:166], v128 offset1:1
	ds_load_2addr_stride64_b64 v[167:170], v129 offset1:1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v171, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v171, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s7, vcc_lo, s3
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[65:66], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[65:66], v[49:56] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v49, v105, s68, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[61:62], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[161:162], v[61:62], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v155, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v106, s68, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[163:164], v[63:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[165:166], v[63:64], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v156, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v107, s68, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[167:168], v[59:60], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[169:170], v[59:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v157, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v108, s68, 1
	buffer_load_u16 v158, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v109, s68, 1
	buffer_load_u16 v159, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v110, s68, 1
	buffer_load_u16 v160, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v111, s68, 1
	buffer_load_u16 v161, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v112, s68, 1
	buffer_load_u16 v162, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v113, s68, 1
	buffer_load_u16 v163, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v114, s68, 1
	buffer_load_u16 v164, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v115, s68, 1
	buffer_load_u16 v165, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v116, s68, 1
	buffer_load_u16 v166, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v117, s68, 1
	buffer_load_u16 v167, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v118, s68, 1
	buffer_load_u16 v168, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v119, s68, 1
	buffer_load_u16 v169, v49, s[56:59], 0 offen
	v_add_lshl_u32 v49, v120, s68, 1
	buffer_load_u16 v170, v49, s[56:59], 0 offen
	v_mov_b16_e32 v49.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s7
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s6, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s3, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s3
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v49, v[50:51], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s68, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v50, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v50, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s9, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s9
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s6, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s3, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s3
	global_load_d16_u8 v49, v[50:51], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s68, v89
	v_mov_b16_e32 v50.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v51, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v51, v122
	v_mov_b16_e32 v50.l, v50.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s13
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s6, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s3, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s3
	global_load_d16_u8 v50, v[51:52], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s68, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v51, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v51, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s17, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s17
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s6, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s3, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s3
	global_load_d16_hi_u8 v50, v[51:52], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s68, v91
	v_mov_b16_e32 v51.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v52, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v52, v122
	v_mov_b16_e32 v51.h, v51.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s19
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s6, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s3, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s3
	global_load_d16_hi_u8 v51, v[52:53], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s68, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v52, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v52, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s22, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s22
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s6, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s3, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s3
	global_load_d16_u8 v51, v[52:53], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s68, v93
	v_mov_b16_e32 v52.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v53, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v53, v122
	v_mov_b16_e32 v52.h, v52.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s27
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s6, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s3, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s3
	global_load_d16_hi_u8 v52, v[53:54], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s68, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v53, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v53, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s28, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s28
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s6, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s3, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s3
	global_load_d16_u8 v52, v[53:54], off
.LBB0_19:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s68, v95
	v_mov_b16_e32 v53.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v54, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v54, v122
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s30
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s6, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s3, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s3
	global_load_d16_hi_u8 v53, v[54:55], off
.LBB0_21:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s68, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v54, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v54, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s31, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s31
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s6, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s3, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s3
	global_load_d16_u8 v53, v[54:55], off
.LBB0_23:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v55, s68, v97
	v_mov_b16_e32 v54.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v55, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v55, v122
	v_mov_b16_e32 v54.h, v54.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s33
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v56, 31, v55
	v_add_co_u32 v55, s3, s50, v55
	v_add_co_ci_u32_e64 v56, null, s51, v56, s3
	global_load_d16_hi_u8 v54, v[55:56], off
.LBB0_25:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v55, s68, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v55, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v55, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s34, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s34
	s_cbranch_execz .LBB0_27
; %bb.26:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v56, 31, v55
	v_add_co_u32 v55, s3, s50, v55
	v_add_co_ci_u32_e64 v56, null, s51, v56, s3
	global_load_d16_u8 v54, v[55:56], off
.LBB0_27:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v56, s68, v99
	v_mov_b16_e32 v55.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v56, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v56, v122
	v_mov_b16_e32 v56.l, v55.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s35
	s_cbranch_execz .LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v56, s6, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v172, 31, v56
	v_add_co_u32 v171, s3, s50, v56
	v_add_co_ci_u32_e64 v172, null, s51, v172, s3
	global_load_d16_u8 v56, v[171:172], off
.LBB0_29:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v171, s68, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v171, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v171, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s36, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s36
	s_cbranch_execz .LBB0_31
; %bb.30:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v172, 31, v55
	v_add_co_u32 v171, s3, s50, v55
	v_add_co_ci_u32_e64 v172, null, s51, v172, s3
	global_load_d16_hi_u8 v55, v[171:172], off
.LBB0_31:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v171, s68, v103
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v55.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v171, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v171, v122
	v_mov_b16_e32 v56.h, v55.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, vcc_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s37
	s_cbranch_execz .LBB0_33
; %bb.32:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v171, s6, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v172, 31, v171
	v_add_co_u32 v171, s3, s50, v171
	v_add_co_ci_u32_e64 v172, null, s51, v172, s3
	global_load_d16_hi_u8 v56, v[171:172], off
.LBB0_33:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v171, s68, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v171, v121
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v171, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s38, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s5, s38
	s_cbranch_execz .LBB0_2
; %bb.34:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v171, s6, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v172, 31, v171
	v_add_co_u32 v171, s3, s50, v171
	v_add_co_ci_u32_e64 v172, null, s51, v172, s3
	global_load_d16_u8 v55, v[171:172], off
	s_branch .LBB0_2
.LBB0_35:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v33, 0
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
.LBB0_36:                               ; %Flow
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v33, v86, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v0, 62, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v33, v33, v25
	v_div_scale_f32 v36, null, v33, v33, v26
	v_div_scale_f32 v38, null, v33, v33, v27
	v_rcp_f32_e32 v45, v34
	v_div_scale_f32 v40, null, v33, v33, v28
	v_div_scale_f32 v42, null, v33, v33, v29
	v_div_scale_f32 v43, null, v33, v33, v30
	v_rcp_f32_e32 v46, v36
	v_rcp_f32_e32 v47, v38
	v_rcp_f32_e32 v48, v40
	v_rcp_f32_e32 v49, v42
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v54, -v34, v45, 1.0
	v_div_scale_f32 v35, vcc_lo, v25, v33, v25
	v_div_scale_f32 v37, s0, v26, v33, v26
	v_fma_f32 v55, -v36, v46, 1.0
	v_fma_f32 v56, -v38, v47, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v39, s1, v27, v33, v27
	v_fma_f32 v57, -v40, v48, 1.0
	v_fma_f32 v58, -v42, v49, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fma_f32 v54, -v43, v52, 1.0
	v_mul_f32_e32 v55, v35, v45
	v_div_scale_f32 v51, s5, v30, v33, v30
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v56, v37, v46 :: v_dual_mul_f32 v57, v39, v47
	v_fmac_f32_e32 v52, v54, v52
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v34, v55, v35
	v_div_scale_f32 v41, s3, v28, v33, v28
	v_fma_f32 v60, -v36, v56, v37
	v_fma_f32 v61, -v38, v57, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v58, v45
	v_mul_f32_e32 v59, v41, v48
	v_div_scale_f32 v44, null, v33, v33, v31
	v_div_scale_f32 v50, s4, v29, v33, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v34, v55, v35
	v_fmac_f32_e32 v56, v60, v46
	v_fma_f32 v62, -v40, v59, v41
	v_fmac_f32_e32 v57, v61, v47
	v_rcp_f32_e32 v53, v44
	v_div_fmas_f32 v34, v34, v45, v55
	v_fma_f32 v35, -v36, v56, v37
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v38, v57, v39
	v_mul_f32_e32 v38, v51, v52
	v_mul_f32_e32 v54, v50, v49
	v_fmac_f32_e32 v59, v62, v48
	v_div_fixup_f32 v25, v34, v33, v25
	v_div_scale_f32 v34, null, v33, v33, v32
	v_div_fmas_f32 v35, v35, v46, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v40, v59, v41
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v40, v34
	v_div_fmas_f32 v36, v36, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v35, v33, v26
	v_div_fmas_f32 v35, v37, v48, v59
	v_fma_f32 v39, -v44, v53, 1.0
	v_div_fixup_f32 v27, v36, v33, v27
	v_div_scale_f32 v36, s1, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v28, v35, v33, v28
	v_fma_f32 v35, -v43, v38, v51
	v_fmac_f32_e32 v53, v39, v53
	v_fma_f32 v39, -v34, v40, 1.0
	v_fma_f32 v37, -v42, v54, v50
	v_div_scale_f32 v48, null, v33, v33, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v38, v35, v52 :: v_dual_mul_f32 v35, v36, v53
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, s3, v32, v33, v32
	v_fmac_f32_e32 v54, v37, v49
	v_div_scale_f32 v37, null, v33, v33, v17
	v_fma_f32 v45, -v44, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v39, v40
	v_fma_f32 v41, -v42, v54, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v37
	v_fma_f32 v43, -v43, v38, v51
	v_fmac_f32_e32 v35, v45, v53
	v_fma_f32 v45, -v34, v46, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v49, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v36, -v44, v35, v36
	v_div_fmas_f32 v38, v43, v52, v38
	v_rcp_f32_e32 v43, v48
	v_fmac_f32_e32 v46, v45, v40
	v_div_scale_f32 v44, null, v33, v33, v19
	v_fma_f32 v47, -v37, v42, 1.0
	v_div_fixup_f32 v29, v41, v33, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v46, v39
	v_rcp_f32_e32 v39, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v38, v33, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v48, v43, 1.0
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s4, v17, v33, v17
	v_div_fmas_f32 v35, v36, v53, v35
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v41, v43
	v_div_fmas_f32 v34, v34, v40, v46
	v_fma_f32 v46, -v44, v39, 1.0
	v_mul_f32_e32 v38, v47, v42
	v_div_scale_f32 v45, null, v33, v33, v20
	v_div_scale_f32 v41, s1, v18, v33, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v36, -v37, v38, v47
	v_div_fixup_f32 v31, v35, v33, v31
	v_div_fixup_f32 v32, v34, v33, v32
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v36, v42
	v_rcp_f32_e32 v36, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v37, s3, v19, v33, v19
	v_div_scale_f32 v47, null, v33, v33, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v36, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v49, v46
	v_mul_f32_e32 v40, v41, v43
	v_fma_f32 v35, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v40, v35, v43
	v_mul_f32_e32 v35, v37, v39
	v_div_fmas_f32 v34, v34, v42, v38
	v_rcp_f32_e32 v38, v47
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s4, v20, v33, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v34, v33, v17
	v_fma_f32 v34, -v48, v40, v41
	v_fma_f32 v41, -v44, v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v47, v38, 1.0
	v_div_fmas_f32 v34, v34, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v41, v39
	v_div_scale_f32 v41, s1, v21, v33, v21
	v_fmac_f32_e32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v34, v33, v18
	v_fma_f32 v34, -v44, v35, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v43, -v46, v49, 1.0
	v_mul_f32_e32 v37, v41, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v39, v35
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v43, v49
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v48, v42, v36
	v_div_scale_f32 v43, null, v33, v33, v23
	v_div_fixup_f32 v19, v34, v33, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v40, -v45, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v36
	v_div_scale_f32 v40, s5, v22, v33, v22
	v_div_scale_f32 v47, null, v33, v33, v10
	v_fma_f32 v35, -v45, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v49
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v24
	v_div_fmas_f32 v35, v35, v36, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v44, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v36, v45
	v_div_fmas_f32 v34, v34, v38, v37
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v43, v42, 1.0
	v_div_fixup_f32 v20, v35, v33, v20
	v_div_scale_f32 v35, s3, v23, v33, v23
	v_fma_f32 v37, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	v_div_scale_f32 v40, s1, v24, v33, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v49, v44
	v_div_fixup_f32 v21, v34, v33, v21
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v37, v33, v22
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v33, v33, v12
	v_fma_f32 v34, -v45, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v48, -v47, v37, 1.0
	v_mul_f32_e32 v38, v35, v42
	v_fmac_f32_e32 v46, v34, v36
	v_div_scale_f32 v34, s4, v9, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v48, v37
	v_fma_f32 v44, -v43, v38, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v42
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v35, -v43, v38, v35
	v_div_scale_f32 v43, null, v33, v33, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v41
	v_div_fmas_f32 v35, v35, v42, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v38, -v45, v46, v40
	v_div_scale_f32 v42, s3, v10, v33, v10
	v_mul_f32_e32 v40, v34, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v35, v33, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v42, v37
	v_div_fmas_f32 v36, v38, v36, v46
	v_fma_f32 v48, -v39, v40, v34
	v_fma_f32 v45, -v43, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v50, v42
	v_div_fixup_f32 v24, v36, v33, v24
	v_fmac_f32_e32 v40, v48, v41
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v11, v33, v11
	v_fmac_f32_e32 v50, v38, v37
	v_div_scale_f32 v38, null, v33, v33, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v36, -v49, v51, 1.0
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v46, v45
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s1, v12, v33, v12
	v_div_fmas_f32 v34, v34, v41, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v51
	v_div_fmas_f32 v37, v39, v37, v50
	v_fma_f32 v39, -v43, v46, v45
	v_div_scale_f32 v41, null, v33, v33, v14
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v34, v33, v9
	v_div_fmas_f32 v39, v39, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v36
	v_div_fixup_f32 v10, v37, v33, v10
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v13, v33, v13
	v_fmac_f32_e32 v40, v44, v51
	v_div_fixup_f32 v11, v39, v33, v11
	v_div_scale_f32 v39, null, v33, v33, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v35
	v_fma_f32 v37, -v41, v43, 1.0
	v_fma_f32 v36, -v49, v40, v36
	v_rcp_f32_e32 v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v38, v34, v42
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v14, v33, v14
	v_div_fmas_f32 v36, v36, v51, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v37, v43
	v_div_scale_f32 v44, null, v33, v33, v16
	v_div_fixup_f32 v12, v36, v33, v12
	v_fma_f32 v36, -v38, v34, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v40, v37
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v35, v34
	v_div_scale_f32 v35, null, v33, v33, v1
	v_fmac_f32_e32 v40, v38, v43
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v33, v33, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v36, s1, v15, v33, v15
	v_div_fixup_f32 v13, v34, v33, v13
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v37, -v41, v40, v37
	v_mul_f32_e32 v41, v36, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v38, 1.0
	v_div_scale_f32 v34, s3, v16, v33, v16
	v_div_fmas_f32 v37, v37, v43, v40
	v_fma_f32 v40, -v39, v41, v36
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v33, v33, v3
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v1, v33, v1
	v_fma_f32 v50, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v33, v2
	v_div_fixup_f32 v14, v37, v33, v14
	v_fma_f32 v36, -v39, v41, v36
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s1, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v33, v33, v4
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v36, v33, v15
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v16, v34, v33, v16
	v_div_fixup_f32 v1, v35, v33, v1
	v_div_scale_f32 v35, null, v33, v33, v5
	v_fmac_f32_e32 v37, v42, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v33, v33, v8
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v2, v38, v33, v2
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v33, v33, v6
	v_div_scale_f32 v38, null, v33, v33, v7
	v_div_scale_f32 v39, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v3, v34, v33, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v33, v5
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v34, v37 :: v_dual_fmac_f32 v47, v51, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v6, v33, v6
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v33, v7
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v46, v40 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v50, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v48, -v38, v53, v49
	v_fma_f32 v34, -v35, v50, v34
	v_fma_f32 v35, -v45, v54, v51
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v41, v40 :: v_dual_fmac_f32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v35, v47
	v_div_fmas_f32 v34, v34, v37, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v54, v51
	v_div_fixup_f32 v4, v39, v33, v4
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v34, v33, v5
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v36, v33, v6
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v33, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v37, v33, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v33, s65, v85
	.loc	1 1044 19                       ; attention.py:1044:19
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
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s65, s66
	v_add_nc_u32_e32 v35, v33, v83
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s65, v83
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v83
	v_or_b32_e32 v36, 48, v83
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v37, v33, v83, 2
	v_add_lshl_u32 v38, v33, v84, 2
	v_add_lshl_u32 v39, v33, v82, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s65, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v37, s[48:51], 0 offen
	buffer_store_b32 v26, v38, s[48:51], 0 offen
	buffer_store_b32 v27, v39, s[48:51], 0 offen
	v_add_lshl_u32 v25, v33, v81, 2
	v_add_lshl_u32 v26, v33, v80, 2
	v_add_lshl_u32 v27, v33, v79, 2
	v_add_lshl_u32 v37, v33, v78, 2
	v_add_lshl_u32 v38, v33, v77, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v28, v25, s[48:51], 0 offen
	buffer_store_b32 v29, v26, s[48:51], 0 offen
	buffer_store_b32 v30, v27, s[48:51], 0 offen
	buffer_store_b32 v31, v37, s[48:51], 0 offen
	buffer_store_b32 v32, v38, s[48:51], 0 offen
	v_add_lshl_u32 v25, v33, v74, 2
	v_add_lshl_u32 v26, v33, v73, 2
	v_add_lshl_u32 v27, v33, v72, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v33, v71, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_lshl_u32 v29, v33, v70, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[48:51], 0 offen
	buffer_store_b32 v18, v26, s[48:51], 0 offen
	buffer_store_b32 v19, v27, s[48:51], 0 offen
	v_add_lshl_u32 v18, v33, v69, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s65, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[48:51], 0 offen
	v_add_lshl_u32 v19, v33, v76, 2
	v_add_lshl_u32 v20, v33, v75, 2
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v33, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[48:51], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[48:51], 0 offen
	buffer_store_b32 v24, v20, s[48:51], 0 offen
	buffer_store_b32 v9, v17, s[48:51], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[48:51], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s65, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	buffer_store_b32 v14, v18, s[48:51], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_lshl_u32 v11, v33, v36, 2
	v_add_nc_u32_e32 v12, 0xc8, v35
	v_add_nc_u32_e32 v13, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v33, v0, 2
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[48:51], 0 offen
	buffer_store_b32 v16, v10, s[48:51], 0 offen
	buffer_store_b32 v1, v11, s[48:51], 0 offen
	buffer_store_b32 v2, v12, s[48:51], 0 offen
	buffer_store_b32 v3, v13, s[48:51], 0 offen
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
	buffer_store_b32 v4, v1, s[48:51], 0 offen
	buffer_store_b32 v5, v2, s[48:51], 0 offen
	buffer_store_b32 v6, v3, s[48:51], 0 offen
	buffer_store_b32 v7, v9, s[48:51], 0 offen
	buffer_store_b32 v8, v0, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 219
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 219
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13004
; TotalNumSgprs: 77
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 219
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
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
