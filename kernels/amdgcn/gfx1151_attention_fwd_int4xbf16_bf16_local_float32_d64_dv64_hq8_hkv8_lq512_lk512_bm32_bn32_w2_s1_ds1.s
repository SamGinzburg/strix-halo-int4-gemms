	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[68:69], s[0:1], 0x60
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
	s_lshl_b32 s50, s3, 9
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s6, v33
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	s_add_i32 s39, s6, s50
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v91, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	s_mov_b32 s40, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, 2, v91
	v_or_b32_e32 v90, 4, v91
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v9, v3, 30, v91
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s68, v33, v[65:66]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s27, s68, v65
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s53, 0xffff
	v_lshlrev_b32_e32 v94, 2, v9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s6, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v89, 6, v91
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s27
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s68, s39, v[66:67]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v95, 4, v94
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, 8, v91
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v87, 10, v91
	v_or_b32_e32 v86, 12, v91
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v85, 14, v91
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v82, 16, v91
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[5:8], v1, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 18, v91
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s8, s2, 0x200
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 20, v91
	v_and_or_b32 v93, v33, 16, v1
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s8, s8, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v79, 22, v91
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s8, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v78, 24, v91
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v9, s6, v93
	.loc	1 808 34 is_stmt 1              ; attention.py:808:34
	s_lshr_b32 s10, s10, 27
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v77, 26, v91
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s70, s8, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v84, 28, v91
	v_or_b32_e32 v83, 30, v91
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v9
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s51, s9, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s70, s70, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s51, s70
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v35, v94, v5
	ds_bpermute_b32 v36, v94, v6
	ds_bpermute_b32 v37, v94, v7
	ds_bpermute_b32 v39, v94, v8
	ds_bpermute_b32 v38, v95, v5
	ds_bpermute_b32 v40, v95, v6
	ds_bpermute_b32 v41, v95, v7
	ds_bpermute_b32 v42, v95, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v5, s39, v93
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v6, 1, v0
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x68
	s_load_b64 s[56:57], s[0:1], 0x30
	v_dual_mov_b32 v46, 0x7632 :: v_dual_lshlrev_b32 v5, 1, v5
	v_dual_mov_b32 v47, 0x6420 :: v_dual_and_b32 v44, 7, v0
	v_dual_mov_b32 v110, 0xff800000 :: v_dual_and_b32 v7, 56, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v4, s7, v4
	s_lshr_b32 s0, s0, 29
	v_and_b32_e32 v8, 0x3f0, v2
	v_and_b32_e32 v9, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v3, 24, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v48, 0x7531
	buffer_load_u16 v34, v5, s[52:55], 0 offen
	v_and_b32_e32 v5, 16, v0
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_and_b32 v2, 48, v2
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v10, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s7, s3, s0
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v43, 3, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 1, v7
	v_cndmask_b32_e64 v51, 0x7632, v45, s1
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v109, s4, v4
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s7, -8
	v_bfe_i32 v11, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v68, v39, v42, s0
	v_lshl_or_b32 v112, v1, 5, v3
	v_xor_b32_e32 v53, v2, v7
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v54, 48, v10
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v19, v17
	v_xor_b32_e32 v111, v8, v9
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s4
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s69, v43
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v67, v37, v41, s0
	v_cndmask_b32_e64 v70, v36, v40, s0
	v_cndmask_b32_e64 v72, v42, v39, s0
	v_cndmask_b32_e64 v71, v41, v37, s0
	v_cndmask_b32_e64 v74, v40, v36, s0
	v_cndmask_b32_e64 v39, 0x5410, v46, s1
	v_lshl_or_b32 v40, v51, 8, v51
	v_cndmask_b32_e64 v41, 0x7531, v47, s1
	v_cndmask_b32_e64 v42, 0x6420, v48, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[75:76], null, s69, v50, v[43:44]
	v_cndmask_b32_e64 v43, 0x1054, v45, s0
	v_cndmask_b32_e64 v45, 0x3276, v46, s0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v55, 0x210, v11
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v40, 0x760032, v40
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v69, v35, v38, s0
	v_cndmask_b32_e64 v73, v38, v35, s0
	v_xor_b32_e32 v35, 8, v111
	v_xor_b32_e32 v36, 8, v112
	v_xor_b32_e32 v37, 16, v112
	v_xor_b32_e32 v38, 24, v112
	v_lshl_or_b32 v76, v44, 9, v53
	v_lshl_or_b32 v44, v44, 6, v54
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v45, v45, 8, v45
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v49, 2, v33
	v_mul_lo_u32 v33, s19, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v96, 7, v65
	v_or_b32_e32 v97, 6, v65
	v_or_b32_e32 v98, 5, v65
	v_or_b32_e32 v99, 4, v65
	v_or_b32_e32 v100, 11, v65
	v_or_b32_e32 v101, 10, v65
	v_or_b32_e32 v102, 9, v65
	v_or_b32_e32 v103, 8, v65
	v_or_b32_e32 v104, 15, v65
	v_or_b32_e32 v105, 14, v65
	v_or_b32_e32 v106, 13, v65
	v_or_b32_e32 v107, 12, v65
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v52, 6, v6
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v123, 0, v36
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v122, 0, v35
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v125, 0, v38
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v124, 0, v37
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v37, 0x750031, v41
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v36, 0x760032, v39
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v39, 0x540054, v43
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v38, 0x750031, v42
	v_mov_b32_e32 v1, v17
	v_xor_b32_e32 v121, v44, v55
	v_lshl_or_b32 v35, v40, 4, v40
	v_and_b32_e32 v40, 0x760076, v45
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v108, s5, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v130, 0x7060302, v35
	v_mov_b32_e32 v120, v17
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s5, s7, 3
	v_and_or_b32 v113, v49, 60, v52
	v_xor_b32_e32 v46, 0x90, v76
	v_xor_b32_e32 v47, 0x120, v76
	v_xor_b32_e32 v48, 0x1b0, v76
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s7, s16, 0x3fb8aa3b
	v_xor_b32_e32 v41, 16, v121
	v_xor_b32_e32 v42, 32, v121
	v_xor_b32_e32 v43, 48, v121
	v_xor_b32_e32 v44, 0x420, v121
	v_xor_b32_e32 v45, 0x430, v121
	v_xor_b32_e32 v49, 0x410, v121
	v_lshl_or_b32 v35, v36, 4, v36
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_lshl_or_b32 v38, v39, 4, v39
	v_lshl_or_b32 v39, v40, 4, v40
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_add_nc_u32 v137, v33, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v138, v33, v99
	v_add_nc_u32_e32 v139, v33, v98
	v_add_nc_u32_e32 v140, v33, v97
	v_add_nc_u32_e32 v141, v33, v96
	v_add_nc_u32_e32 v142, v33, v103
	v_add_nc_u32_e32 v143, v33, v102
	v_add_nc_u32_e32 v144, v33, v101
	v_add_nc_u32_e32 v145, v33, v100
	v_add_nc_u32_e32 v146, v33, v107
	v_add_nc_u32_e32 v147, v33, v106
	v_add_nc_u32_e32 v148, v33, v105
	v_add_nc_u32_e32 v149, v33, v104
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s18, s3
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s17, s5
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v117, v108
	v_dual_mov_b32 v29, v17 :: v_dual_mov_b32 v118, v108
	v_dual_mov_b32 v30, v17 :: v_dual_mov_b32 v119, v108
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v127, 0, v46
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v129, 0, v48
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v128, 0, v47
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v131, 0, v41
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v133, 0, v43
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v132, 0, v42
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v135, 0, v45
	.loc	1 866 30                        ; attention.py:866:30
	v_dual_mov_b32 v114, v109 :: v_dual_and_b32 v151, 0x7050301, v36
	v_dual_mov_b32 v115, v109 :: v_dual_add_nc_u32 v134, 0, v44
	v_dual_mov_b32 v116, v109 :: v_dual_and_b32 v153, 0x5040504, v38
	v_xor_b32_e32 v126, 64, v113
	v_add_nc_u32_e32 v136, 0, v49
	v_and_b32_e32 v150, 0x7060302, v35
	v_and_b32_e32 v152, 0x7050301, v37
	v_and_b32_e32 v154, 0x7060706, v39
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s19, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s74, s3, s5
	s_lshl_b32 s71, s69, 1
	s_mul_i32 s72, s69, 3
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s61, s15
	s_add_i32 s74, s74, s6
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v155, s7, v33
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s3, s51, s50
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s51, v99
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[60:61], null, s3, s68, v[66:67]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s51, v98
	v_or_b32_e32 v45, s51, v97
	v_or_b32_e32 v46, s51, v96
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v43, v109
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v43, v108
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v44, v114
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v43, 0x80000000, v60, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v46, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v46, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v45, v115
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v45, v118
	v_cmp_le_i32_e64 s19, v44, v117
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[43:46], v43, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v47, 1, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v48, s51, v65
	v_or_b32_e32 v54, s51, v103
	v_or_b32_e32 v57, s51, v100
	v_or_b32_e32 v58, s51, v104
	v_or_b32_e32 v158, s50, v89
	v_or_b32_e32 v159, s50, v88
	v_or_b32_e32 v160, s50, v87
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v167, 1, v137
	v_add_nc_u32_e32 v168, 2, v137
	v_add_nc_u32_e32 v169, 3, v137
	v_mad_u64_u32 v[61:62], null, s3, s69, v[75:76]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s6, s74, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v47, s51, v47
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v174, s6, v137, 1
	v_add_lshl_u32 v175, s6, v138, 1
	v_add_lshl_u32 v176, s6, v139, 1
	v_add_lshl_u32 v177, s6, v140, 1
	v_add_lshl_u32 v178, s6, v142, 1
	v_add_lshl_u32 v179, s6, v143, 1
	v_add_lshl_u32 v62, s6, v144, 1
	v_add_lshl_u32 v180, s6, v145, 1
	v_add_lshl_u32 v181, s6, v141, 1
	v_add_lshl_u32 v182, s6, v146, 1
	v_add_lshl_u32 v183, s6, v147, 1
	v_add_lshl_u32 v184, s6, v148, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v48, v109
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v48, v108
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v48, s6, v149, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v190, v158, s51, 1
	v_add_lshl_u32 v191, v159, s51, 1
	v_add_lshl_u32 v192, v160, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v158, s6, v167, 1
	v_add_lshl_u32 v159, s6, v168, 1
	v_add_lshl_u32 v160, s6, v169, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v57, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v57, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v54, v109
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v54, v108
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v58, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v58, v119
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v41, 0, v111
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_add_nc_u32 v42, 0, v112
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v47, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v47, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v47, 1, v61
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s5, s12, s13
	s_and_b32 s6, s6, s7
	s_and_b32 s7, s20, s21
	s_and_b32 s12, s16, s17
	s_and_b32 s21, s22, s23
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s16, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s21
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 2, v65
	v_or_b32_e32 v50, 3, v65
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v34, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v169, 0x80000000, v175, s7
	v_cndmask_b32_e64 v202, 0x80000000, v48, s12
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v175, 0x80000000, v47, s4
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v55, s51, v102
	v_or_b32_e32 v51, s51, v107
	v_or_b32_e32 v52, s51, v106
	v_or_b32_e32 v56, s51, v101
	v_or_b32_e32 v53, s51, v105
	v_or_b32_e32 v49, s51, v49
	v_or_b32_e32 v50, s51, v50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v55, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v55, v117
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v52, v114
	v_cmp_ge_i32_e64 s26, v51, v109
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v52, v117
	v_cmp_le_i32_e64 s30, v51, v108
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v56, v115
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v56, v118
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v53, v115
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v53, v118
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v50, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v50, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v49, v115
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v49, v118
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s11
	s_and_b32 s11, s18, s19
	s_and_b32 s18, s26, s30
	s_and_b32 s19, s25, s29
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v36, s43
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v38, s45
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v40, s47
	v_or_b32_e32 v161, s50, v86
	v_or_b32_e32 v162, s50, v85
	v_or_b32_e32 v163, s50, v82
	v_or_b32_e32 v164, s50, v81
	v_or_b32_e32 v165, s50, v80
	v_or_b32_e32 v170, s50, v78
	v_or_b32_e32 v171, s50, v77
	v_or_b32_e32 v172, s50, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s9
	s_and_b32 s17, s14, s15
	s_and_b32 s20, s24, s28
	s_and_b32 s13, vcc_lo, s3
	s_and_b32 s9, vcc_lo, s5
	s_and_b32 s15, vcc_lo, s6
	s_and_b32 s5, vcc_lo, s18
	s_and_b32 s6, vcc_lo, s19
	s_and_b32 s3, s36, s37
	s_and_b32 s18, s34, s35
	s_and_b32 s19, s31, s33
	s_and_b32 s14, vcc_lo, s8
	s_and_b32 s8, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s3
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s19, vcc_lo, s19
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v193, v161, s51, 1
	v_add_lshl_u32 v194, v162, s51, 1
	v_add_lshl_u32 v195, v163, s51, 1
	v_add_lshl_u32 v196, v164, s51, 1
	v_add_lshl_u32 v197, v165, s51, 1
	v_add_lshl_u32 v55, v170, s51, 1
	v_add_lshl_u32 v56, v171, s51, 1
	v_add_lshl_u32 v57, v172, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v199, 0x80000000, v182, s5
	v_cndmask_b32_e64 v200, 0x80000000, v183, s6
	v_cndmask_b32_e64 v201, 0x80000000, v184, s11
	v_cndmask_b32_e64 v170, 0x80000000, v158, s20
	v_cndmask_b32_e64 v171, 0x80000000, v159, s18
	v_cndmask_b32_e64 v172, 0x80000000, v160, s19
	v_or_b32_e32 v59, s50, v91
	v_or_b32_e32 v63, s50, v92
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v49, v61, s69, 1
	v_or_b32_e32 v64, s50, v90
	v_or_b32_e32 v166, s50, v79
	v_or_b32_e32 v173, s50, v83
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v59, v59, s51, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v50, v61, s71, 1
	v_add_lshl_u32 v51, v61, s72, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v63, v63, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v60, 0x80000000, v174, s13
	v_cndmask_b32_e64 v174, 0x80000000, v176, s8
	v_cndmask_b32_e64 v176, 0x80000000, v177, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v177, 0x80000000, v49, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v64, v64, s51, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s17, vcc_lo, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v166, v166, s51, 1
	v_add_lshl_u32 v58, v173, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v61, 0x80000000, v178, s9
	v_cndmask_b32_e64 v167, 0x80000000, v179, s10
	v_cndmask_b32_e64 v62, 0x80000000, v62, s14
	v_cndmask_b32_e64 v168, 0x80000000, v180, s15
	v_cndmask_b32_e64 v198, 0x80000000, v181, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v203, 0x80000000, v50, s4
	v_cndmask_b32_e64 v204, 0x80000000, v51, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v157
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[43:44]
	ds_store_b64 v122, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v42 offset1:1
	ds_load_2addr_stride64_b64 v[45:48], v123 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[41:42], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[43:44], v[73:74], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v124 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v125 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[45:46], v[71:72], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[47:48], v[71:72], v[182:189] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v48, v59, s[60:63], 0 offen
	buffer_load_u16 v49, v63, s[60:63], 0 offen
	buffer_load_u16 v46, v64, s[60:63], 0 offen
	buffer_load_u16 v47, v190, s[60:63], 0 offen
	buffer_load_u16 v50, v191, s[60:63], 0 offen
	buffer_load_u16 v51, v192, s[60:63], 0 offen
	buffer_load_u16 v42, v193, s[60:63], 0 offen
	buffer_load_u16 v41, v194, s[60:63], 0 offen
	buffer_load_u16 v53, v195, s[60:63], 0 offen
	buffer_load_u16 v54, v196, s[60:63], 0 offen
	buffer_load_u16 v52, v197, s[60:63], 0 offen
	buffer_load_u16 v43, v166, s[60:63], 0 offen
	buffer_load_u16 v55, v55, s[60:63], 0 offen
	buffer_load_u16 v56, v56, s[60:63], 0 offen
	buffer_load_u16 v44, v57, s[60:63], 0 offen
	buffer_load_u16 v45, v58, s[60:63], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v179, v60, s[56:59], 0 offen
	buffer_load_u16 v181, v170, s[56:59], 0 offen
	buffer_load_u16 v178, v171, s[56:59], 0 offen
	buffer_load_u16 v180, v172, s[56:59], 0 offen
	buffer_load_u16 v171, v61, s[56:59], 0 offen
	buffer_load_u16 v173, v167, s[56:59], 0 offen
	buffer_load_u16 v170, v62, s[56:59], 0 offen
	buffer_load_u16 v172, v168, s[56:59], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[33:34], v[69:70], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[35:36], v[69:70], v[182:189] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[37:38], v[67:68], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[39:40], v[67:68], v[182:189] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v160
	v_cvt_f32_i32_e32 v63, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v160, v163
	v_cvt_f32_i32_e32 v58, v164
	v_cvt_f32_i32_e32 v57, v165
	v_cvt_f32_i32_e32 v163, v183
	v_cvt_f32_i32_e32 v161, v184
	v_cvt_f32_i32_e32 v59, v185
	v_cvt_f32_i32_e32 v164, v186
	v_cvt_f32_i32_e32 v165, v187
	v_cvt_f32_i32_e32 v60, v188
	v_cvt_f32_i32_e32 v61, v189
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[37:40], v175, s[64:67], 0 offen
	buffer_load_b128 v[33:36], v177, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v175, v169, s[56:59], 0 offen
	buffer_load_u16 v177, v174, s[56:59], 0 offen
	buffer_load_u16 v174, v176, s[56:59], 0 offen
	buffer_load_u16 v176, v198, s[56:59], 0 offen
	buffer_load_u16 v168, v199, s[56:59], 0 offen
	buffer_load_u16 v169, v200, s[56:59], 0 offen
	buffer_load_u16 v166, v201, s[56:59], 0 offen
	buffer_load_u16 v167, v202, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[187:190], v203, s[64:67], 0 offen
	buffer_load_b128 v[183:186], v204, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v158
	v_cvt_f32_i32_e32 v158, v159
	v_cvt_f32_i32_e32 v159, v162
	v_cvt_f32_i32_e32 v162, v182
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v155, v163
	v_mul_f32_e32 v164, v155, v164
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v162, v155, v162 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(19)
	v_cndmask_b16 v179.l, 0xff80, v179.l, s13
	s_waitcnt vmcnt(18)
	v_cndmask_b16 v179.h, 0xff80, v181.l, s20
	s_waitcnt vmcnt(17)
	v_cndmask_b16 v178.l, 0xff80, v178.l, s18
	s_waitcnt vmcnt(16)
	v_cndmask_b16 v178.h, 0xff80, v180.l, s19
	s_waitcnt vmcnt(14)
	v_cndmask_b16 v173.h, 0xff80, v173.l, s10
	v_cndmask_b16 v173.l, 0xff80, v171.l, s9
	s_waitcnt vmcnt(13)
	v_cndmask_b16 v171.l, 0xff80, v170.l, s14
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v180, v178, v179, v150
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(12)
	v_cndmask_b16 v171.h, 0xff80, v172.l, s15
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v180, v95, v180
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v191.l, v37.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v191.h, v33.l
	v_mov_b16_e32 v33.l, v37.h
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v172.h, 0xff80, v177.l, s8
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v177, v178, v179, v130
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v172.l, 0xff80, v175.l, s7
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v174.h, 0xff80, v176.l, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v182, v33 :: v_dual_add_nc_u32 v33, 0, v76
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v174.l, 0xff80, v174.l, s16
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v192.l, v187.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v192.h, v183.l
	v_mov_b16_e64 v183.l, v187.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v187, v155, v160
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v175.h, 0xff80, v169.l, s6
	v_cndmask_b16 v175.l, 0xff80, v168.l, s5
	v_cndmask_b16 v176.h, 0xff80, v167.l, s12
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v33, v[191:192], v[182:183] offset1:8
	v_mov_b16_e64 v191.h, v34.l
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e64 v192.l, v188.l
	v_mov_b16_e64 v192.h, v184.l
	v_mov_b16_e64 v191.l, v38.l
	v_mov_b16_e64 v184.l, v188.h
	v_mov_b32_e32 v183, v34
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e32 v35.l, v39.h
	v_mov_b16_e64 v34.l, v189.l
	v_mov_b16_e64 v34.h, v185.l
	ds_store_2addr_b64 v127, v[191:192], v[183:184] offset1:8
	v_mov_b16_e32 v33.l, v39.l
	v_mov_b16_e64 v185.l, v189.h
	v_mov_b32_e32 v184, v35
	v_mov_b16_e32 v38.l, 0
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v38.h, v179.l
	v_mov_b16_e64 v183.h, v171.l
	v_cndmask_b16 v176.l, 0xff80, v166.l, s11
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v128, v[33:34], v[184:185] offset1:8
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v184.h, v178.l
	v_mov_b16_e64 v178.l, v38.l
	v_mov_b16_e64 v184.l, v38.l
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v34.h, v186.l
	v_mov_b16_e64 v186.l, v190.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v179.l, v38.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v178
	v_cmp_neq_f32_e64 s21, 0xff800000, v184
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v34.l, v190.l
	v_mov_b32_e32 v37, v186
	v_mov_b16_e32 v33.l, v40.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s19, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v33.h, v36.l
	v_mov_b16_e32 v36.l, v40.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v183.l, v38.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v190, 16, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v50, 0, 1, s19
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v178, v171, v173, v130
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v179
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v179, v171, v173, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v171.l, v38.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s18, s21
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v182.l, v38.l
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v181, v174, v172, v130
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v183
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v183, v174, v172, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v182.h, v174.l
	v_mov_b16_e64 v174.l, v38.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v184, v155, v158
	v_dual_mul_f32 v158, v155, v58 :: v_dual_lshlrev_b32 v191, 16, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, 0, 1, s18
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v129, v[33:34], v[36:37] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v50.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v171
	v_cmp_neq_f32_e64 s29, 0xff800000, v38
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s20, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v174
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_perm_b32 v174, v176, v175, v130
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v182
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v182, v176, v175, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v185.h, v176.l
	v_mov_b16_e64 v176.l, v38.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v177, v94, v177
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s20
	v_mov_b16_e32 v34.l, v51.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v38.h, v173.l
	v_mov_b16_e64 v173.l, v38.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s13, s29
	s_and_b32 s13, s15, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v186, v155, v159 :: v_dual_add_nc_u32 v39, 0, v121
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v176
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v155, v64
	v_dual_mul_f32 v159, v155, v165 :: v_dual_lshlrev_b32 v192, 16, v55
	v_dual_mul_f32 v64, v155, v62 :: v_dual_lshlrev_b32 v165, 16, v48
	v_dual_mul_f32 v62, v155, v63 :: v_dual_lshlrev_b32 v189, 16, v54
	v_dual_mul_f32 v63, v155, v161 :: v_dual_lshlrev_b32 v48, 16, v46
	v_mul_f32_e32 v160, v155, v59
	v_dual_mul_f32 v59, v155, v57 :: v_dual_lshlrev_b32 v46, 16, v47
	v_dual_mul_f32 v58, v155, v61 :: v_dual_lshlrev_b32 v47, 16, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s21
	v_cndmask_b32_e64 v52, 0, 1, s13
	v_or_b16 v33.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v36.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v173
	v_cmp_neq_f32_e64 s31, 0xff800000, v38
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v38.h, v172.l
	v_mov_b16_e64 v172.l, v38.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s14, s24
	s_and_b32 s15, s17, s25
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v188, 16, v53
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v53, 0, 1, s14
	v_cndmask_b32_e64 v54, 0, 1, s15
	v_mov_b16_e32 v34.l, v37.l
	v_mov_b16_e32 v35.l, v52.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s16, s16, s26
	s_and_b32 s10, s10, s22
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v172
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v55, 0, 1, s16
	v_mov_b16_e32 v36.l, v53.l
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v50, 0, 1, s10
	v_mov_b16_e32 v34.l, v54.l
	v_lshlrev_b16 v34.h, 8, v35.l
	s_and_b32 s9, s9, s31
	s_and_b32 s8, s8, s3
	v_cndmask_b32_e64 v51, 0, 1, s9
	v_mov_b16_e32 v37.l, v55.l
	v_mov_b16_e32 v35.l, v50.l
	v_lshlrev_b16 v34.l, 8, v34.l
	v_cndmask_b32_e64 v50, 0, 1, s8
	v_or_b16 v37.h, v36.l, v34.h
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v36, v180, v177, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v38
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v178, v94, v178
	ds_bpermute_b32 v179, v95, v179
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v40.l, v51.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_or_b16 v193.h, v37.l, v34.l
	v_mov_b16_e32 v34.l, v50.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v50, 16, v36
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s7, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v43
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, 0, 1, s7
	v_or_b16 v37.l, v40.l, v34.h
	v_lshlrev_b16 v40.l, 8, v34.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v50
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s12, s28
	v_mov_b16_e32 v35.l, v51.l
	v_cndmask_b32_e64 v173, 0, 1, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v36, 0xffff0000, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v43, 16, v41
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v34, v176, v165 :: v_dual_lshlrev_b32 v41, 16, v44
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_cndmask_b32_e64 v165, v177, v180, s0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v193.l, v35.l, v40.l
	v_mov_b16_e64 v35.l, v173.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v172, v179, v178, s0
	ds_bpermute_b32 v181, v94, v181
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v173, 16, v165
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v183, v95, v183
	v_cndmask_b32_e64 v180, v178, v179, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v57, v155, v60 :: v_dual_lshlrev_b32 v60, 16, v42
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v194, 0x3fb8aa3b, v173
	ds_bpermute_b32 v44, v94, v174
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v173, 16, v180
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v185.l, v38.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v194, v162, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v195, 0x3fb8aa3b, v173 :: v_dual_lshlrev_b32 v162, 16, v172
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v42, 16, v45
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v45, v95, v182
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v185
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v162, 0x3fb8aa3b, v162
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v165, 0xffff0000, v165
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v195, v164, v192
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v38.h, v175.l
	v_mov_b16_e64 v175.l, v38.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v162, v186, v190 :: v_dual_mul_f32 v165, 0x3fb8aa3b, v165
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v182, v183, v181, s0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s11, s11, s30
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v175
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v174, 0, 1, s11
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v165, v163, v189 :: v_dual_mul_f32 v36, 0x3fb8aa3b, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v164, 0xffff0000, v182
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s6, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e64 v40.l, v174.l
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v184, v49
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v164
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v163, 0xffff0000, v180
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v181, v181, v183, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v38.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v164, v62, v46 :: v_dual_mul_f32 v163, 0x3fb8aa3b, v163
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v172, 0xffff0000, v172
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v46.h, v40.l, v35.l
	s_and_b32 s5, s5, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.h, v38.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v163, v159, v61
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v61, v45, v44, s0
	v_dual_mul_f32 v188, 0x3fb8aa3b, v172 :: v_dual_lshlrev_b32 v159, 16, v182
	v_cndmask_b32_e64 v44, v44, v45, s0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v180, 16, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v38.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v159, 0x3fb8aa3b, v159
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v188, v187, v191
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v35.l, v45.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v190, 0x3fb8aa3b, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v38.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v159, v64, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.h, v38.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v190, v158, v60
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v60, 0xffff0000, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v38.l
	v_mov_b16_e64 v170.h, v38.l
	v_mov_b16_e64 v171.h, v38.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v60
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v64, 0xffff0000, v181
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[176:179], v135
	ds_load_b128 v[172:175], v134
	ds_load_b128 v[49:52], v39
	ds_load_b128 v[53:56], v131
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v59, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v43, 16, v44
	v_and_b32_e32 v44, 0xffff0000, v44
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v189, 0x3fb8aa3b, v64 :: v_dual_lshlrev_b32 v48, 16, v181
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[184:187], v131 offset:2048
	ds_load_b128 v[180:183], v39 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v38.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v189, v160, v161 :: v_dual_fmac_f32 v44, v58, v42
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v43, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v48
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v43, v57, v41 :: v_dual_fmac_f32 v48, v63, v47
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v47, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v40.l, v47.l
	v_perm_b32 v47, v193, v33, v151
	v_perm_b32 v33, v193, v33, v152
	v_or_b16 v46.l, v40.l, v35.l
	ds_bpermute_b32 v42, v94, v47
	ds_bpermute_b32 v33, v95, v33
	v_perm_b32 v41, v46, v37, v151
	v_perm_b32 v37, v46, v37, v152
	ds_bpermute_b32 v41, v94, v41
	ds_bpermute_b32 v37, v95, v37
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v46, v33, v42, s0
	v_cndmask_b32_e64 v33, v42, v33, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v42, 1, v46
	v_and_b32_e32 v59, 0x1000000, v33
	v_and_b32_e32 v60, 0x1000000, v46
	v_and_b32_e32 v57, 1, v33
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v47, v37, v41, s0
	v_cmp_eq_u32_e64 s29, 1, v42
	v_cndmask_b32_e64 v37, v41, v37, s0
	v_and_b32_e32 v41, 0x100, v46
	v_and_b32_e32 v58, 0x100, v33
	v_and_b32_e32 v158, 0x1000000, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v34, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v33, 0x10000, v33
	v_cmp_eq_u32_e64 s26, 0, v59
	v_cmp_eq_u32_e64 s33, 0, v60
	v_cmp_eq_u32_e64 s37, 0, v158
	v_cmp_eq_u32_e64 s30, 0, v41
	v_cmp_eq_u32_e64 s3, 1, v57
	v_and_b32_e32 v41, 1, v47
	v_cmp_eq_u32_e64 s25, 0, v33
	v_and_b32_e32 v33, 0x100, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, v189, 0xff800000, s26
	v_cndmask_b32_e64 v164, v164, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v57, 0x100, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, v45, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v47
	v_cmp_eq_u32_e64 s34, 1, v41
	v_cmp_eq_u32_e64 s35, 0, v33
	v_cmp_eq_u32_e64 s24, 0, v57
	v_cmp_eq_u32_e64 s28, 0, v58
	v_cmp_eq_u32_e64 s36, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v162, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, v188, 0xff800000, s35
	v_cndmask_b32_e64 v63, v163, 0xff800000, s24
	v_cndmask_b32_e64 v163, v190, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v58, 0x1000000, v37
	v_and_b32_e32 v37, 0x10000, v37
	v_and_b32_e32 v46, 0x10000, v46
	v_cmp_eq_u32_e64 s23, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, v36, 0xff800000, s30
	v_cndmask_b32_e64 v193, v165, 0xff800000, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s17, 0, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, v48, 0xff800000, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s31, 0, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v195, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 0, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, v43, 0xff800000, s17
	v_cndmask_b32_e64 v192, 0xff800000, v194, s3
	v_cndmask_b32_e64 v165, v159, 0xff800000, s31
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v161, v191
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, v44, 0xff800000, s22
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v193, v64, v160
	v_max3_f32 v36, v62, v63, v37
	v_max3_f32 v41, v164, v162, v188
	v_max3_f32 v42, v163, v189, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v34, v34, v36, v61
	v_max3_f32 v33, v33, v165, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v33, v42, v34
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v158, v157, v33, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v191, v158
	v_sub_f32_e32 v34, v161, v158
	v_sub_f32_e32 v41, v165, v158
	v_sub_f32_e32 v42, v164, v158
	v_sub_f32_e32 v43, v162, v158
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v36, v157, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v188, v158
	v_sub_f32_e32 v45, v163, v158
	v_sub_f32_e32 v46, v189, v158
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v47, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, v33, 0, s30
	v_cndmask_b32_e64 v34, 0, v34, s29
	v_cndmask_b32_e64 v36, v41, 0, s31
	v_cndmask_b32_e64 v41, v42, 0, s33
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v157, v193, v191, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v43, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e64 v167.l, v36.h
	v_mov_b16_e64 v166.l, v41.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, v44, 0, s35
	v_cndmask_b32_e64 v44, v45, 0, s36
	v_cndmask_b32_e64 v45, v46, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.l, v42.h
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v46, 1, v167
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v159, 0, v47, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v48, 1, v166
	v_cmp_o_f32_e64 s29, v33, v33
	v_cmp_o_f32_e64 s30, v34, v34
	v_cmp_o_f32_e64 s31, v36, v36
	v_cmp_o_f32_e64 s33, v41, v41
	v_mov_b16_e64 v168.l, v43.h
	v_mov_b16_e64 v170.l, v44.h
	v_mov_b16_e64 v171.l, v45.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v159 :: v_dual_and_b32 v57, 1, v169
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v35, 0x7fff
	v_add3_u32 v35, v36, v46, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v40, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v41, v48, 0x7fff
	v_cmp_o_f32_e64 s34, v42, v42
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v27, v27, v159 :: v_dual_and_b32 v58, 1, v168
	v_dual_mul_f32 v20, v20, v159 :: v_dual_and_b32 v59, 1, v170
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v60, 1, v171
	v_add3_u32 v40, v42, v57, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s30
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s33
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s31
	v_cmp_o_f32_e64 s35, v43, v43
	v_cmp_o_f32_e64 s36, v44, v44
	v_cmp_o_f32_e64 s37, v45, v45
	v_add3_u32 v41, v43, v58, 0x7fff
	v_add3_u32 v48, v44, v59, 0x7fff
	v_add3_u32 v57, v45, v60, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s34
	v_permlanex16_b32 v40, v34, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s29
	v_cndmask_b16 v35.h, 0x7fff, v41.h, s35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v159
	v_mul_f32_e32 v28, v28, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v43, v40, v34, v153
	v_perm_b32 v44, v40, v34, v154
	v_cndmask_b16 v40.h, 0x7fff, v57.h, s37
	v_cndmask_b16 v40.l, 0x7fff, v48.h, s36
	v_permlanex16_b32 v36, v33, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v35, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v159
	v_mul_f32_e32 v30, v30, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v48, v40, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v36, v33, v153
	v_perm_b32 v42, v36, v33, v154
	v_perm_b32 v45, v46, v35, v153
	v_perm_b32 v46, v46, v35, v154
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v39 offset:1024
	ds_load_b128 v[57:60], v39 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v47, v48, v40, v153
	v_perm_b32 v48, v48, v40, v154
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v159
	v_mul_f32_e32 v32, v32, v159
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, v192, v161, s0
	v_cndmask_b32_e64 v40, v161, v192, s0
	v_cndmask_b32_e64 v161, v191, v193, s0
	v_cndmask_b32_e64 v168, v62, v162, s0
	v_cndmask_b32_e64 v162, v162, v62, s0
	v_cndmask_b32_e64 v167, v160, v164, s0
	v_cndmask_b32_e64 v164, v164, v160, s0
	ds_bpermute_b32 v157, v113, v157
	ds_bpermute_b32 v161, v126, v161
	ds_bpermute_b32 v168, v113, v168
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v160, v158
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[172:179], v[41:48], v[25:32]
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v176, v126, v162
	v_cndmask_b32_e64 v166, v64, v165, s0
	v_cndmask_b32_e64 v165, v165, v64, s0
	v_cndmask_b32_e64 v169, v63, v188, s0
	v_cndmask_b32_e64 v170, v188, v63, s0
	ds_bpermute_b32 v172, v126, v40
	ds_bpermute_b32 v166, v113, v166
	ds_bpermute_b32 v171, v126, v165
	v_cndmask_b32_e64 v165, v37, v163, s0
	ds_bpermute_b32 v173, v113, v39
	v_cndmask_b32_e64 v39, v163, v37, s0
	v_cndmask_b32_e64 v40, v61, v189, s0
	v_cndmask_b32_e64 v163, v189, v61, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v159
	v_dual_mul_f32 v11, v11, v159 :: v_dual_sub_f32 v64, v64, v158
	v_mul_f32_e32 v12, v12, v159
	v_mul_f32_e32 v13, v13, v159
	v_mul_f32_e32 v15, v15, v159
	v_mul_f32_e32 v16, v16, v159
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v169, v113, v169
	ds_bpermute_b32 v170, v126, v170
	ds_bpermute_b32 v177, v113, v40
	ds_bpermute_b32 v178, v126, v163
	ds_bpermute_b32 v179, v113, v165
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v165, v157, v161, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v159
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v163, v176, v168, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v159
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v174, v113, v167
	ds_bpermute_b32 v175, v126, v164
	v_cndmask_b32_e64 v162, v161, v157, s1
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v164, v171, v166, s1
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[180:187], v[41:48], v[9:16]
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v180, v126, v39
	v_cndmask_b32_e64 v167, v166, v171, s1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v172, v172
	s_waitcnt lgkmcnt(8)
	v_max_f32_e32 v161, v173, v173
.Ltmp7:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, v168, v176, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v192, v158
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v40, v170, v169, s1
	v_cndmask_b32_e64 v157, v169, v170, s1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v168, v161, v39
.Ltmp9:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v39, v178, v177, s1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v169, v165, v164, v167
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, v177, v178, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v64, v64
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v159 :: v_dual_sub_f32 v63, v63, v158
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v168, v168, v162, v169
	v_max3_f32 v169, v166, v40, v157
.Ltmp13:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, v160, 0, s26
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v170, v179, v180, v39
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v171, s3
	v_cndmask_b32_e64 v64, v64, 0, s25
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v169, v169, v170, v161
	v_max3_f32 v170, v174, v175, v163
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v158
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v64, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, v180, v179, s1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v176, v168, v170, v169
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v193, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v38.l
	v_mov_b16_e64 v169.h, v38.l
	v_mov_b16_e64 v169.l, v171.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v63, v63, 0, s24
	v_cndmask_b32_e64 v62, 0, v62, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v169, 1, v169
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v180, v179, v180, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v62, v62
	v_add3_u32 v169, v171, v169, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, v170, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v171, v171
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	v_mov_b32_e32 v184, v120
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, v37, 0, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v170.h
	v_cmp_o_f32_e64 s3, v170, v170
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, v175, v174, s1
	v_cndmask_b32_e64 v174, v174, v175, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v37, v37
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v3, v3, v159 :: v_dual_and_b32 v168, 1, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, v61, 0, s22
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v159
	v_mul_f32_e32 v7, v7, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v168, v170, v168, 0x7fff
	v_cndmask_b16 v170.l, 0x7fff, v169.h, s28
	v_cmp_o_f32_e64 s22, v61, v61
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v159
	v_mul_f32_e32 v19, v19, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v170.h, 0x7fff, v168.h, s3
	v_cmp_o_f32_e64 s3, v160, v160
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v159
	v_mul_f32_e32 v2, v2, v159
	v_mul_f32_e32 v4, v4, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v169, v170, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v159
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[41:48], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v134 offset:2048
	ds_load_b128 v[53:56], v135 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v168, v169, v170, v153
	v_perm_b32 v169, v169, v170, v154
	v_mov_b16_e64 v170.h, v38.l
	v_mov_b16_e64 v170.l, v160.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v170, 1, v170
	v_add3_u32 v160, v160, v170, 0x7fff
	v_mov_b16_e64 v170.h, v38.l
	v_mov_b16_e64 v170.l, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v160.h, 0x7fff, v160.h, s3
	v_cmp_o_f32_e64 s3, v63, v63
	v_and_b32_e32 v170, 1, v170
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[41:48], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v64, v170, 0x7fff
	v_cndmask_b16 v160.l, 0x7fff, v64.h, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v64, v160, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v64, v160, v153
	v_perm_b32 v171, v64, v160, v154
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v64, v172, v173, s1
	v_cndmask_b32_e64 v160, v173, v172, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v38.l
	v_mov_b16_e64 v172.l, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v172, 1, v172
	v_add3_u32 v63, v63, v172, 0x7fff
	v_mov_b16_e64 v172.h, v38.l
	v_mov_b16_e64 v172.l, v62.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v172, 1, v172
	v_add3_u32 v62, v62, v172, 0x7fff
	v_mov_b16_e64 v172.h, v38.l
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v172.l, v61.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v62.h, s23
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v62, v176
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v63.h, s3
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v63, v110, v110
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v176, v62
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v110, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v161, v161, v110 :: v_dual_and_b32 v172, 1, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v61, v172, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v37.h, s17
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v156, v156
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v165, v110
	v_sub_f32_e32 v165, v177, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v110
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v120, v37, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v38, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v64, v110
	v_sub_f32_e32 v64, v162, v110
	v_sub_f32_e32 v162, v164, v110
	v_sub_f32_e32 v164, v174, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v172, v37, v38, v153
	v_perm_b32 v173, v37, v38, v154
	v_permlanex16_b32 v37, v61, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v160, v110
	v_sub_f32_e32 v160, v167, v110
	v_sub_f32_e32 v163, v163, v110
	v_sub_f32_e32 v40, v40, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v174, v37, v61, v153
	v_perm_b32 v175, v37, v61, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	v_exp_f32_e32 v38, v62
	v_exp_f32_e32 v61, v63
	v_exp_f32_e32 v62, v64
	v_exp_f32_e32 v63, v160
	v_exp_f32_e32 v64, v162
	v_exp_f32_e32 v160, v164
	v_exp_f32_e32 v162, v165
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v166
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s20
	v_cndmask_b32_e64 v38, 0, v38, s21
	v_cndmask_b32_e64 v61, 0, v61, s19
	v_cndmask_b32_e64 v62, 0, v62, s18
	v_cndmask_b32_e64 v63, 0, v63, s8
	v_cndmask_b32_e64 v64, 0, v64, s7
	v_cndmask_b32_e64 v160, 0, v160, s15
	v_cndmask_b32_e64 v162, 0, v162, s16
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_add_f32 v38, v62, v61 :: v_dual_add_f32 v61, v64, v63
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v157, v110
	v_sub_f32_e32 v157, v180, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_add_f32 v62, v162, v160
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v181, v110
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s10
	v_cndmask_b32_e64 v163, 0, v163, s9
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v61, v62
.Ltmp30:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[176:179], v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s13
	v_cndmask_b32_e64 v40, 0, v40, s14
	v_cndmask_b32_e64 v157, 0, v157, s6
	v_cndmask_b32_e64 v161, 0, v161, s12
	v_cndmask_b32_e64 v160, 0, v160, s5
	v_cndmask_b32_e64 v39, 0, v39, s11
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v163, v164
	v_dual_add_f32 v40, v40, v64 :: v_dual_add_f32 v187, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v64, v160, v157
	v_add_f32_e32 v39, v39, v161
	v_mov_b32_e32 v157, v158
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v185, v63, v40 :: v_dual_add_f32 v186, v64, v39
.Ltmp32:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[160:163], v132 offset:2048
	ds_load_b128 v[180:183], v133
	ds_load_b128 v[164:167], v133 offset:2048
	ds_load_b128 v[37:40], v136
	ds_load_b128 v[61:64], v136 offset:2048
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v158, v185, v186 :: v_dual_sub_f32 v185, v156, v120
	v_mov_b32_e32 v156, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v158, v187, v158
.Ltmp34:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v185, v185
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v186, v158
.Ltmp36:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[176:183], v[168:175], v[17:24]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[160:167], v[168:175], v[9:16]
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp38:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v185, s3
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[168:175], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[168:175], v[1:8]
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v158, v186
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp40:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v120, v184, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v7, v8
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
.LBB0_4:                                ; %Flow
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v33, v94, v120
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
	v_div_scale_f32 v34, null, v33, v33, v17
	v_div_scale_f32 v36, null, v33, v33, v18
	v_div_scale_f32 v38, null, v33, v33, v19
	v_rcp_f32_e32 v45, v34
	v_div_scale_f32 v40, null, v33, v33, v20
	v_div_scale_f32 v42, null, v33, v33, v21
	v_div_scale_f32 v43, null, v33, v33, v22
	v_rcp_f32_e32 v46, v36
	v_rcp_f32_e32 v47, v38
	v_rcp_f32_e32 v48, v40
	v_rcp_f32_e32 v49, v42
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v54, -v34, v45, 1.0
	v_div_scale_f32 v35, vcc_lo, v17, v33, v17
	v_div_scale_f32 v37, s0, v18, v33, v18
	v_fma_f32 v55, -v36, v46, 1.0
	v_fma_f32 v56, -v38, v47, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v39, s1, v19, v33, v19
	v_fma_f32 v57, -v40, v48, 1.0
	v_fma_f32 v58, -v42, v49, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fma_f32 v54, -v43, v52, 1.0
	v_mul_f32_e32 v55, v35, v45
	v_div_scale_f32 v51, s5, v22, v33, v22
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v56, v37, v46 :: v_dual_mul_f32 v57, v39, v47
	v_fmac_f32_e32 v52, v54, v52
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v34, v55, v35
	v_div_scale_f32 v41, s3, v20, v33, v20
	v_fma_f32 v60, -v36, v56, v37
	v_fma_f32 v61, -v38, v57, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v58, v45
	v_mul_f32_e32 v59, v41, v48
	v_div_scale_f32 v44, null, v33, v33, v23
	v_div_scale_f32 v50, s4, v21, v33, v21
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
	v_div_fixup_f32 v17, v34, v33, v17
	v_div_scale_f32 v34, null, v33, v33, v24
	v_div_fmas_f32 v35, v35, v46, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v40, v59, v41
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v40, v34
	v_div_fmas_f32 v36, v36, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v35, v33, v18
	v_div_fmas_f32 v35, v37, v48, v59
	v_fma_f32 v39, -v44, v53, 1.0
	v_div_fixup_f32 v19, v36, v33, v19
	v_div_scale_f32 v36, s1, v23, v33, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v20, v35, v33, v20
	v_fma_f32 v35, -v43, v38, v51
	v_fmac_f32_e32 v53, v39, v53
	v_fma_f32 v39, -v34, v40, 1.0
	v_fma_f32 v37, -v42, v54, v50
	v_div_scale_f32 v48, null, v33, v33, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v38, v35, v52 :: v_dual_mul_f32 v35, v36, v53
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, s3, v24, v33, v24
	v_fmac_f32_e32 v54, v37, v49
	v_div_scale_f32 v37, null, v33, v33, v25
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
	v_div_scale_f32 v44, null, v33, v33, v27
	v_fma_f32 v47, -v37, v42, 1.0
	v_div_fixup_f32 v21, v41, v33, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v46, v39
	v_rcp_f32_e32 v39, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v38, v33, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v48, v43, 1.0
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s4, v25, v33, v25
	v_div_fmas_f32 v35, v36, v53, v35
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v41, v43
	v_div_fmas_f32 v34, v34, v40, v46
	v_fma_f32 v46, -v44, v39, 1.0
	v_mul_f32_e32 v38, v47, v42
	v_div_scale_f32 v45, null, v33, v33, v28
	v_div_scale_f32 v41, s1, v26, v33, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v36, -v37, v38, v47
	v_div_fixup_f32 v23, v35, v33, v23
	v_div_fixup_f32 v24, v34, v33, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v36, v42
	v_rcp_f32_e32 v36, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v37, s3, v27, v33, v27
	v_div_scale_f32 v47, null, v33, v33, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v36, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v30
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
	v_div_scale_f32 v42, s4, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v34, v33, v25
	v_fma_f32 v34, -v48, v40, v41
	v_fma_f32 v41, -v44, v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v47, v38, 1.0
	v_div_fmas_f32 v34, v34, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v41, v39
	v_div_scale_f32 v41, s1, v29, v33, v29
	v_fmac_f32_e32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v26, v34, v33, v26
	v_fma_f32 v34, -v44, v35, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v43, -v46, v49, 1.0
	v_mul_f32_e32 v37, v41, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v39, v35
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v43, v49
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v48, v42, v36
	v_div_scale_f32 v43, null, v33, v33, v31
	v_div_fixup_f32 v27, v34, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v40, -v45, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v36
	v_div_scale_f32 v40, s5, v30, v33, v30
	v_div_scale_f32 v47, null, v33, v33, v10
	v_fma_f32 v35, -v45, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v49
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v32
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
	v_div_fixup_f32 v28, v35, v33, v28
	v_div_scale_f32 v35, s3, v31, v33, v31
	v_fma_f32 v37, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	v_div_scale_f32 v40, s1, v32, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v49, v44
	v_div_fixup_f32 v29, v34, v33, v29
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v37, v33, v30
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v33, v33, v12
	v_fma_f32 v34, -v45, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
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
	v_cndmask_b32_e64 v30, 0, v30, s0
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
	v_div_fixup_f32 v31, v35, v33, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v42, v37
	v_div_fmas_f32 v36, v38, v36, v46
	v_fma_f32 v48, -v39, v40, v34
	v_fma_f32 v45, -v43, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v50, v42
	v_div_fixup_f32 v32, v36, v33, v32
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
	v_cndmask_b32_e64 v31, 0, v31, s0
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
	v_cndmask_b32_e64 v32, 0, v32, s0
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
	v_mul_lo_u32 v33, s69, v93
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
	s_mul_i32 s0, s69, s39
	v_add_nc_u32_e32 v35, v33, v91
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s69, v91
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v91
	v_or_b32_e32 v36, 48, v91
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v37, v33, v91, 2
	v_add_lshl_u32 v38, v33, v92, 2
	v_add_lshl_u32 v39, v33, v90, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s69, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v37, s[48:51], 0 offen
	buffer_store_b32 v18, v38, s[48:51], 0 offen
	buffer_store_b32 v19, v39, s[48:51], 0 offen
	v_add_lshl_u32 v17, v33, v89, 2
	v_add_lshl_u32 v18, v33, v88, 2
	v_add_lshl_u32 v19, v33, v87, 2
	v_add_lshl_u32 v37, v33, v86, 2
	v_add_lshl_u32 v38, v33, v85, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v20, v17, s[48:51], 0 offen
	buffer_store_b32 v21, v18, s[48:51], 0 offen
	buffer_store_b32 v22, v19, s[48:51], 0 offen
	buffer_store_b32 v23, v37, s[48:51], 0 offen
	buffer_store_b32 v24, v38, s[48:51], 0 offen
	v_add_lshl_u32 v17, v33, v82, 2
	v_add_lshl_u32 v18, v33, v81, 2
	v_add_lshl_u32 v19, v33, v80, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v33, v79, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	v_add_lshl_u32 v21, v33, v78, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v17, s[48:51], 0 offen
	buffer_store_b32 v26, v18, s[48:51], 0 offen
	buffer_store_b32 v27, v19, s[48:51], 0 offen
	v_add_lshl_u32 v18, v33, v77, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s69, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	buffer_store_b32 v28, v20, s[48:51], 0 offen
	v_add_lshl_u32 v19, v33, v84, 2
	v_add_lshl_u32 v20, v33, v83, 2
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v29, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v33, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v30, v18, s[48:51], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v31, v19, s[48:51], 0 offen
	buffer_store_b32 v32, v20, s[48:51], 0 offen
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
	v_cmp_gt_i32_e64 s3, s69, v36
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
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 205
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 205
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12420
; TotalNumSgprs: 77
; NumVgprs: 205
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 205
; Occupancy: 7
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     205
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
