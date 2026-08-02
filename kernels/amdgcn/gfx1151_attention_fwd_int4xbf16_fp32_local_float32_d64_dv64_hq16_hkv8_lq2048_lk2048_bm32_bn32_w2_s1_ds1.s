	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[38:39], s[0:1], 0x60
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
	s_lshl_b32 s2, s3, 11
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v81, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s6, v33
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	s_add_i32 s50, s6, s2
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v108, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	s_mov_b32 s40, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v109, 2, v108
	v_or_b32_e32 v107, 4, v108
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v9, v3, 30, v108
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[82:83], null, s38, v33, v[81:82]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s26, s38, v81
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s53, 0xffff
	v_lshlrev_b32_e32 v111, 2, v9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s6, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v106, 6, v108
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s26
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s38, s50, v[82:83]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v112, 4, v111
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v105, 8, v108
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v104, 10, v108
	v_or_b32_e32 v103, 12, v108
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v102, 14, v108
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v99, 16, v108
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[5:8], v1, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 18, v108
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s8, s2, 0x800
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v97, 20, v108
	v_and_or_b32 v110, v33, 16, v1
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s8, s8, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v96, 22, v108
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s8, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 24, v108
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v9, s6, v110
	.loc	1 808 34 is_stmt 1              ; attention.py:808:34
	s_lshr_b32 s10, s10, 27
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v94, 26, v108
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s68, s8, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v101, 28, v108
	v_or_b32_e32 v100, 30, v108
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v9
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s51, s9, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s68, s68, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s51, s68
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v111, v5
	ds_bpermute_b32 v35, v111, v6
	ds_bpermute_b32 v36, v111, v7
	ds_bpermute_b32 v38, v111, v8
	ds_bpermute_b32 v37, v112, v5
	ds_bpermute_b32 v39, v112, v6
	ds_bpermute_b32 v40, v112, v7
	ds_bpermute_b32 v43, v112, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v5, s50, v110
	v_dual_mov_b32 v49, 0x5410 :: v_dual_and_b32 v6, 1, v0
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x68
	s_load_b64 s[56:57], s[0:1], 0x30
	v_dual_mov_b32 v10, 0x6420 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v47, 0x7531 :: v_dual_add_nc_u32 v4, s7, v4
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v46, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v7, 56, v0
	v_and_b32_e32 v8, 0x3f0, v2
	v_and_b32_e32 v9, 24, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v3, 24, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v50, 0x7632
	buffer_load_u16 v45, v5, s[52:55], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v5, 16, v0
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v11, 3, v0
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_add_i32 s7, s3, s0
	v_cndmask_b32_e64 v52, 0x7531, v10, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v5
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_and_b32 v2, 48, v2
	v_bfe_i32 v12, v0, 3, 1
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v44, 3, v46
	v_cndmask_b32_e64 v84, v38, v43, s0
	v_lshl_or_b32 v117, v1, 5, v3
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v55, 48, v11
	v_mov_b32_e32 v18, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v51, 1, v7
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_xor_b32_e32 v116, v8, v9
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v83, v36, v40, s0
	v_cndmask_b32_e64 v86, v35, v39, s0
	v_cndmask_b32_e64 v88, v43, v38, s0
	v_cndmask_b32_e64 v87, v40, v36, s0
	v_cndmask_b32_e64 v90, v39, v35, s0
	v_cndmask_b32_e64 v38, 0x6420, v47, s1
	v_lshl_or_b32 v39, v52, 8, v52
	v_cndmask_b32_e64 v40, 0x1054, v49, s0
	v_cndmask_b32_e64 v43, 0x3276, v50, s0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v114, s4, v4
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s7, -16
	v_xor_b32_e32 v54, v2, v7
	s_sub_i32 s3, s3, s4
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v56, 0x210, v12
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v39, 0x750031, v39
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s39, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v85, v34, v37, s0
	v_cndmask_b32_e64 v89, v37, v34, s0
	v_xor_b32_e32 v34, 8, v116
	v_xor_b32_e32 v35, 8, v117
	v_xor_b32_e32 v36, 16, v117
	v_xor_b32_e32 v37, 24, v117
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v43, v43, 8, v43
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s12, s3, 0x10007
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_lshlrev_b32 v48, 2, v33
	s_add_i32 s12, s3, s12
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v53, 6, v6
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v122, 0, v35
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v124, 0, v37
	v_mov_b32_e32 v29, v17
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v121, 0, v34
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v123, 0, v36
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v35, 0x750031, v38
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v37, 0x760076, v43
	v_lshl_or_b32 v119, v46, 9, v54
	s_bfe_i32 s12, s12, 0x80000
	v_lshl_or_b32 v34, v39, 4, v39
	v_and_b32_e32 v36, 0x540054, v40
	s_sext_i32_i16 s12, s12
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v115, s5, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s5, s7, 4
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s12, s12, 10
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v144, 0x7050301, v34
	v_and_or_b32 v118, v48, 60, v53
	v_xor_b32_e32 v47, 0x120, v119
	v_xor_b32_e32 v48, 0x1b0, v119
	v_lshl_or_b32 v34, v36, 4, v36
	s_lshl_b32 s7, s5, 14
	s_and_b32 s72, s12, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s12, s16, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s72, s72, s7
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s18, s3
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s17, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v113, 15, v81
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v128, 0, v48
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v127, 0, v47
	v_xor_b32_e32 v125, 64, v118
	v_or_b32_e32 v129, s72, v109
	v_or_b32_e32 v130, s72, v107
	v_or_b32_e32 v131, s72, v106
	v_or_b32_e32 v132, s72, v105
	v_or_b32_e32 v133, s72, v104
	v_or_b32_e32 v134, s72, v103
	v_or_b32_e32 v135, s72, v102
	v_or_b32_e32 v136, s72, v99
	v_or_b32_e32 v137, s72, v98
	v_or_b32_e32 v138, s72, v97
	v_or_b32_e32 v139, s72, v96
	v_or_b32_e32 v140, s72, v95
	v_or_b32_e32 v141, s72, v94
	v_or_b32_e32 v142, s72, v101
	v_or_b32_e32 v143, s72, v100
	v_and_b32_e32 v167, 0x5040504, v34
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s19, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s73, s3, s5
	s_lshl_b32 s69, s39, 1
	s_mul_i32 s70, s39, 3
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s71, 0x76543210
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
	s_add_i32 s73, s73, s6
	v_mov_b32_e32 v170, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[91:92], null, s39, v51, v[44:45]
	v_lshl_or_b32 v44, v46, 6, v55
	v_mad_u64_u32 v[92:93], null, s19, v33, v[81:82]
	v_xor_b32_e32 v46, 0x90, v119
	v_lshl_or_b32 v33, v35, 4, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v120, v44, v56
	v_lshl_or_b32 v35, v37, 4, v37
	v_dual_mov_b32 v31, v17 :: v_dual_lshlrev_b32 v36, 16, v45
	v_add_nc_u32_e32 v126, 0, v46
	v_xor_b32_e32 v38, 16, v120
	v_xor_b32_e32 v39, 32, v120
	v_xor_b32_e32 v40, 48, v120
	v_xor_b32_e32 v43, 0x420, v120
	v_xor_b32_e32 v44, 0x430, v120
	v_xor_b32_e32 v49, 0x410, v120
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v146, 0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v148, 0, v43
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v150, 0, v49
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v152, 2, v92
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v145, 0, v38
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v154, 4, v92
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v147, 0, v40
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v156, 6, v92
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v149, 0, v44
	v_dual_mov_b32 v42, v17 :: v_dual_add_nc_u32 v151, 1, v92
	v_or_b32_e32 v93, s72, v108
	v_add_nc_u32_e32 v153, 3, v92
	v_add_nc_u32_e32 v155, 5, v92
	v_add_nc_u32_e32 v157, 7, v92
	v_add_nc_u32_e32 v158, 8, v92
	v_add_nc_u32_e32 v159, 9, v92
	v_add_nc_u32_e32 v160, 10, v92
	v_add_nc_u32_e32 v161, 11, v92
	v_add_nc_u32_e32 v162, 12, v92
	v_add_nc_u32_e32 v163, 13, v92
	v_add_nc_u32_e32 v164, 14, v92
	v_add_nc_u32_e32 v165, 15, v92
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v169, s12, v36 :: v_dual_and_b32 v166, 0x7050301, v33
	v_and_b32_e32 v168, 0x7060706, v35
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s3, s51, s72
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v173, v42
	v_mad_u64_u32 v[46:47], null, s3, s39, v[91:92]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v175, v41, v41
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[41:42], null, s3, s38, v[82:83]
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v43, 0, v116
	v_add_nc_u32_e32 v45, 0, v117
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_mov_b32 v38, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v46
	v_add_lshl_u32 v44, v46, s39, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s26
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v47, v46, s69, 1
	v_add_lshl_u32 v46, v46, s70, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v34, s41
	v_mov_b32_e32 v36, s43
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[178:181], v41, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v204, 0x80000000, v42, s4
	v_cndmask_b32_e64 v41, 0x80000000, v47, s4
	v_cndmask_b32_e64 v42, 0x80000000, v46, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v40, s47
	v_dual_mov_b32 v37, s44 :: v_dual_add_nc_u32 v174, 0, v120
	v_dual_mov_b32 v39, s46 :: v_dual_max_f32 v176, v170, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v205, 0x80000000, v44, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 1, v81
	v_or_b32_e32 v51, 2, v81
	v_or_b32_e32 v52, 3, v81
	v_or_b32_e32 v53, 4, v81
	v_or_b32_e32 v54, 5, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v49
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v55, 6, v81
	v_or_b32_e32 v56, 7, v81
	v_or_b32_e32 v57, 8, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s51, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v51
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v59, 10, v81
	v_or_b32_e32 v60, 11, v81
	v_or_b32_e32 v61, 12, v81
	v_or_b32_e32 v63, 14, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v52
	v_or_b32_e32 v64, s51, v113
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 9, v81
	v_or_b32_e32 v62, 13, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v50, v114
	v_cmp_ge_i32_e64 s12, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v50, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v64, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v64, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s51, v59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v54
	v_or_b32_e32 v53, s51, v60
	v_or_b32_e32 v54, s51, v61
	v_or_b32_e32 v59, s51, v63
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s24, s73, s51
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v55
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v50, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v50, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v53, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v53, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v56
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v54, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v54, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v59, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v59, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v57
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s5, s6, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v202, s24, v92, 2
	v_add_lshl_u32 v203, s24, v151, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v49, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v49, v115
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s51, v58
	v_or_b32_e32 v58, s51, v62
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v64, s24, v157, 2
	v_add_lshl_u32 v51, s24, v159, 2
	v_add_lshl_u32 v52, s24, v160, 2
	v_add_lshl_u32 v55, s24, v163, 2
	v_add_lshl_u32 v57, s24, v165, 2
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v49, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v58, v114
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v58, v115
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s7, s10, s11
	s_and_b32 s6, vcc_lo, s3
	s_and_b32 s3, vcc_lo, s5
	s_and_b32 s5, s8, s9
	s_and_b32 s8, s12, s13
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s9, vcc_lo, s8
	s_and_b32 s10, s14, s15
	s_and_b32 s12, s16, s17
	s_and_b32 s14, s18, s19
	s_and_b32 s15, s20, s21
	s_and_b32 s17, s22, s23
	s_and_b32 s19, s27, s28
	s_and_b32 s20, s29, s30
	s_and_b32 s21, s31, s33
	s_and_b32 s23, s36, s37
	s_and_b32 s22, s34, s35
	s_and_b32 s11, vcc_lo, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v58, 0x80000000, v202, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s13, vcc_lo, s12
	s_and_b32 s8, vcc_lo, s14
	s_and_b32 s16, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s17
	s_and_b32 s12, vcc_lo, s19
	s_and_b32 s17, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s21
	s_and_b32 s21, vcc_lo, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v59, 0x80000000, v203, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, v93, s51, 1
	v_add_lshl_u32 v66, v129, s51, 1
	v_add_lshl_u32 v67, v130, s51, 1
	v_add_lshl_u32 v68, v131, s51, 1
	v_add_lshl_u32 v69, v132, s51, 1
	v_add_lshl_u32 v70, v133, s51, 1
	v_add_lshl_u32 v71, v134, s51, 1
	v_add_lshl_u32 v72, v135, s51, 1
	v_add_lshl_u32 v75, v138, s51, 1
	v_add_lshl_u32 v76, v139, s51, 1
	v_add_lshl_u32 v77, v140, s51, 1
	v_add_lshl_u32 v78, v141, s51, 1
	v_add_lshl_u32 v79, v142, s51, 1
	v_add_lshl_u32 v80, v143, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v64, 0x80000000, v64, s16
	v_cndmask_b32_e64 v52, 0x80000000, v52, s12
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v73, v136, s51, 1
	v_add_lshl_u32 v74, v137, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v172.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 32
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[178:179]
	ds_store_b64 v121, v[180:181]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v45 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v122 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[194:197], v41, s[64:67], 0 offen
	buffer_load_b128 v[41:44], v42, s[64:67], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v50.h, v172.h
	v_mov_b16_e64 v61.h, v172.h
	v_mov_b16_e64 v56.h, v172.h
	v_mov_b16_e64 v54.h, v172.h
	v_mov_b16_e64 v53.h, v172.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[45:46], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[47:48], v[89:90], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v123 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v124 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[198:199], v[87:88], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[200:201], v[87:88], v[186:193] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[33:34], v[85:86], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[35:36], v[85:86], v[186:193] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[37:38], v[83:84], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[39:40], v[83:84], v[186:193] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s24, v152, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v178
	v_cvt_f32_i32_e32 v198, v179
	v_cvt_f32_i32_e32 v199, v180
	v_cvt_f32_i32_e32 v200, v181
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[33:36], v205, s[64:67], 0 offen
	buffer_load_b128 v[178:181], v204, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v201, v182
	v_cvt_f32_i32_e32 v206, v183
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v191, v191
	v_mul_f32_e32 v212, v169, v37
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v183.l, v194.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v183.h, v41.l
	v_mov_b16_e64 v41.l, v194.h
	v_mov_b16_e64 v48.l, v195.l
	v_mov_b16_e32 v48.h, v42.l
	v_mov_b16_e64 v42.l, v195.h
	v_mov_b16_e64 v46.l, v196.l
	v_mov_b16_e32 v46.h, v43.l
	v_mov_b16_e64 v43.l, v196.h
	v_mov_b16_e32 v39.h, v44.l
	v_mov_b16_e64 v44.l, v197.h
	v_mov_b16_e64 v39.l, v197.l
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v194, s24, v158, 2
	v_add_lshl_u32 v195, s24, v161, 2
	v_add_lshl_u32 v196, s24, v162, 2
	v_add_lshl_u32 v197, s24, v164, 2
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v37, v44
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v182.h, v33.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v33.l, v178.h
	v_mov_b16_e64 v182.l, v178.l
	v_mov_b16_e32 v47.h, v34.l
	v_mov_b16_e64 v34.l, v179.h
	v_mov_b16_e64 v47.l, v179.l
	v_mov_b16_e32 v45.h, v35.l
	v_mov_b16_e64 v35.l, v180.h
	v_mov_b16_e64 v45.l, v180.l
	v_mov_b16_e64 v38.l, v181.l
	v_mov_b16_e32 v38.h, v36.l
	v_mov_b16_e64 v36.l, v181.h
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v178, s24, v153, 2
	v_add_lshl_u32 v179, s24, v154, 2
	v_add_lshl_u32 v180, s24, v155, 2
	v_add_lshl_u32 v181, s24, v156, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v49, v114
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v60, 0x80000000, v178, s9
	v_cndmask_b32_e64 v62, 0x80000000, v179, s5
	v_cndmask_b32_e64 v63, 0x80000000, v180, s13
	v_cndmask_b32_e64 v178, 0x80000000, v181, s8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s24, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v179, 0x80000000, v194, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, vcc_lo, s18
	s_and_b32 s18, vcc_lo, s22
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v180, 0x80000000, v195, s17
	v_cndmask_b32_e64 v181, 0x80000000, v196, s20
	v_cndmask_b32_e64 v194, 0x80000000, v197, s21
	v_cndmask_b32_e64 v51, 0x80000000, v51, s14
	v_cndmask_b32_e64 v55, 0x80000000, v55, s18
	s_clause 0xf
	buffer_load_b32 v195, v40, s[56:59], 0 offen
	buffer_load_b32 v196, v60, s[56:59], 0 offen
	buffer_load_b32 v197, v58, s[56:59], 0 offen
	buffer_load_b32 v202, v59, s[56:59], 0 offen
	buffer_load_b32 v203, v52, s[56:59], 0 offen
	buffer_load_b32 v180, v180, s[56:59], 0 offen
	buffer_load_b32 v179, v179, s[56:59], 0 offen
	buffer_load_b32 v204, v51, s[56:59], 0 offen
	buffer_load_b32 v178, v178, s[56:59], 0 offen
	buffer_load_b32 v64, v64, s[56:59], 0 offen
	buffer_load_b32 v205, v62, s[56:59], 0 offen
	buffer_load_b32 v207, v63, s[56:59], 0 offen
	buffer_load_b32 v194, v194, s[56:59], 0 offen
	buffer_load_b32 v208, v57, s[56:59], 0 offen
	buffer_load_b32 v181, v181, s[56:59], 0 offen
	buffer_load_b32 v209, v55, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v65, v65, s[60:63], 0 offen
	buffer_load_u16 v66, v66, s[60:63], 0 offen
	buffer_load_u16 v67, v67, s[60:63], 0 offen
	buffer_load_u16 v68, v68, s[60:63], 0 offen
	buffer_load_u16 v69, v69, s[60:63], 0 offen
	buffer_load_u16 v70, v70, s[60:63], 0 offen
	buffer_load_u16 v71, v71, s[60:63], 0 offen
	buffer_load_u16 v72, v72, s[60:63], 0 offen
	buffer_load_u16 v210, v73, s[60:63], 0 offen
	buffer_load_u16 v211, v74, s[60:63], 0 offen
	buffer_load_u16 v75, v75, s[60:63], 0 offen
	buffer_load_u16 v76, v76, s[60:63], 0 offen
	buffer_load_u16 v77, v77, s[60:63], 0 offen
	buffer_load_u16 v78, v78, s[60:63], 0 offen
	buffer_load_u16 v79, v79, s[60:63], 0 offen
	buffer_load_u16 v80, v80, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v177, 0, v119
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v169, v187
	v_mul_f32_e32 v51, v169, v188
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v177, v[182:183], v[40:41] offset1:8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v169, v189
	v_mul_f32_e32 v59, v169, v192
	v_mul_f32_e32 v60, v169, v193
	v_mul_f32_e32 v73, v169, v199
	v_mul_f32_e32 v199, v169, v201
	v_mul_f32_e32 v57, v169, v190
	v_mul_f32_e32 v198, v169, v198
	v_mul_f32_e32 v74, v169, v200
	v_mul_f32_e32 v200, v169, v206
	v_mul_f32_e32 v33, v169, v184
	v_mul_f32_e32 v58, v169, v191
	v_mul_f32_e32 v40, v169, v185
	v_mul_f32_e32 v62, v169, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.h, v172.h
	v_mov_b16_e64 v55.h, v172.h
	v_mov_b16_e64 v177.h, v172.h
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(31)
	v_cndmask_b32_e64 v41, 0xff800000, v195, s7
	s_waitcnt vmcnt(30)
	v_cndmask_b32_e64 v187, 0xff800000, v196, s9
	s_waitcnt vmcnt(29)
	v_cndmask_b32_e64 v188, 0xff800000, v197, s6
	s_waitcnt vmcnt(28)
	v_cndmask_b32_e64 v189, 0xff800000, v202, s11
	s_waitcnt vmcnt(27)
	v_cndmask_b32_e64 v190, 0xff800000, v203, s12
	s_waitcnt vmcnt(26)
	v_cndmask_b32_e64 v191, 0xff800000, v180, s17
	s_waitcnt vmcnt(25)
	v_cndmask_b32_e64 v192, 0xff800000, v179, s15
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v193, 0xff800000, v204, s14
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v41
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(22)
	v_cndmask_b32_e64 v196, 0xff800000, v64, s16
	s_waitcnt vmcnt(21)
	v_cndmask_b32_e64 v197, 0xff800000, v205, s5
	s_waitcnt vmcnt(20)
	v_cndmask_b32_e64 v201, 0xff800000, v207, s13
	s_waitcnt vmcnt(19)
	v_cndmask_b32_e64 v194, 0xff800000, v194, s21
	s_waitcnt vmcnt(18)
	v_cndmask_b32_e64 v202, 0xff800000, v208, s3
	s_waitcnt vmcnt(17)
	v_cndmask_b32_e64 v203, 0xff800000, v181, s20
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e64 v204, 0xff800000, v209, s18
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v205, 16, v65
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v206, 16, v66
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v207, 16, v67
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v44, v189, v188, s1
	v_cndmask_b32_e64 v65, v188, v189, s1
	v_cndmask_b32_e64 v66, v187, v41, s1
	v_cndmask_b32_e64 v67, v41, v187, s1
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v184, 16, v72
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v72, v193, v192, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v41, v34 :: v_dual_lshlrev_b32 v64, 16, v75
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v75, v192, v193, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v195, 0xff800000, v178, s8
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v187
	v_cmp_neq_f32_e64 s22, 0xff800000, v188
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v182, 16, v80
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v189
	v_cmp_neq_f32_e64 s24, 0xff800000, v190
	v_cmp_neq_f32_e64 s28, 0xff800000, v193
	v_cmp_neq_f32_e64 s30, 0xff800000, v196
	v_cmp_neq_f32_e64 s33, 0xff800000, v201
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v208, 16, v68
	v_lshlrev_b32_e32 v209, 16, v69
	v_lshlrev_b32_e32 v178, 16, v76
	v_lshlrev_b32_e32 v179, 16, v77
	v_lshlrev_b32_e32 v180, 16, v78
	v_lshlrev_b32_e32 v181, 16, v79
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v202
	v_cmp_neq_f32_e64 s36, 0xff800000, v203
	v_cmp_neq_f32_e64 s37, 0xff800000, v204
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v68, v201, v197, s1
	v_cndmask_b32_e64 v69, v197, v201, s1
	v_cndmask_b32_e64 v76, v191, v190, s1
	v_cndmask_b32_e64 v77, v190, v191, s1
	v_cndmask_b32_e64 v78, v204, v203, s1
	v_cndmask_b32_e64 v79, v203, v204, s1
	v_cndmask_b32_e64 v80, v202, v194, s1
	v_cndmask_b32_e64 v188, v194, v202, s1
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v126, v[47:48], v[41:42] offset1:8
	v_mov_b32_e32 v42, v35
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v201, v111, v44
	ds_bpermute_b32 v202, v112, v65
	ds_bpermute_b32 v203, v111, v66
	ds_bpermute_b32 v204, v112, v67
	ds_bpermute_b32 v216, v111, v72
	ds_bpermute_b32 v75, v112, v75
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v191
	v_cmp_neq_f32_e64 s27, 0xff800000, v192
	v_cmp_neq_f32_e64 s29, 0xff800000, v195
	v_cmp_neq_f32_e64 s31, 0xff800000, v197
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s7, s7, s10
	s_and_b32 s10, s6, s22
	s_and_b32 s6, s13, s33
	s_and_b32 s9, s9, s19
	s_and_b32 s13, s11, s23
	s_and_b32 s12, s12, s24
	s_and_b32 s14, s14, s28
	s_and_b32 s16, s16, s30
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v213, 16, v70
	v_lshlrev_b32_e32 v183, 16, v71
	v_lshlrev_b32_e32 v185, 16, v210
	v_lshlrev_b32_e32 v186, 16, v211
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v70, v196, v195, s1
	v_cndmask_b32_e64 v71, v195, v196, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v189, 0, 1, s9
	v_cndmask_b32_e64 v41, 0, 1, s7
	v_cndmask_b32_e64 v47, 0, 1, s13
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v127, v[45:46], v[42:43] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s12
	v_cndmask_b32_e64 v46, 0, 1, s14
	v_cndmask_b32_e64 v190, 0, 1, s16
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v128, v[38:39], v[36:37] offset1:8
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v192, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v210, v111, v68
	ds_bpermute_b32 v211, v112, v69
	ds_bpermute_b32 v34, v111, v76
	ds_bpermute_b32 v36, v112, v77
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, s17, s25
	s_and_b32 s15, s15, s27
	s_and_b32 s17, s8, s29
	s_and_b32 s19, s5, s31
	v_cndmask_b32_e64 v43, 0, 1, s11
	v_cndmask_b32_e64 v48, 0, 1, s15
	v_cndmask_b32_e64 v191, 0, 1, s17
	v_cndmask_b32_e64 v193, 0, 1, s19
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v214, v111, v70
	ds_bpermute_b32 v215, v112, v71
	ds_bpermute_b32 v35, v111, v78
	ds_bpermute_b32 v37, v112, v79
	ds_bpermute_b32 v187, v111, v80
	ds_bpermute_b32 v188, v112, v188
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v38.l, v189.l
	v_mov_b16_e32 v39.l, v41.l
	v_mov_b16_e32 v41.l, v47.l
	v_mov_b16_e32 v44.l, v45.l
	v_mov_b16_e32 v45.l, v46.l
	v_mov_b16_e64 v47.l, v190.l
	v_mov_b16_e64 v49.l, v192.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v194
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s3, s35
	s_and_b32 s18, s18, s37
	v_cndmask_b32_e64 v42, 0, 1, s10
	v_cndmask_b32_e64 v194, 0, 1, s5
	v_cndmask_b32_e64 v196, 0, 1, s18
	v_mov_b16_e32 v46.l, v48.l
	v_mov_b16_e64 v48.l, v191.l
	v_mov_b16_e64 v50.l, v193.l
	v_lshlrev_b16 v38.l, 8, v38.l
	v_lshlrev_b16 v38.h, 8, v41.l
	v_lshlrev_b16 v39.h, 8, v43.l
	v_lshlrev_b16 v41.l, 8, v45.l
	v_lshlrev_b16 v41.h, 8, v47.l
	v_lshlrev_b16 v42.h, 8, v49.l
	s_and_b32 s8, s21, s34
	s_and_b32 s20, s20, s36
	v_cndmask_b32_e64 v195, 0, 1, s8
	v_cndmask_b32_e64 v197, 0, 1, s20
	v_mov_b16_e64 v53.l, v194.l
	v_mov_b16_e64 v55.l, v196.l
	v_or_b16 v45.h, v39.l, v38.l
	v_or_b16 v45.l, v42.l, v38.h
	v_or_b16 v38.h, v44.l, v39.h
	v_or_b16 v38.l, v46.l, v41.l
	v_or_b16 v39.h, v48.l, v41.h
	v_or_b16 v39.l, v50.l, v42.h
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(16)
	v_cndmask_b32_e64 v41, v202, v201, s0
	s_waitcnt lgkmcnt(14)
	v_cndmask_b32_e64 v42, v204, v203, s0
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v78, v75, v216, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v54.l, v195.l
	v_mov_b16_e64 v56.l, v197.l
	v_lshlrev_b16 v43.l, 8, v53.l
	v_lshlrev_b16 v43.h, 8, v55.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v189, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v190, 0x3fb8aa3b, v42
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v76, v211, v210, s0
	v_cndmask_b32_e64 v193, v216, v75, s0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v75, v36, v34, s0
	v_mul_f32_e32 v196, 0x3fb8aa3b, v78
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v46.h, v54.l, v43.l
	v_or_b16 v46.l, v56.l, v43.h
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v47, v201, v202, s0
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v189, v212, v205 :: v_dual_fmac_f32 v190, v198, v206
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v48, v203, v204, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v77, v215, v214, s0
	v_dual_mul_f32 v194, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v197, 0x3fb8aa3b, v75
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v196, v199, v209
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v198, v34, v36, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v34, v37, v35, s0
	v_cndmask_b32_e64 v199, v35, v37, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v35, v188, v187, s0
	v_dual_mul_f32 v195, 0x3fb8aa3b, v77 :: v_dual_fmac_f32 v194, v73, v207
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v197, v200, v213 :: v_dual_mul_f32 v204, 0x3fb8aa3b, v34
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v200, v39, v45, v144
	v_perm_b32 v201, v39, v45, v166
	v_perm_b32 v202, v46, v38, v144
	v_perm_b32 v203, v46, v38, v166
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v205, 0x3fb8aa3b, v35
	v_dual_mul_f32 v206, 0x3fb8aa3b, v47 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v48
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v204, v33, v183
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v183, v112, v201
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v205, v40, v184 :: v_dual_fmac_f32 v206, v62, v185
	v_fmac_f32_e32 v207, v63, v186
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v63, v111, v200
	ds_bpermute_b32 v184, v111, v202
	ds_bpermute_b32 v185, v112, v203
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v191, v210, v211, s0
	v_cndmask_b32_e64 v192, v214, v215, s0
	v_cndmask_b32_e64 v62, v187, v188, s0
	v_dual_mul_f32 v188, 0x3fb8aa3b, v193 :: v_dual_fmac_f32 v195, v74, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v186, 0x3fb8aa3b, v191 :: v_dual_mul_f32 v187, 0x3fb8aa3b, v192
	v_dual_mul_f32 v191, 0x3fb8aa3b, v198 :: v_dual_mul_f32 v192, 0x3fb8aa3b, v199
	v_mul_f32_e32 v62, 0x3fb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v186, v51, v64 :: v_dual_fmac_f32 v187, v52, v178
	v_fmac_f32_e32 v191, v58, v180
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v174
	ds_load_b128 v[69:72], v145
	ds_load_b128 v[41:44], v148
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, v183, v63, s0
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v148 offset:2048
	ds_load_b128 v[45:48], v149
	ds_load_b128 v[37:40], v149 offset:2048
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v52, v185, v184, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v57, v179
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v57, v63, v183, s0
	v_cndmask_b32_e64 v58, v184, v185, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v192, v59, v181 :: v_dual_and_b32 v63, 1, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v59, 1, v51
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v62, v60, v182 :: v_dual_and_b32 v185, 0x10000, v57
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v183, 1, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s31, 1, v63
	v_and_b32_e32 v180, 0x100, v58
	v_cmp_eq_u32_e64 s27, 0, v185
	v_cmp_eq_u32_e64 s29, 1, v59
	v_and_b32_e32 v198, 0x1000000, v51
	v_and_b32_e32 v182, 0x1000000, v57
	v_cmp_eq_u32_e64 s22, 0, v180
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, v186, 0xff800000, s27
	v_cndmask_b32_e64 v186, 0xff800000, v196, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v184, 0x1000000, v58
	v_cmp_eq_u32_e64 s34, 0, v198
	v_and_b32_e32 v179, 1, v58
	v_and_b32_e32 v58, 0x10000, v58
	v_cmp_eq_u32_e64 s25, 0, v182
	v_cmp_eq_u32_e64 s23, 0, v184
	v_cmp_eq_u32_e64 s28, 1, v183
	v_cmp_eq_u32_e64 s3, 1, v179
	v_cmp_eq_u32_e64 s24, 0, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, v187, 0xff800000, s25
	v_cndmask_b32_e64 v180, v62, 0xff800000, s23
	v_cndmask_b32_e64 v62, 0xff800000, v189, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v60, 0x100, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, v195, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v57, 0x100, v57
	v_and_b32_e32 v51, 0x10000, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v188, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 0, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, v191, 0xff800000, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s21, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, v192, 0xff800000, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 0, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, v190, 0xff800000, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v64, 0x100, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, v207, 0xff800000, s21
	v_cndmask_b32_e64 v191, 0xff800000, v206, s28
	v_cndmask_b32_e64 v190, v194, 0xff800000, s35
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v188, v179, v181
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v64
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v62, v184
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v194, v191, v62, s0
	v_cndmask_b32_e64 v195, v62, v191, s0
	v_cndmask_b32_e64 v196, v178, v184, s0
	v_cndmask_b32_e64 v187, v197, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v193, 0x1000000, v52
	v_and_b32_e32 v52, 0x10000, v52
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v145 offset:2048
	ds_load_b128 v[73:76], v174 offset:2048
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s68
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v189, v186, v187
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v193
	v_cmp_eq_u32_e64 s36, 0, v52
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v178, v185, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, v205, 0xff800000, s37
	v_cndmask_b32_e64 v192, v204, 0xff800000, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v52, v51, v180
	v_max3_f32 v52, v57, v190, v58
	v_max3_f32 v59, v192, v193, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v51, v52, v59, v51
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v52, v51, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v183, v171, v51, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v184, v183
	v_sub_f32_e32 v57, v190, v183
	v_sub_f32_e32 v58, v189, v183
	v_sub_f32_e32 v52, v62, v183
	v_sub_f32_e32 v64, v187, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v64, v64
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v197, v171, v183
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v191, v183
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, v184, v178, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, v51, 0, s30
	v_cndmask_b32_e64 v57, v57, 0, s35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v58, v58, 0, s34
	v_cndmask_b32_e64 v52, 0, v52, s29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v64, v64, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v51.h
	v_mov_b16_e32 v50.l, v57.h
	v_cmp_o_f32_e64 s29, v51, v51
	v_cmp_o_f32_e64 s34, v57, v57
	v_cmp_o_f32_e64 s35, v58, v58
	v_and_b32_e32 v59, 1, v172
	v_and_b32_e32 v50, 1, v50
	v_mov_b16_e64 v172.l, v58.h
	v_mov_b16_e32 v49.l, v52.h
	v_cmp_o_f32_e64 s30, v52, v52
	v_add3_u32 v51, v51, v59, 0x7fff
	v_add3_u32 v59, v57, v50, 0x7fff
	v_and_b32_e32 v50, 1, v172
	v_and_b32_e32 v49, 1, v49
	v_mov_b16_e64 v172.l, v64.h
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s29
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v197, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v60, v58, v50, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v59.h, s34
	v_add3_u32 v49, v52, v49, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v184, v125, v184
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s35
	v_cndmask_b16 v51.l, 0x7fff, v49.h, s30
	v_cmp_o_f32_e64 s30, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v63, v60, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v51, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v59, v63, v60, v167
	v_perm_b32 v60, v63, v60, v168
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v186, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v49, v51, v167
	v_perm_b32 v58, v49, v51, v168
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v174 offset:1024
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v61.l, v63.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s29, v63, v63
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v63, v61, 0x7fff
	v_and_b32_e32 v63, 1, v172
	v_cndmask_b16 v62.l, 0x7fff, v61.h, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v64, v63, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v193, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v62.h, 0x7fff, v63.h, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v63, v62, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v61, v63, v62, v167
	v_perm_b32 v62, v63, v62, v168
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v192, v183
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v64, v64, 0, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v172.l, v64.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s30, v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, v63, 0, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v56.l, v63.h
	v_cmp_o_f32_e64 s29, v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v56, 1, v56
	v_add3_u32 v56, v63, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s29
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v171
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, v179, v187, s0
	v_cndmask_b32_e64 v187, v187, v179, s0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v197, 0, v197, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v63, 1, v172
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v171, v118, v171
	ds_bpermute_b32 v187, v125, v187
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v64, v63, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v197
	v_mul_f32_e32 v18, v18, v197
	v_mul_f32_e32 v19, v19, v197
	v_mul_f32_e32 v20, v20, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.h, 0x7fff, v63.h, s30
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v197
	v_mul_f32_e32 v23, v23, v197
	v_mul_f32_e32 v24, v24, v197
	v_mul_f32_e32 v26, v26, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v64, v56, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v197
	v_mul_f32_e32 v10, v10, v197
	v_mul_f32_e32 v12, v12, v197
	v_mul_f32_e32 v7, v7, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v63, v64, v56, v167
	v_perm_b32 v64, v64, v56, v168
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, v188, v186, s0
	v_cndmask_b32_e64 v186, v186, v188, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v188, v188, v183
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v204, v187, v171, s1
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[57:64], v[17:24]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, v180, v193, s0
	v_cndmask_b32_e64 v68, v193, v180, s0
	v_cndmask_b32_e64 v69, v185, v190, s0
	v_cndmask_b32_e64 v70, v190, v185, s0
	v_cndmask_b32_e64 v65, v181, v192, s0
	v_cndmask_b32_e64 v66, v192, v181, s0
	v_cndmask_b32_e64 v71, v182, v189, s0
	v_cndmask_b32_e64 v72, v189, v182, s0
	ds_bpermute_b32 v56, v118, v56
	ds_bpermute_b32 v186, v125, v186
	ds_bpermute_b32 v67, v118, v67
	ds_bpermute_b32 v68, v125, v68
	ds_bpermute_b32 v69, v118, v69
	ds_bpermute_b32 v70, v125, v70
	ds_bpermute_b32 v190, v125, v195
	ds_bpermute_b32 v192, v118, v194
	ds_bpermute_b32 v189, v118, v196
	ds_bpermute_b32 v193, v118, v65
	ds_bpermute_b32 v194, v125, v66
	ds_bpermute_b32 v71, v118, v71
	ds_bpermute_b32 v72, v125, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v185, v183
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v205, v171, v187, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v185
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v202, v186, v56, s1
	v_cndmask_b32_e64 v203, v56, v186, s1
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v65, v68, v67, s1
	v_cndmask_b32_e64 v66, v67, v68, s1
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v206, v70, v69, s1
	v_cndmask_b32_e64 v207, v69, v70, s1
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(5)
	v_dual_max_f32 v56, v190, v190 :: v_dual_max_f32 v69, v192, v192
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v200, v184, v189, s1
	v_cndmask_b32_e64 v201, v189, v184, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v188
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v210, v72, v71, s1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v69, v56
	v_max3_f32 v69, v193, v194, v65
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v211, v71, v72, s1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v71, v72, v202
	v_max3_f32 v71, v203, v204, v205
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v191
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, v194, v193, s1
	v_cndmask_b32_e64 v68, v193, v194, s1
	v_cndmask_b32_e64 v208, v190, v192, s1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v71, v69, v66
	v_max3_f32 v71, v201, v206, v207
.Ltmp19:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, v192, v190, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v56, v200, v71
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v72, s28
	v_cndmask_b32_e64 v72, v171, 0, s27
	v_cndmask_b32_e64 v171, 0, v184, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[184:187], v146
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v212, v56, v70, v69
.Ltmp23:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v197
	v_mul_f32_e32 v30, v30, v197
	v_mul_f32_e32 v31, v31, v197
	v_mul_f32_e32 v32, v32, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.l, v72.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v55.l, v171.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v9, v197 :: v_dual_and_b32 v54, 1, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v171, v171
	v_and_b32_e32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[57:64], v[25:32]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v41, v181, v183
	v_sub_f32_e32 v44, v179, v183
	v_sub_f32_e32 v42, v178, v183
	v_sub_f32_e32 v43, v182, v183
	v_sub_f32_e32 v45, v180, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v215, v171, v55, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_mov_b32_e32 v171, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v71.h
	v_cmp_o_f32_e64 s3, v71, v71
	v_cmp_o_f32_e64 s27, v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, v41, 0, s24
	v_cndmask_b32_e64 v44, v44, 0, s22
	v_cndmask_b32_e64 v42, v42, 0, s21
	v_cndmask_b32_e64 v43, v43, 0, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v214, v72, v54, 0x7fff
	v_mov_b16_e64 v177.l, v41.h
	v_cmp_o_f32_e64 s22, v41, v41
	v_mov_b16_e64 v172.l, v42.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, v45, 0, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v46, 1, v177
	v_cmp_o_f32_e64 s23, v42, v42
	v_cmp_o_f32_e64 s24, v43, v43
	v_cmp_o_f32_e64 s25, v44, v44
	v_cmp_o_f32_e64 s21, v45, v45
	v_add3_u32 v41, v41, v46, 0x7fff
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v46, v212
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v214.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v197 :: v_dual_max_f32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v13, v13, v197 :: v_dual_max_f32 v46, v212, v46
	v_mul_f32_e32 v14, v14, v197
	v_mul_f32_e32 v15, v15, v197
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[57:64], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v41.h, s22
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v41, v175, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v79, 1, v172
	v_mov_b16_e64 v172.l, v43.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v46, v176, v46 :: v_dual_sub_f32 v67, v67, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v41
	v_sub_f32_e32 v65, v65, v41
	v_sub_f32_e32 v66, v66, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v79, 0x7fff
	v_and_b32_e32 v79, 1, v172
	v_mov_b16_e64 v172.l, v44.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v197
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.h, 0x7fff, v42.h, s23
	v_add3_u32 v42, v43, v79, 0x7fff
	v_and_b32_e32 v43, 1, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v202, v41
	v_sub_f32_e32 v176, v201, v41
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v42.h, s24
	v_add3_u32 v42, v44, v43, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v53, 1, v53
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s8
	v_cndmask_b32_e64 v66, 0, v66, s5
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v178, v207, v41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v77.h, 0x7fff, v42.h, s25
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v42, v67, v68 :: v_dual_sub_f32 v175, v200, v41
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v178, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v213, v71, v53, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v174 offset:3072
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v174, v209, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v197
	v_dual_mul_f32 v4, v4, v197 :: v_dual_sub_f32 v201, v170, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v45.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.l, 0x7fff, v213.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v175, s7
	v_cndmask_b32_e64 v175, 0, v178, s6
	v_cndmask_b32_e64 v178, 0, v181, s15
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v80, v208, v41
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v170
	v_mov_b32_e32 v170, v46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v174, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v172, 1, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v179, v210, v41
	v_sub_f32_e32 v180, v211, v41
	v_sub_f32_e32 v182, v203, v41
	v_sub_f32_e32 v183, v204, v41
	v_sub_f32_e32 v200, v205, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v183, v183
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v80, s10
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v176, s9
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v197
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v200, v200
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v146 offset:2048
	ds_load_b128 v[188:191], v147
	ds_load_b128 v[196:199], v147 offset:2048
	ds_load_b128 v[53:56], v150
	ds_load_b128 v[73:76], v150 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v179, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v77.l, 0x7fff, v215.h, s28
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[57:64], v[1:8]
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v43, v44
	v_add_f32_e32 v36, v79, v80
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v179, 0, v182, s14
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v65, v66
.Ltmp33:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v201, v201
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v200, s11
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v177, v206, v41
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v178, v179
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v47, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v48, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v182, 0, v201, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v46, v47, v167
	v_perm_b32 v34, v46, v47, v168
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v177, s19
	v_cndmask_b32_e64 v177, 0, v180, s16
	v_cndmask_b32_e64 v180, 0, v183, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v174, v175 :: v_dual_add_f32 v38, v176, v177
	v_add_f32_e32 v40, v180, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v36, v37, v38 :: v_dual_add_f32 v37, v39, v40
	v_add_f32_e32 v38, v42, v43
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v45, v172, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v35, v36
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v44, v48, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.h, 0x7fff, v39.h, s21
	v_permlanex16_b32 v38, v77, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v36, v37
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v78, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v44, v48, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v37, v38, v77, v167
	v_perm_b32 v38, v38, v77, v168
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v39, v40, v78, v167
	v_perm_b32 v40, v40, v78, v168
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[184:191], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[192:199], v[33:40], v[9:16]
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp51:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[69:76], v[33:40], v[1:8]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v42, v173, v182
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v7, v8
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
	ds_bpermute_b32 v33, v111, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
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
	v_mul_lo_u32 v33, s39, v110
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
	s_mul_i32 s0, s39, s50
	v_add_nc_u32_e32 v35, v33, v108
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s39, v108
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v108
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v37, v33, v108, 2
	v_add_lshl_u32 v38, v33, v109, 2
	v_add_lshl_u32 v39, v33, v107, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s39, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v37, s[48:51], 0 offen
	buffer_store_b32 v18, v38, s[48:51], 0 offen
	buffer_store_b32 v19, v39, s[48:51], 0 offen
	v_add_lshl_u32 v17, v33, v106, 2
	v_add_lshl_u32 v18, v33, v105, 2
	v_add_lshl_u32 v19, v33, v104, 2
	v_add_lshl_u32 v37, v33, v103, 2
	v_add_lshl_u32 v38, v33, v102, 2
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
	v_add_lshl_u32 v17, v33, v99, 2
	v_add_lshl_u32 v18, v33, v98, 2
	v_add_lshl_u32 v19, v33, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v33, v96, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	v_add_lshl_u32 v21, v33, v95, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v17, s[48:51], 0 offen
	buffer_store_b32 v26, v18, s[48:51], 0 offen
	buffer_store_b32 v27, v19, s[48:51], 0 offen
	v_add_lshl_u32 v18, v33, v94, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s39, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	buffer_store_b32 v28, v20, s[48:51], 0 offen
	v_add_lshl_u32 v19, v33, v101, 2
	v_add_lshl_u32 v20, v33, v100, 2
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
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v108
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[48:51], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s39, v36
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
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 217
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 217
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12328
; TotalNumSgprs: 76
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 217
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
