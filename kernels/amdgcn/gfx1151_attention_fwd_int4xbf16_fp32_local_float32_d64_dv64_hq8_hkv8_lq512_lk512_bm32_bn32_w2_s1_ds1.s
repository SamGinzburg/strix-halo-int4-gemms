	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
	s_lshl_b32 s51, s3, 9
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v81, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s6, v33
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	s_add_i32 s50, s6, s51
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v108, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
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
	v_mad_u64_u32 v[82:83], null, s68, v33, v[81:82]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s68, v81
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s53, 0xffff
	v_lshlrev_b32_e32 v111, 2, v9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s6, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v106, 6, v108
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s68, s50, v[82:83]
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
	s_min_i32 s8, s2, 0x200
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
	s_add_i32 s71, s8, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v101, 28, v108
	v_or_b32_e32 v100, 30, v108
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v9
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s70, s9, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s71, s71, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s70, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v111, v5
	ds_bpermute_b32 v35, v111, v6
	ds_bpermute_b32 v37, v111, v7
	ds_bpermute_b32 v39, v111, v8
	ds_bpermute_b32 v36, v112, v5
	ds_bpermute_b32 v38, v112, v6
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
	v_dual_mov_b32 v8, 0x6420 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v47, 0x7531 :: v_dual_add_nc_u32 v4, s7, v4
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v48, 2, v33
	v_and_b32_e32 v117, 0x3f0, v2
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_and_b32 v2, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 24, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v50, 0x7632
	buffer_load_u16 v45, v5, s[52:55], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v5, 16, v0
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_add_i32 s7, s3, s0
	v_cndmask_b32_e64 v51, 0x7531, v8, s1
	v_lshl_or_b32 v140, v1, 5, v3
	v_mov_b32_e32 v28, v25
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v5
	v_xor_b32_e32 v139, v117, v2
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v7, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v84, v39, v43, s0
	v_cndmask_b32_e64 v83, v37, v40, s0
	v_cndmask_b32_e64 v86, v43, v39, s0
	v_cndmask_b32_e64 v85, v40, v37, s0
	v_cndmask_b32_e64 v88, v35, v38, s0
	v_cndmask_b32_e64 v90, v38, v35, s0
	v_cndmask_b32_e64 v37, 0x6420, v47, s1
	v_lshl_or_b32 v38, v51, 8, v51
	v_cndmask_b32_e64 v39, 0x1054, v49, s0
	v_cndmask_b32_e64 v40, 0x3276, v50, s0
	v_mov_b32_e32 v31, v25
	v_cndmask_b32_e64 v87, v34, v36, s0
	v_cndmask_b32_e64 v89, v36, v34, s0
	v_xor_b32_e32 v34, 8, v139
	v_xor_b32_e32 v35, 8, v140
	v_xor_b32_e32 v36, 16, v140
	v_and_b32_e32 v38, 0x750031, v38
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v44, 56, v7
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v52, 6, v6
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v143, 0, v35
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v142, 0, v34
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v144, 0, v36
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v35, 0x750031, v37
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v36, 0x540054, v39
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v37, 0x760076, v40
	v_lshl_or_b32 v34, v38, 4, v38
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v137, s4, v4
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v5, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s7, -8
	v_and_or_b32 v141, v48, 60, v52
	v_xor_b32_e32 v43, 24, v140
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_add_nc_u32 v138, s5, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s5, s7, 3
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s7, s16, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s4
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s17, s5
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s18, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v113, 10, v81
	v_or_b32_e32 v114, 11, v81
	v_or_b32_e32 v115, 12, v81
	v_or_b32_e32 v116, 13, v81
	v_lshl_add_u32 v118, v1, 1, 0
	v_or_b32_e32 v119, 14, v81
	v_or_b32_e32 v120, 15, v81
	v_or_b32_e32 v121, s51, v108
	v_or_b32_e32 v122, s51, v109
	v_or_b32_e32 v123, s51, v107
	v_or_b32_e32 v124, s51, v106
	v_or_b32_e32 v125, s51, v105
	v_or_b32_e32 v126, s51, v104
	v_or_b32_e32 v127, s51, v103
	v_or_b32_e32 v128, s51, v102
	v_or_b32_e32 v129, s51, v99
	v_or_b32_e32 v130, s51, v98
	v_or_b32_e32 v131, s51, v97
	v_or_b32_e32 v132, s51, v96
	v_or_b32_e32 v133, s51, v95
	v_or_b32_e32 v134, s51, v94
	v_or_b32_e32 v135, s51, v101
	v_or_b32_e32 v136, s51, v100
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v145, 0, v43
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s69, v44
	v_xor_b32_e32 v146, 64, v141
	v_mov_b32_e32 v166, 0xff800000
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s19, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s76, s3, s5
	s_lshl_b32 s72, s69, 3
	s_lshl_b32 s73, s69, 4
	s_mul_i32 s74, s69, 24
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s75, 0x76543210
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
	s_add_i32 s76, s76, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[91:92], null, s69, v46, v[44:45]
	v_mad_u64_u32 v[92:93], null, s19, v33, v[81:82]
	v_lshl_or_b32 v33, v35, 4, v35
	v_lshl_or_b32 v35, v36, 4, v36
	v_lshl_or_b32 v36, v37, 4, v37
	v_and_b32_e32 v93, 0x7050301, v34
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v34, 16, v45
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v148, 2, v92
	v_add_nc_u32_e32 v150, 4, v92
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v147, 1, v92
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v152, 6, v92
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v149, 3, v92
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v154, 8, v92
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v151, 5, v92
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v156, 10, v92
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v153, 7, v92
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v158, 12, v92
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v155, 9, v92
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v160, 14, v92
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v157, 11, v92
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v159, 13, v92
	v_dual_mov_b32 v7, v25 :: v_dual_and_b32 v162, 0x7050301, v33
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v161, 15, v92
	v_dual_mov_b32 v42, v25 :: v_dual_and_b32 v163, 0x5040504, v35
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v165, s7, v34 :: v_dual_and_b32 v164, 0x7060706, v36
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s3, s70, s51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v170, v41, v41 :: v_dual_mov_b32 v169, v42
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[41:42], null, s3, s68, v[82:83]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v46, 1, v81
	v_or_b32_e32 v47, 2, v81
	v_or_b32_e32 v48, 3, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, s70, v81
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s76, s70
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, s70, v46
	v_or_b32_e32 v47, s70, v47
	v_or_b32_e32 v48, s70, v48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s29
	v_mad_u64_u32 v[177:178], null, s3, s69, v[91:92]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v42, s5, v92, 2
	v_add_lshl_u32 v178, s5, v147, 2
	v_add_lshl_u32 v179, s5, v148, 2
	v_add_lshl_u32 v180, s5, v149, 2
	v_add_lshl_u32 v181, s5, v150, 2
	v_add_lshl_u32 v182, s5, v151, 2
	v_add_lshl_u32 v183, s5, v152, 2
	v_add_lshl_u32 v184, s5, v153, 2
	v_add_lshl_u32 v185, s5, v154, 2
	v_add_lshl_u32 v186, s5, v155, 2
	v_add_lshl_u32 v187, s5, v156, 2
	v_add_lshl_u32 v188, s5, v157, 2
	v_add_lshl_u32 v189, s5, v158, 2
	v_add_lshl_u32 v190, s5, v159, 2
	v_add_lshl_u32 v191, s5, v160, 2
	v_add_lshl_u32 v192, s5, v161, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v45, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v45, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v46, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v46, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v47, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v47, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v48, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v48, v138
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[45:48], v41, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 4, v81
	v_or_b32_e32 v50, 5, v81
	v_or_b32_e32 v51, 6, v81
	v_or_b32_e32 v52, 7, v81
	v_or_b32_e32 v53, 8, v81
	v_or_b32_e32 v54, 9, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v55, s70, v113
	v_or_b32_e32 v56, s70, v114
	v_or_b32_e32 v58, s70, v115
	v_or_b32_e32 v57, s70, v116
	v_or_b32_e32 v59, s70, v119
	v_or_b32_e32 v60, s70, v120
	v_or_b32_e32 v49, s70, v49
	v_or_b32_e32 v50, s70, v50
	v_or_b32_e32 v51, s70, v51
	v_or_b32_e32 v52, s70, v52
	v_or_b32_e32 v53, s70, v53
	v_or_b32_e32 v54, s70, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v55, v137
	v_cmp_ge_i32_e64 s7, v56, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v55, v138
	v_cmp_le_i32_e64 s9, v56, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v58, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v58, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v57, v137
	v_cmp_ge_i32_e64 s13, v59, v137
	v_cmp_ge_i32_e64 s14, v60, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v57, v138
	v_cmp_le_i32_e64 s16, v59, v138
	v_cmp_le_i32_e64 s17, v60, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v49, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v49, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v50, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v50, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v51, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v51, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v52, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v52, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v53, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v53, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v54, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v54, v138
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s5
	s_and_b32 s5, s6, s8
	s_and_b32 s6, s7, s9
	s_and_b32 s7, s10, s11
	s_and_b32 s8, s12, s15
	s_and_b32 s10, s13, s16
	s_and_b32 s11, s14, s17
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_add_nc_u32_e32 v43, 0, v139
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_add_nc_u32 v44, 0, v140
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, vcc_lo, s3
	s_and_b32 s15, vcc_lo, s5
	s_and_b32 s18, vcc_lo, s6
	s_and_b32 s9, vcc_lo, s7
	s_and_b32 s20, vcc_lo, s8
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s6, vcc_lo, s11
	s_and_b32 s3, s19, s21
	s_and_b32 s7, s22, s23
	s_and_b32 s8, s24, s25
	s_and_b32 s10, s26, s27
	s_and_b32 s11, s28, s30
	s_and_b32 s17, s31, s33
	s_and_b32 s21, s34, s35
	s_and_b32 s22, s36, s37
	s_and_b32 s23, s38, s39
	s_and_b32 s16, vcc_lo, s3
	s_and_b32 s14, vcc_lo, s7
	s_and_b32 s12, vcc_lo, s8
	s_and_b32 s19, vcc_lo, s10
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s7, vcc_lo, s22
	s_and_b32 s8, vcc_lo, s23
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s41 :: v_dual_lshlrev_b32 v49, 1, v177
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v50, v177, s72, 1
	v_add_lshl_u32 v51, v177, s73, 1
	v_add_lshl_u32 v52, v177, s74, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v194, 0x80000000, v187, s15
	v_cndmask_b32_e64 v195, 0x80000000, v188, s18
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v198, 0x80000000, v178, s16
	v_cndmask_b32_e64 v199, 0x80000000, v179, s14
	v_cndmask_b32_e64 v200, 0x80000000, v180, s12
	v_cndmask_b32_e64 v201, 0x80000000, v181, s19
	v_cndmask_b32_e64 v202, 0x80000000, v182, s11
	v_cndmask_b32_e64 v203, 0x80000000, v183, s10
	v_cndmask_b32_e64 v204, 0x80000000, v184, s21
	v_cndmask_b32_e64 v205, 0x80000000, v185, s7
	v_cndmask_b32_e64 v206, 0x80000000, v186, s8
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v36, s43
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v38, s45
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v40, s47
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v193, 0x80000000, v42, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v59, 0x80000000, v49, s4
	v_cndmask_b32_e64 v60, 0x80000000, v50, s4
	v_cndmask_b32_e64 v196, 0x80000000, v51, s4
	v_cndmask_b32_e64 v197, 0x80000000, v52, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v61, v121, s70, 1
	v_add_lshl_u32 v62, v122, s70, 1
	v_add_lshl_u32 v63, v123, s70, 1
	v_add_lshl_u32 v64, v124, s70, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v189, 0x80000000, v189, s9
	v_cndmask_b32_e64 v190, 0x80000000, v190, s20
	v_cndmask_b32_e64 v191, 0x80000000, v191, s5
	v_cndmask_b32_e64 v192, 0x80000000, v192, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, v125, s70, 1
	v_add_lshl_u32 v66, v126, s70, 1
	v_add_lshl_u32 v67, v127, s70, 1
	v_add_lshl_u32 v68, v128, s70, 1
	v_add_lshl_u32 v69, v129, s70, 1
	v_add_lshl_u32 v70, v130, s70, 1
	v_add_lshl_u32 v71, v131, s70, 1
	v_add_lshl_u32 v72, v132, s70, 1
	v_add_lshl_u32 v73, v133, s70, 1
	v_add_lshl_u32 v74, v134, s70, 1
	v_add_lshl_u32 v75, v135, s70, 1
	v_add_lshl_u32 v76, v136, s70, 1
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v171, v166, v166 :: v_dual_add_nc_u32 v176, 0, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s70, s70, 32
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v77.h, v168.h
	v_mov_b16_e64 v78.h, v168.h
	v_mov_b16_e64 v79.h, v168.h
	v_mov_b16_e64 v80.h, v168.h
	v_mov_b16_e64 v172.h, v168.h
	v_mov_b16_e64 v175.h, v168.h
	v_mov_b16_e64 v173.h, v168.h
	v_mov_b16_e64 v174.h, v168.h
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[45:46]
	ds_store_b64 v142, v[47:48]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[55:58], v44 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v143 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v144 offset1:1
	ds_load_2addr_stride64_b64 v[185:188], v145 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[89:90], v[33:40] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[33:36], v59, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[179:180], v[85:86], v[49:56] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[57:60], v60, s[64:67], 0 offen
	buffer_load_b128 v[177:180], v196, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[181:182], v[87:88], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[87:88], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[83:84], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v41
	v_cvt_f32_i32_e32 v38, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v40, v44
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[41:44], v197, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0xf
	buffer_load_b32 v181, v199, s[56:59], 0 offen
	buffer_load_b32 v182, v200, s[56:59], 0 offen
	buffer_load_b32 v183, v193, s[56:59], 0 offen
	buffer_load_b32 v184, v204, s[56:59], 0 offen
	buffer_load_b32 v185, v201, s[56:59], 0 offen
	buffer_load_b32 v186, v202, s[56:59], 0 offen
	buffer_load_b32 v187, v198, s[56:59], 0 offen
	buffer_load_b32 v188, v194, s[56:59], 0 offen
	buffer_load_b32 v193, v195, s[56:59], 0 offen
	buffer_load_b32 v194, v205, s[56:59], 0 offen
	buffer_load_b32 v192, v192, s[56:59], 0 offen
	buffer_load_b32 v189, v189, s[56:59], 0 offen
	buffer_load_b32 v190, v190, s[56:59], 0 offen
	buffer_load_b32 v195, v206, s[56:59], 0 offen
	buffer_load_b32 v196, v203, s[56:59], 0 offen
	buffer_load_b32 v191, v191, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v61, v61, s[60:63], 0 offen
	buffer_load_u16 v62, v62, s[60:63], 0 offen
	buffer_load_u16 v63, v63, s[60:63], 0 offen
	buffer_load_u16 v64, v64, s[60:63], 0 offen
	buffer_load_u16 v197, v65, s[60:63], 0 offen
	buffer_load_u16 v198, v66, s[60:63], 0 offen
	buffer_load_u16 v199, v67, s[60:63], 0 offen
	buffer_load_u16 v200, v68, s[60:63], 0 offen
	buffer_load_u16 v201, v69, s[60:63], 0 offen
	buffer_load_u16 v202, v70, s[60:63], 0 offen
	buffer_load_u16 v203, v71, s[60:63], 0 offen
	buffer_load_u16 v204, v72, s[60:63], 0 offen
	buffer_load_u16 v205, v73, s[60:63], 0 offen
	buffer_load_u16 v206, v74, s[60:63], 0 offen
	buffer_load_u16 v207, v75, s[60:63], 0 offen
	buffer_load_u16 v208, v76, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_mul_f32_e32 v209, v165, v40
	v_mul_f32_e32 v40, v165, v48
	v_mul_f32_e32 v65, v165, v49
	v_mul_f32_e32 v66, v165, v50
	v_mul_f32_e32 v67, v165, v51
	v_mul_f32_e32 v68, v165, v52
	v_mul_f32_e32 v69, v165, v53
	v_mul_f32_e32 v70, v165, v54
	v_mul_f32_e32 v71, v165, v55
	v_mul_f32_e32 v72, v165, v56
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v37, v165, v37
	v_mul_f32_e32 v39, v165, v39
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_mul_f32_e32 v46, v165, v46
	v_mul_f32_e32 v38, v165, v38
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v176, v[33:36]
	s_waitcnt vmcnt(34)
	ds_store_b128 v176, v[57:60] offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b128 v176, v[177:180] offset:2048
	s_waitcnt vmcnt(32)
	ds_store_b128 v176, v[41:44] offset:3072
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(30)
	v_cndmask_b32_e64 v36, 0xff800000, v182, s12
	v_cndmask_b32_e64 v33, 0xff800000, v181, s14
	s_waitcnt vmcnt(29)
	v_cndmask_b32_e64 v41, 0xff800000, v183, s13
	s_waitcnt vmcnt(25)
	v_cndmask_b32_e64 v42, 0xff800000, v187, s16
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v44, 0xff800000, v188, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(23)
	v_cndmask_b32_e64 v48, 0xff800000, v193, s18
	s_waitcnt vmcnt(22)
	v_cndmask_b32_e64 v49, 0xff800000, v194, s7
	s_waitcnt vmcnt(18)
	v_cndmask_b32_e64 v50, 0xff800000, v195, s8
	s_waitcnt vmcnt(17)
	v_cndmask_b32_e64 v51, 0xff800000, v196, s10
	v_cndmask_b32_e64 v52, 0xff800000, v184, s21
	v_cndmask_b32_e64 v53, 0xff800000, v185, s19
	v_cndmask_b32_e64 v54, 0xff800000, v186, s11
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e64 v55, 0xff800000, v191, s5
	v_cndmask_b32_e64 v56, 0xff800000, v192, s6
	v_cndmask_b32_e64 v57, 0xff800000, v189, s9
	v_cndmask_b32_e64 v58, 0xff800000, v190, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	v_cmp_neq_f32_e64 s22, 0xff800000, v41
	v_cmp_neq_f32_e64 s23, 0xff800000, v42
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v181, v42, v41, s1
	v_cndmask_b32_e64 v41, v41, v42, s1
	v_cndmask_b32_e64 v42, v36, v33, s1
	v_cndmask_b32_e64 v33, v33, v36, s1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s12, s17
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v44
	v_cmp_neq_f32_e64 s25, 0xff800000, v48
	v_cmp_neq_f32_e64 s26, 0xff800000, v49
	v_cmp_neq_f32_e64 s27, 0xff800000, v50
	v_cmp_neq_f32_e64 s28, 0xff800000, v51
	v_cmp_neq_f32_e64 s30, 0xff800000, v52
	v_cmp_neq_f32_e64 s31, 0xff800000, v53
	v_cmp_neq_f32_e64 s33, 0xff800000, v54
	v_cmp_neq_f32_e64 s34, 0xff800000, v55
	v_cmp_neq_f32_e64 s35, 0xff800000, v56
	v_cmp_neq_f32_e64 s36, 0xff800000, v57
	v_cmp_neq_f32_e64 s37, 0xff800000, v58
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v36, v54, v53, s1
	v_cndmask_b32_e64 v53, v53, v54, s1
	v_cndmask_b32_e64 v54, v52, v51, s1
	v_cndmask_b32_e64 v51, v51, v52, s1
	v_cndmask_b32_e64 v52, v50, v49, s1
	v_cndmask_b32_e64 v49, v49, v50, s1
	v_cndmask_b32_e64 v50, v48, v44, s1
	v_cndmask_b32_e64 v44, v44, v48, s1
	v_cndmask_b32_e64 v48, v58, v57, s1
	v_cndmask_b32_e64 v57, v57, v58, s1
	v_cndmask_b32_e64 v58, v56, v55, s1
	v_cndmask_b32_e64 v55, v55, v56, s1
	ds_bpermute_b32 v56, v111, v181
	ds_bpermute_b32 v181, v112, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s12
	s_and_b32 s14, s14, s3
	s_and_b32 s16, s16, s23
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v182, v111, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s14
	v_cndmask_b32_e64 v183, 0, 1, s16
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s17, s13, s22
	s_and_b32 s13, s18, s25
	v_cndmask_b32_e64 v184, 0, 1, s17
	v_cndmask_b32_e64 v185, 0, 1, s13
	v_or_b16 v190.h, v36.l, v33.l
	v_mov_b16_e64 v33.l, v183.l
	s_and_b32 s15, s15, s24
	v_mov_b16_e64 v36.l, v184.l
	v_cndmask_b32_e64 v186, 0, 1, s15
	s_and_b32 s8, s8, s27
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v187, 0, 1, s8
	s_and_b32 s7, s7, s26
	s_and_b32 s18, s21, s30
	v_cndmask_b32_e64 v183, 0, 1, s7
	v_or_b16 v190.l, v36.l, v33.l
	v_mov_b16_e64 v33.l, v185.l
	v_mov_b16_e64 v36.l, v186.l
	v_cndmask_b32_e64 v184, 0, 1, s18
	s_and_b32 s10, s10, s28
	s_and_b32 s11, s11, s33
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v186, 0, 1, s10
	s_and_b32 s19, s19, s31
	s_and_b32 s6, s6, s35
	s_and_b32 s5, s5, s34
	v_or_b16 v185.h, v36.l, v33.l
	v_mov_b16_e64 v33.l, v187.l
	v_mov_b16_e64 v36.l, v183.l
	v_cndmask_b32_e64 v183, 0, 1, s11
	v_cndmask_b32_e64 v187, 0, 1, s19
	s_and_b32 s20, s20, s37
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v41, v112, v41
	ds_bpermute_b32 v42, v111, v42
	ds_bpermute_b32 v53, v112, v53
	ds_bpermute_b32 v54, v111, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v185.l, v36.l, v33.l
	v_mov_b16_e64 v33.l, v184.l
	v_mov_b16_e64 v36.l, v186.l
	v_cndmask_b32_e64 v186, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v51, v112, v51
	ds_bpermute_b32 v52, v111, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v49, v112, v49
	ds_bpermute_b32 v48, v111, v48
	ds_bpermute_b32 v57, v112, v57
	ds_bpermute_b32 v58, v111, v58
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v184.h, v36.l, v33.l
	v_mov_b16_e64 v33.l, v183.l
	v_mov_b16_e64 v36.l, v187.l
	v_cndmask_b32_e64 v183, 0, 1, s20
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v55, v112, v55
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s9, s36
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v59, 16, v61
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v60, 16, v62
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v61, 16, v63
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v62, 16, v64
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v184.l, v36.l, v33.l
	v_mov_b16_e64 v33.l, v186.l
	v_cndmask_b32_e64 v36, 0, 1, s5
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v63, 16, v197
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v64, 16, v198
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v50, v111, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v44, v112, v44
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v197, v184, v190, v93
	v_perm_b32 v198, v184, v190, v162
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v45, v165, v45 :: v_dual_lshlrev_b32 v210, 16, v199
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.h, v36.l, v33.l
	v_mov_b16_e64 v33.l, v183.l
	v_cndmask_b32_e64 v36, 0, 1, s9
	ds_bpermute_b32 v197, v111, v197
	ds_bpermute_b32 v198, v112, v198
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v73, 16, v200
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v186, v181, v42, s0
	v_cndmask_b32_e64 v183, v56, v41, s0
	v_cndmask_b32_e64 v187, v42, v181, s0
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v42, v51, v54, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.l, v36.l, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v36, v41, v56, s0
	v_cndmask_b32_e64 v41, v53, v182, s0
	v_cndmask_b32_e64 v188, v182, v53, s0
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v53, v49, v52, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v199, v33, v185, v93
	v_perm_b32 v200, v33, v185, v162
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v191, v52, v49, s0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v49, v57, v48, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v196, v55, v58, s0
	v_dual_mul_f32 v181, 0x3fb8aa3b, v186 :: v_dual_mul_f32 v184, 0x3fb8aa3b, v41
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v199, v111, v199
	ds_bpermute_b32 v200, v112, v200
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v47, v165, v47 :: v_dual_lshlrev_b32 v74, 16, v201
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v189, v54, v51, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v193, v50, v44, s0
	v_cndmask_b32_e64 v195, v58, v55, s0
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v184, v39, v61 :: v_dual_mul_f32 v185, 0x3fb8aa3b, v42
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v192, 0x3fb8aa3b, v53
	v_dual_mul_f32 v186, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v187, 0x3fb8aa3b, v187
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v196, 0x3fb8aa3b, v196 :: v_dual_mul_f32 v195, 0x3fb8aa3b, v195
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v75, 16, v202
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v176, 16, v204
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v178, 16, v206
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v54, v44, v50, s0
	v_cndmask_b32_e64 v194, v48, v57, s0
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v185, v209, v62
	v_dual_fmac_f32 v192, v45, v63 :: v_dual_mul_f32 v189, 0x3fb8aa3b, v189
	v_dual_fmac_f32 v186, v47, v210 :: v_dual_mul_f32 v193, 0x3fb8aa3b, v193
	v_fmac_f32_e32 v196, v40, v73
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v40, v198, v197, s0
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v182, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v179, 16, v207
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v180, 16, v208
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v190, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v183, 0x3fb8aa3b, v183
	v_dual_mul_f32 v194, 0x3fb8aa3b, v194 :: v_dual_fmac_f32 v187, v66, v75
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v189, v68, v176
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v68, 1, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v76, 16, v203
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v182, v37, v59 :: v_dual_lshlrev_b32 v177, 16, v205
	v_fmac_f32_e32 v181, v38, v60
	v_dual_fmac_f32 v190, v46, v64 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v191
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v188, 0x3fb8aa3b, v188 :: v_dual_fmac_f32 v183, v65, v74
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v65, v200, v199, s0
	v_cmp_eq_u32_e64 s30, 1, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v191, v69, v177 :: v_dual_fmac_f32 v188, v67, v76
	v_dual_fmac_f32 v193, v70, v178 :: v_dual_fmac_f32 v194, v71, v179
	v_dual_fmac_f32 v195, v72, v180 :: v_dual_and_b32 v70, 1, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, v197, v198, s0
	v_cndmask_b32_e64 v67, v199, v200, s0
	v_and_b32_e32 v69, 0x100, v40
	v_and_b32_e32 v198, 0x1000000, v65
	v_and_b32_e32 v199, 0x1000000, v40
	v_and_b32_e32 v40, 0x10000, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v182, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v71, 0x100, v65
	v_and_b32_e32 v65, 0x10000, v65
	v_cmp_eq_u32_e64 s34, 0, v69
	v_cmp_eq_u32_e64 s31, 1, v70
	v_cmp_eq_u32_e64 s38, 0, v40
	v_cmp_eq_u32_e64 s33, 0, v71
	v_cmp_eq_u32_e64 s35, 0, v65
	v_and_b32_e32 v74, 1, v67
	v_and_b32_e32 v197, 0x10000, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, v181, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v72, 1, v66
	v_and_b32_e32 v73, 0x100, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v192, s31
	v_cndmask_b32_e64 v71, v190, 0xff800000, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v76, 0x1000000, v67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, v186, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v66, 0x1000000, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v184, 0xff800000, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v75, 0x100, v67
	v_and_b32_e32 v67, 0x10000, v67
	v_cmp_eq_u32_e64 s23, 1, v72
	v_cmp_eq_u32_e64 s24, 1, v74
	v_cmp_eq_u32_e64 s27, 0, v197
	v_cmp_eq_u32_e64 s21, 0, v75
	v_cmp_eq_u32_e64 s26, 0, v67
	v_cmp_eq_u32_e64 s28, 0, v66
	v_cmp_eq_u32_e64 s37, 0, v199
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v72, v68, v69
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 0, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v183, s23
	v_cndmask_b32_e64 v179, 0xff800000, v191, s24
	v_cndmask_b32_e64 v176, v193, 0xff800000, s21
	v_cndmask_b32_e64 v181, v194, 0xff800000, s26
	v_cndmask_b32_e64 v180, v187, 0xff800000, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 0, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, v188, 0xff800000, s27
	v_cndmask_b32_e64 v183, v189, 0xff800000, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s36, 0, v198
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, v185, 0xff800000, s37
	v_cndmask_b32_e64 v177, v195, 0xff800000, s22
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v179, v176, v181
	v_max3_f32 v74, v180, v182, v183
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, v196, 0xff800000, s36
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v67, v70, v71
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, v178, v68, s0
	v_cndmask_b32_e64 v185, v68, v178, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v74, v73, v177
	v_max3_f32 v76, v65, v66, v178
	v_max3_f32 v72, v72, v40, v75
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, v180, v69, s0
	v_cndmask_b32_e64 v187, v69, v180, s0
	v_cndmask_b32_e64 v188, v179, v70, s0
	v_cndmask_b32_e64 v189, v70, v179, s0
	v_cndmask_b32_e64 v190, v176, v71, s0
	v_cndmask_b32_e64 v191, v71, v176, s0
	v_cndmask_b32_e64 v194, v177, v66, s0
	v_cndmask_b32_e64 v195, v66, v177, s0
	v_cndmask_b32_e64 v196, v182, v40, s0
	v_cndmask_b32_e64 v197, v40, v182, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v72, v76, v73
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, v181, v65, s0
	v_cndmask_b32_e64 v193, v65, v181, s0
	ds_bpermute_b32 v74, v141, v186
	ds_bpermute_b32 v75, v146, v187
	ds_bpermute_b32 v186, v141, v188
	ds_bpermute_b32 v188, v146, v189
	ds_bpermute_b32 v190, v141, v190
	ds_bpermute_b32 v191, v146, v191
	ds_bpermute_b32 v194, v141, v194
	ds_bpermute_b32 v195, v146, v195
	ds_bpermute_b32 v196, v141, v196
	ds_bpermute_b32 v197, v146, v197
	ds_bpermute_b32 v201, v146, v185
	ds_bpermute_b32 v202, v141, v184
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v73, v72, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, v183, v67, s0
	v_cndmask_b32_e64 v199, v67, v183, s0
	ds_bpermute_b32 v203, v141, v192
	ds_bpermute_b32 v204, v146, v193
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v200, v167, v72, v73
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v205, v141, v198
	ds_bpermute_b32 v206, v146, v199
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, v75, v74, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v200
	v_sub_f32_e32 v68, v68, v200
	v_sub_f32_e32 v67, v67, v200
	v_sub_f32_e32 v70, v70, v200
	v_sub_f32_e32 v65, v65, v200
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v68, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v200
	v_sub_f32_e32 v71, v71, v200
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v72, v167, v200
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, v74, v75, s1
	v_cndmask_b32_e64 v187, v188, v186, s1
	v_cndmask_b32_e64 v188, v186, v188, s1
	v_cndmask_b32_e64 v189, v191, v190, s1
	v_cndmask_b32_e64 v190, v190, v191, s1
	v_cndmask_b32_e64 v184, v195, v194, s1
	v_cndmask_b32_e64 v185, v194, v195, s1
	v_cndmask_b32_e64 v194, v197, v196, s1
	v_cndmask_b32_e64 v195, v196, v197, s1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v73, v201, v201 :: v_dual_max_f32 v74, v202, v202
.Ltmp14:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_u16_d16 v35, v118 offset:608
	ds_load_u16_d16 v34, v118 offset:352
	ds_load_u16_d16 v43, v118 offset:512
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v200
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v167
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v73, v74, v73
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v203, v204, v184
	v_max3_f32 v75, v188, v189, v190
	v_max3_f32 v167, v193, v194, v195
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, v69, 0, s34
	v_cndmask_b32_e64 v68, 0, v68, s30
.Ltmp19:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v76, v205, v206, v187
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v75, v74, v185
	v_max3_f32 v73, v73, v192, v167
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, v67, 0, s37
	v_cndmask_b32_e64 v70, 0, v70, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v69.h
	v_mov_b16_e32 v77.l, v68.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, v65, 0, s35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v196, v201, v202, s1
	v_cndmask_b32_e64 v197, v202, v201, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, v40, 0, s38
	v_cndmask_b32_e64 v71, v71, 0, s33
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v201, v73, v76, v74
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.l, v70.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v210, 0, v72, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v73, 1, v168
	v_and_b32_e32 v74, 1, v77
	v_mov_b16_e64 v168.l, v67.h
	v_mov_b16_e32 v79.l, v65.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, v66, 0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v69, v69
	v_cmp_o_f32_e64 s31, v68, v68
	v_mov_b16_e32 v80.l, v40.h
	v_and_b32_e32 v76, 1, v78
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v210
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v68, v74, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v210
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v69, v73, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v210 :: v_dual_and_b32 v73, 1, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v71.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v51, v118 offset:576
	ds_load_u16_d16 v58, v118 offset:288
	ds_load_u16_d16 v44, v118 offset:768
	ds_load_u16_d16 v52, v118 offset:832
	ds_load_u16_d16 v59, v118 offset:544
	ds_load_u16_d16 v45, v118 offset:1024
	ds_load_u16_d16 v53, v118 offset:1088
	ds_load_u16_d16 v36, v118 offset:864
	ds_load_u16_d16 v46, v118 offset:1280
	ds_load_u16_d16 v54, v118 offset:1344
	ds_load_u16_d16 v37, v118 offset:1120
	ds_load_u16_d16 v47, v118 offset:1536
	ds_load_u16_d16 v55, v118 offset:1600
	ds_load_u16_d16 v38, v118 offset:1376
	ds_load_u16_d16 v48, v118 offset:1792
	ds_load_u16_d16 v56, v118 offset:1856
	ds_load_u16_d16 v39, v118 offset:1632
	ds_load_u16_d16 v64, v118 offset:1824
	ds_load_u16_d16 v42, v118 offset:256
	ds_load_u16_d16 v41, v118
	ds_load_u16_d16 v57, v118 offset:32
	ds_load_u16_d16 v49, v118 offset:64
	ds_load_u16_d16 v50, v118 offset:320
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v34, v118 offset:480
	ds_load_u16_d16 v33, v118 offset:96
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v51, v118 offset:704
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v32, v32, v210 :: v_dual_and_b32 v77, 1, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v70, v70
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v210 :: v_dual_and_b32 v75, 1, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v70, v76, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s31
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v210 :: v_dual_and_b32 v68, 1, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v66.h
	v_cmp_o_f32_e64 s37, v65, v65
	v_add3_u32 v65, v65, v77, 0x7fff
	v_cmp_o_f32_e64 s33, v40, v40
	v_cmp_o_f32_e64 s34, v67, v67
	v_add3_u32 v40, v40, v75, 0x7fff
	v_add3_u32 v67, v67, v73, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v70.h, s35
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v210 :: v_dual_and_b32 v70, 1, v168
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v44, v118 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v52, v118 offset:960
	ds_load_u16_d16 v60, v118 offset:800
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v45, v118 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v53, v118 offset:1216
	ds_load_u16_d16 v61, v118 offset:1056
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v46, v118 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v54, v118 offset:1472
	ds_load_u16_d16 v62, v118 offset:1312
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v47, v118 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v55, v118 offset:1728
	ds_load_u16_d16 v63, v118 offset:1568
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v48, v118 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v56, v118 offset:1984
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v71, v71
	v_cmp_o_f32_e64 s38, v66, v66
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s33
	v_cndmask_b16 v40.h, 0x7fff, v67.h, s34
	v_add3_u32 v68, v71, v68, 0x7fff
	v_add3_u32 v66, v66, v70, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s30
	v_cndmask_b16 v67.l, 0x7fff, v65.h, s37
	v_permlanex16_b32 v70, v40, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s36
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s38
	v_permlanex16_b32 v74, v69, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v210
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v75, v70, v40, v163
	v_permlanex16_b32 v66, v65, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v76, v70, v40, v164
	v_permlanex16_b32 v40, v67, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v74, v69, v163
	v_perm_b32 v74, v74, v69, v164
	v_perm_b32 v77, v66, v65, v163
	v_perm_b32 v78, v66, v65, v164
	v_perm_b32 v79, v40, v67, v163
	v_perm_b32 v80, v40, v67, v164
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v210
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v118 offset:2048
	ds_load_u16_d16 v40, v118 offset:1888
	ds_load_u16_d16_hi v43, v118 offset:640
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v42, v118 offset:384
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v41, v118 offset:128
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v57, v118 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v49, v118 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v33, v118 offset:224
	ds_load_u16_d16_hi v58, v118 offset:416
	ds_load_u16_d16_hi v50, v118 offset:448
	ds_load_u16_d16_hi v59, v118 offset:672
	ds_load_u16_d16_hi v35, v118 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v60, v118 offset:928
	ds_load_u16_d16_hi v36, v118 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v61, v118 offset:1184
	ds_load_u16_d16_hi v37, v118 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v62, v118 offset:1440
	ds_load_u16_d16_hi v38, v118 offset:1504
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v63, v118 offset:1696
	ds_load_u16_d16_hi v39, v118 offset:1760
	ds_load_u16_d16_hi v64, v118 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v210
	v_mul_f32_e32 v11, v11, v210
	v_mul_f32_e32 v12, v12, v210
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[73:80], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v178, v200
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v210
	v_dual_mul_f32 v14, v14, v210 :: v_dual_mov_b32 v167, v200
	v_mul_f32_e32 v15, v15, v210
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v210
	v_mul_f32_e32 v20, v20, v210
	v_mul_f32_e32 v19, v19, v210
	v_mul_f32_e32 v22, v22, v210
	v_dual_mul_f32 v17, v17, v210 :: v_dual_sub_f32 v42, v180, v200
	v_mul_f32_e32 v23, v23, v210
	v_mul_f32_e32 v21, v21, v210
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, v203, v204, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s23
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v40, v118 offset:2016
	ds_load_u16_d16_hi v65, v118 offset:2176
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, v204, v203, s1
	v_cndmask_b32_e64 v198, v206, v205, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v41.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v210
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v199, v205, v206, s1
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v118 offset:2080
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s70, s71
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v172, 1, v172
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[73:80], v[9:16]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v51, v182, v200
	v_sub_f32_e32 v53, v179, v200
	v_sub_f32_e32 v54, v181, v200
	v_sub_f32_e32 v55, v176, v200
	v_sub_f32_e32 v56, v177, v200
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v54, v54
.Ltmp25:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v176, v201
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v183, v200
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v55, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, v42, 0, s25
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, v51, 0, s27
	v_cndmask_b32_e64 v53, 0, v53, s24
	v_cndmask_b32_e64 v54, v54, 0, s26
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v176, v176, v176
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v42.h
	v_mov_b16_e64 v173.l, v51.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v210
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, v56, 0, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v41, v41
	v_mov_b16_e64 v174.l, v53.h
	v_and_b32_e32 v173, 1, v173
	v_mov_b16_e64 v175.l, v54.h
	v_add3_u32 v41, v41, v172, 0x7fff
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v172, v201, v176
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v51, v51
	v_add3_u32 v51, v51, v173, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, v52, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v175, 1, v175
	v_cndmask_b16 v51.l, 0x7fff, v41.h, s22
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v41, v170, v172 :: v_dual_and_b32 v174, 1, v174
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, v55, 0, s21
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v210 :: v_dual_max_f32 v170, v171, v172
	v_dual_mul_f32 v2, v2, v210 :: v_dual_and_b32 v171, 1, v168
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v210 :: v_dual_sub_f32 v172, v196, v41
	v_mul_f32_e32 v6, v6, v210
	v_mul_f32_e32 v7, v7, v210
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v53, v53
	v_cmp_o_f32_e64 s27, v54, v54
	v_add3_u32 v54, v54, v175, 0x7fff
	v_mov_b16_e64 v168.l, v52.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v192, v41
	v_sub_f32_e32 v176, v193, v41
	v_sub_f32_e32 v181, v187, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v53, v174, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v197, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v182, v188, v41
	v_dual_sub_f32 v183, v189, v41 :: v_dual_sub_f32 v188, v166, v170
	v_sub_f32_e32 v189, v191, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v171, 0x7fff
	v_dual_mov_b32 v166, v170 :: v_dual_and_b32 v171, 1, v168
	v_mov_b16_e64 v168.l, v55.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v172
	v_exp_f32_e32 v172, v174
	v_exp_f32_e32 v174, v175
	v_exp_f32_e32 v175, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v52, v52
	v_cndmask_b16 v53.l, 0x7fff, v51.h, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v190, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v42.h, s23
	v_add3_u32 v42, v52, v171, 0x7fff
	v_and_b32_e32 v52, 1, v168
	v_mov_b16_e64 v168.l, v56.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[73:80], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v57, v118 offset:2112
	ds_load_u16_d16 v67, v118 offset:2560
	ds_load_u16_d16 v59, v118 offset:2624
	ds_load_u16_d16 v58, v118 offset:2368
	ds_load_u16_d16 v66, v118 offset:2304
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v210 :: v_dual_sub_f32 v177, v194, v41
	v_dual_mul_f32 v5, v5, v210 :: v_dual_sub_f32 v178, v195, v41
	v_dual_mul_f32 v8, v8, v210 :: v_dual_sub_f32 v179, v198, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v55, v55
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v41
	v_sub_f32_e32 v185, v185, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.h, 0x7fff, v42.h, s25
	v_add3_u32 v42, v55, v52, 0x7fff
	v_and_b32_e32 v52, 1, v168
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v170, s17
	v_cndmask_b32_e64 v168, 0, v172, s16
	v_cndmask_b32_e64 v170, 0, v174, s14
	v_cndmask_b32_e64 v172, 0, v175, s12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v180, v199, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v177
	v_exp_f32_e32 v177, v178
	v_exp_f32_e32 v178, v179
	v_exp_f32_e32 v186, v186
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[73:80], v[1:8]
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v55, v168
	v_add_f32_e32 v37, v170, v172
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v180
	v_exp_f32_e32 v180, v181
	v_exp_f32_e32 v181, v182
	v_exp_f32_e32 v182, v183
	v_exp_f32_e32 v183, v187
	v_exp_f32_e32 v187, v189
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v176, s19
	v_cndmask_b32_e64 v175, 0, v177, s11
	v_cndmask_b32_e64 v176, 0, v178, s10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v203, v118 offset:2400
	ds_load_u16_d16 v68, v118 offset:2816
	ds_load_u16_d16 v60, v118 offset:2880
	ds_load_u16_d16 v204, v118 offset:2656
	ds_load_u16_d16 v69, v118 offset:3072
	ds_load_u16_d16 v61, v118 offset:3136
	ds_load_u16_d16 v205, v118 offset:2912
	ds_load_u16_d16 v70, v118 offset:3328
	ds_load_u16_d16 v62, v118 offset:3392
	ds_load_u16_d16 v206, v118 offset:3168
	ds_load_u16_d16 v71, v118 offset:3584
	ds_load_u16_d16 v63, v118 offset:3648
	ds_load_u16_d16 v207, v118 offset:3424
	ds_load_u16_d16 v72, v118 offset:3840
	ds_load_u16_d16 v64, v118 offset:3904
	ds_load_u16_d16 v208, v118 offset:3680
	ds_load_u16_d16 v209, v118 offset:3936
	ds_load_u16_d16 v202, v118 offset:2144
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v57, v118 offset:2240
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v58, v118 offset:2496
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v66, v118 offset:2432
	ds_load_u16_d16 v44, v118 offset:2336
	ds_load_u16_d16_hi v67, v118 offset:2688
	ds_load_u16_d16_hi v59, v118 offset:2752
	ds_load_u16_d16 v45, v118 offset:2592
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v179, s18
	v_cndmask_b32_e64 v178, 0, v180, s7
	v_cndmask_b32_e64 v179, 0, v181, s8
	v_cndmask_b32_e64 v180, 0, v182, s15
	v_cndmask_b32_e64 v181, 0, v183, s13
	v_cndmask_b32_e64 v182, 0, v186, s9
	v_cndmask_b32_e64 v183, 0, v187, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v184, v184, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v188, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v171, v51, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v182, v183
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v174, v175 :: v_dual_add_f32 v39, v176, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v171, v51, v163
	v_perm_b32 v34, v171, v51, v164
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v178, v179 :: v_dual_add_f32 v51, v180, v181
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v186, 0, v188, s22
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s5
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v38, v39
	v_add_f32_e32 v38, v40, v51
.Ltmp44:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v68, v118 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v60, v118 offset:3008
	ds_load_u16_d16 v46, v118 offset:2848
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v118 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v61, v118 offset:3264
	ds_load_u16_d16 v47, v118 offset:3104
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v70, v118 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v62, v118 offset:3520
	ds_load_u16_d16 v48, v118 offset:3360
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v71, v118 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v63, v118 offset:3776
	ds_load_u16_d16 v49, v118 offset:3616
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v72, v118 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v64, v118 offset:4032
	ds_load_u16_d16 v50, v118 offset:3872
	ds_load_u16_d16_hi v43, v118 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v202, v118 offset:2272
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v44, v118 offset:2464
	ds_load_u16_d16_hi v203, v118 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v45, v118 offset:2720
	ds_load_u16_d16_hi v204, v118 offset:2784
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v46, v118 offset:2976
	ds_load_u16_d16_hi v205, v118 offset:3040
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v47, v118 offset:3232
	ds_load_u16_d16_hi v206, v118 offset:3296
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v48, v118 offset:3488
	ds_load_u16_d16_hi v207, v118 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v49, v118 offset:3744
	ds_load_u16_d16_hi v208, v118 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v50, v118 offset:4000
	ds_load_u16_d16_hi v209, v118 offset:4064
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v184, v185
	v_add_f32_e32 v37, v35, v37
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v56, v56
	v_cndmask_b16 v173.l, 0x7fff, v54.h, s27
	v_cndmask_b16 v54.h, 0x7fff, v42.h, s21
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v55, v73
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v56, v52, 0x7fff
	v_permlanex16_b32 v36, v53, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v173.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v35, v36, v53, v163
	v_perm_b32 v36, v36, v53, v164
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v37, v38
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v54, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v173, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v51, v42
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v38, v54, v163
	v_perm_b32 v38, v38, v54, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_perm_b32 v39, v40, v173, v163
	v_perm_b32 v40, v40, v173, v164
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[33:40], v[25:32]
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v51
.Ltmp58:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[43:50], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[57:64], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[202:209], v[33:40], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v42, v169, v186
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
	v_mul_lo_u32 v33, s69, v110
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
	s_mul_i32 s0, s69, s50
	v_add_nc_u32_e32 v35, v33, v108
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s69, v108
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
	v_cmp_gt_i32_e64 s0, s69, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v37, s[48:51], 0 offen
	buffer_store_b32 v26, v38, s[48:51], 0 offen
	buffer_store_b32 v27, v39, s[48:51], 0 offen
	v_add_lshl_u32 v25, v33, v106, 2
	v_add_lshl_u32 v26, v33, v105, 2
	v_add_lshl_u32 v27, v33, v104, 2
	v_add_lshl_u32 v37, v33, v103, 2
	v_add_lshl_u32 v38, v33, v102, 2
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
	v_add_lshl_u32 v25, v33, v99, 2
	v_add_lshl_u32 v26, v33, v98, 2
	v_add_lshl_u32 v27, v33, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v33, v96, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_lshl_u32 v29, v33, v95, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[48:51], 0 offen
	buffer_store_b32 v18, v26, s[48:51], 0 offen
	buffer_store_b32 v19, v27, s[48:51], 0 offen
	v_add_lshl_u32 v18, v33, v94, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s69, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[48:51], 0 offen
	v_add_lshl_u32 v19, v33, v101, 2
	v_add_lshl_u32 v20, v33, v100, 2
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
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v108
	.loc	1 1051 17                       ; attention.py:1051:17
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
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 211
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 211
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12904
; TotalNumSgprs: 79
; NumVgprs: 211
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 79
; NumVGPRsForWavesPerEU: 211
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     211
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
