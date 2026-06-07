	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v41, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v7, 2, v41
	v_and_b32_e32 v2, 0x7c, v7
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v1, v41, 4, 4
	v_and_b32_e32 v42, 15, v41
	v_or_b32_e32 v11, 0x3f0, v41
	v_or_b32_e32 v12, 0x7f0, v41
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[3:4], null, s26, v42, v[1:2]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s20, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s20
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 5, v41
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s20
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s19, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s35, s27, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s7, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s35, v0, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s18, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s7, v42
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s20, s6, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s7, v0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s19, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s20
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s23, s35, s7
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s6, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s24, s21, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 16, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s22, s26, s7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s19, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 16, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s44, s24, 5
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s33, s23, v4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v3, s22, s34, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v5, s27, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v3, v3, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v4, v4, s[28:31], 0 offen
	buffer_load_b32 v5, v5, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_bfe_i32 v6, v41, 7, 1
	v_and_b32_e32 v8, 0x7f, v41
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	s_mov_b32 s6, -1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_b32_e32 v6, 0x88, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v8, v6, v8
	v_lshlrev_b32_e32 v6, 4, v41
	v_add_nc_u32_e32 v13, 0, v8
	s_waitcnt vmcnt(2)
	ds_store_b8 v13, v3 offset:4096
                                        ; implicit-def: $vgpr3
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v15, v4, v5 offset1:8
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v3, 0x3f0, v41
	v_or_b32_e32 v4, 0x770, v42
	v_or_b32_e32 v5, 0x7f0, v41
	s_mov_b32 s6, 0
.LBB0_2:                                ; %Flow1173
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v7, 8, v41
	v_bfe_u32 v78, v41, 4, 1
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v10, 0x70, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s0, 0, v7
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v130, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s44, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v0, s19, v0
	v_sub_nc_u32_e32 v6, s19, v42
	v_cndmask_b32_e64 v3, 0x88, 0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, s3, 5, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:396
	scratch_store_b32 off, v78, off offset:428
	v_dual_mov_b32 v179, 0 :: v_dual_lshlrev_b32 v0, 1, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:392
	scratch_store_b32 off, v41, off offset:420
	v_mov_b32_e32 v125, 0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 33, v4
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v4, 32, v4
	s_lshl_b32 s19, s18, 8
	s_lshl_b32 s18, s18, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v0, s27, v0
	v_mul_lo_u32 v4, s27, v4
	v_or_b32_e32 v3, v3, v10
	s_lshl_b32 s20, s17, 8
	s_lshl_b32 s17, s17, 7
	s_add_i32 s7, s7, 16
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v6, s34, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v0, s18, v2
	v_xor_b32_e32 v5, 8, v3
	v_add3_u32 v2, v4, s18, v2
	v_add_nc_u32_e32 v7, s7, v42
	v_mov_b32_e32 v97, 0
	v_subrev_nc_u32_e32 v4, s17, v0
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v42, off offset:424 ; 4-byte Folded Spill
	v_mul_lo_u32 v6, s44, v6
	v_subrev_nc_u32_e32 v8, s17, v2
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v0, 0, v5
	v_mul_lo_u32 v7, s26, v7
	s_mov_b32 s16, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v10, off offset:432
	scratch_store_b32 off, v0, off offset:408
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v0, 0, v11
	s_add_i32 s3, s19, s35
	s_mov_b32 s23, s16
	s_sub_i32 s3, s3, s20
	s_sub_i32 s46, s19, s20
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v235, s23
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v127, 0, v42
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v219, 1, v6
	v_add3_u32 v25, v7, s34, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v12, off offset:440
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v0, 0, v12
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v233, s21
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v231, s19
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v229, s17
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v234, s22
	v_mov_b32_e32 v232, s20
	v_mov_b32_e32 v230, s18
	v_mov_b32_e32 v228, s16
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s6, s1, 1
	s_lshl_b32 s45, s27, 2
	s_lshl_b32 s47, s27, 5
	s_lshl_b32 s26, s26, 4
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v11, off offset:436
	scratch_store_b32 off, v0, off offset:416
	scratch_store_b32 off, v13, off offset:388
	scratch_store_b32 off, v15, off offset:48
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v25, off offset:156
	scratch_store_b32 off, v26, off offset:28
	scratch_store_b32 off, v129, off offset:152
	scratch_store_b32 off, v128, off offset:148
	scratch_store_b32 off, v200, off offset:144
	scratch_store_b32 off, v36, off offset:140
	scratch_store_b32 off, v173, off offset:136
	scratch_store_b32 off, v207, off offset:132
	scratch_store_b32 off, v167, off offset:128
	scratch_store_b32 off, v166, off offset:124
	scratch_store_b32 off, v153, off offset:120
	scratch_store_b32 off, v179, off offset:116
	scratch_store_b32 off, v152, off offset:112
	scratch_store_b32 off, v37, off offset:108
	scratch_store_b32 off, v35, off offset:104
	scratch_store_b32 off, v40, off offset:100
	scratch_store_b32 off, v39, off offset:96
	scratch_store_b32 off, v54, off offset:92
	scratch_store_b32 off, v151, off offset:88
	scratch_store_b32 off, v150, off offset:84
	scratch_store_b32 off, v149, off offset:80
	scratch_store_b32 off, v51, off offset:76
	scratch_store_b32 off, v53, off offset:72
	scratch_store_b32 off, v50, off offset:68
	scratch_store_b32 off, v34, off offset:64
	scratch_store_b32 off, v139, off offset:60
	scratch_store_b32 off, v52, off offset:56
	scratch_store_b32 off, v49, off offset:52
	scratch_store_b32 off, v7, off offset:44
	scratch_store_b32 off, v6, off offset:24
	scratch_store_b32 off, v32, off offset:40
	scratch_store_b32 off, v31, off offset:36
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v27, off offset:32
	scratch_store_b32 off, v24, off offset:20
	scratch_store_b32 off, v23, off offset:16
	scratch_store_b32 off, v22, off offset:12
	scratch_store_b32 off, v14, off offset:8
	scratch_store_b32 off, v21, off offset:4
	scratch_store_b32 off, v9, off
	v_dual_mov_b32 v236, v212 :: v_dual_mov_b32 v211, v59
	v_dual_mov_b32 v198, v143 :: v_dual_mov_b32 v165, v164
	v_dual_mov_b32 v143, v133 :: v_dual_mov_b32 v144, v172
	v_dual_mov_b32 v133, v221 :: v_dual_mov_b32 v158, v82
	v_dual_mov_b32 v181, v141 :: v_dual_mov_b32 v116, v138
	v_dual_mov_b32 v243, v81 :: v_dual_mov_b32 v138, v63
	v_dual_mov_b32 v208, v154 :: v_dual_mov_b32 v197, v184
	v_dual_mov_b32 v184, v61 :: v_dual_mov_b32 v145, v155
	v_dual_mov_b32 v164, v65 :: v_dual_mov_b32 v155, v66
	v_dual_mov_b32 v171, v47 :: v_dual_mov_b32 v182, v48
	v_dual_mov_b32 v170, v64 :: v_dual_mov_b32 v199, v185
	v_dual_mov_b32 v192, v60 :: v_dual_mov_b32 v185, v163
	v_dual_mov_b32 v154, v136 :: v_dual_mov_b32 v163, v159
	v_dual_mov_b32 v148, v130 :: v_dual_mov_b32 v159, v67
	v_dual_mov_b32 v240, v196 :: v_dual_mov_b32 v237, v114
	v_dual_mov_b32 v210, v140 :: v_dual_mov_b32 v169, v178
	v_dual_mov_b32 v183, v176 :: v_dual_mov_b32 v114, v161
	v_dual_mov_b32 v161, v68 :: v_dual_mov_b32 v172, v69
	v_dual_mov_b32 v212, v137 :: v_dual_mov_b32 v209, v46
	v_mov_b32_e32 v156, v83
	v_mov_b32_e32 v150, v97
	v_mov_b32_e32 v202, v88
	v_mov_b32_e32 v166, v101
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s6, s6, -1
	v_mov_b32_e32 v221, v132
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s7, v0
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v0, 0x80000000, v25, vcc_lo
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v127 offset:512
	ds_load_u8 v9, v127 offset:640
	ds_load_u8 v246, v127 offset:656
	ds_load_u8 v193, v127 offset:672
	ds_load_u8 v175, v127 offset:688
	ds_load_u8 v160, v127 offset:704
	ds_load_u8 v1, v127 offset:720
	ds_load_u8 v59, v127 offset:1856
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v82, v127 offset:2992
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v63, v127 offset:1344
	ds_load_u8 v66, v127 offset:1296
	ds_load_u8 v81, v127 offset:1328
	ds_load_u8 v67, v127 offset:1424
	ds_load_u8 v78, v127 offset:1440
	ds_load_u8 v79, v127 offset:1456
	ds_load_u8 v62, v127 offset:1472
	ds_load_u8 v46, v127 offset:1872
	ds_load_u8 v38, v127 offset:1888
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v83, v127 offset:3008
	ds_load_u8 v84, v127 offset:3024
	ds_load_u8 v101, v127 offset:3264
	ds_load_u8 v167, v127 offset:3280
	ds_load_u8 v173, v127 offset:3296
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v9, v0, v9, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v1, v127 offset:736
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v66, v66, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v1, v127 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v247, v127 offset:528
	ds_load_u8 v195, v127 offset:544
	ds_load_u8 v177, v127 offset:560
	ds_load_u8 v162, v127 offset:576
	ds_load_u8 v1, v127 offset:592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v1, v127 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v1, v127 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v10, v127 offset:768
	ds_load_u8 v11, v127 offset:896
	ds_load_u8 v0, v127 offset:912
	ds_load_u8 v1, v127 offset:928
	ds_load_u8 v213, v127 offset:944
	ds_load_u8 v186, v127 offset:960
	ds_load_u8 v3, v127 offset:976
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v3, v127 offset:992
	v_lshl_or_b32 v14, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v27, v127 offset:784
	ds_load_u8 v3, v127 offset:800
	ds_load_u8 v214, v127 offset:816
	ds_load_u8 v187, v127 offset:832
	ds_load_u8 v5, v127 offset:848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v27, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v11, v127
	ds_load_u8 v12, v127 offset:128
	ds_load_u8 v28, v127 offset:144
	ds_load_u8 v238, v127 offset:160
	ds_load_u8 v215, v127 offset:176
	ds_load_u8 v188, v127 offset:192
	ds_load_u8 v5, v127 offset:208
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v30, v127 offset:16
	ds_load_u8 v239, v127 offset:32
	ds_load_u8 v216, v127 offset:48
	ds_load_u8 v189, v127 offset:64
	ds_load_u8 v147, v127 offset:80
	ds_load_u8 v5, v127 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v12, v127 offset:256
	ds_load_u8 v13, v127 offset:384
	ds_load_u8 v31, v127 offset:400
	ds_load_u8 v241, v127 offset:416
	ds_load_u8 v217, v127 offset:432
	ds_load_u8 v190, v127 offset:448
	ds_load_u8 v146, v127 offset:464
	ds_load_u8 v5, v127 offset:480
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v32, v127 offset:272
	ds_load_u8 v244, v127 offset:288
	ds_load_u8 v218, v127 offset:304
	ds_load_u8 v191, v127 offset:320
	ds_load_u8 v29, v127 offset:336
	ds_load_u8 v5, v127 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v9, v127 offset:1664
	ds_load_u8 v10, v127 offset:1536
	ds_load_u8 v5, v127 offset:1520
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v10, v127 offset:1920
	ds_load_u8 v11, v127 offset:1792
	ds_load_u8 v5, v127 offset:1776
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:1904
	v_lshl_or_b32 v24, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v11, v127 offset:1024
	ds_load_u8 v12, v127 offset:1152
	ds_load_u8 v5, v127 offset:1136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v12, v127 offset:1408
	ds_load_u8 v15, v127 offset:1280
	ds_load_u8 v5, v127 offset:1264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v15, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v5, v127 offset:1392
	v_lshl_or_b32 v23, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	scratch_load_b32 v5, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v73, v5
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v5, v5 offset:2048
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:248 ; 4-byte Folded Spill
	scratch_load_b32 v5, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[9:10], v5 offset:4096
	scratch_load_b32 v5, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[13:14], v[9:10], v[228:235] neg_lo:[1,1,0]
	v_mov_b32_e32 v13, v125
	ds_load_u8 v125, v127 offset:2016
	ds_load_u8 v58, v127 offset:1824
	ds_load_u8 v72, v127 offset:1840
	v_mov_b32_e32 v196, v91
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v38, v125, 0xc0c0004
	v_dual_mov_b32 v125, v13 :: v_dual_mov_b32 v132, v94
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[11:12], v5 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v15
	scratch_store_b32 off, v5, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v16
	scratch_store_b32 off, v5, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v17
	scratch_store_b32 off, v5, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v18
	scratch_store_b32 off, v5, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v19
	scratch_store_b32 off, v5, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v20
	scratch_store_b32 off, v5, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v21
	scratch_store_b32 off, v5, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v5, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v15, v127 offset:2688
	ds_load_u8 v16, v127 offset:2560
	ds_load_u8 v33, v127 offset:2576
	ds_load_u8 v5, v127 offset:2544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v34, v127 offset:2704
	ds_load_u8 v5, v127 offset:2672
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v18, v127 offset:2944
	ds_load_u8 v19, v127 offset:2816
	ds_load_u8 v15, v127 offset:2832
	ds_load_u8 v5, v127 offset:2800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v16, v127 offset:2960
	ds_load_u8 v5, v127 offset:2928
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v19, v127 offset:2176
	ds_load_u8 v20, v127 offset:2048
	ds_load_u8 v35, v127 offset:2064
	ds_load_u8 v36, v127 offset:2192
	ds_load_u8 v5, v127 offset:2160
	v_lshl_or_b32 v16, v15, 16, v33
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v35, v36, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v20, v127 offset:2432
	ds_load_u8 v21, v127 offset:2304
	ds_load_u8 v37, v127 offset:2320
	ds_load_u8 v14, v127 offset:2288
	ds_load_u8 v49, v127 offset:2448
	ds_load_u8 v5, v127 offset:2416
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v37, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:368 ; 4-byte Folded Spill
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v19, v127 offset:3712
	ds_load_u8 v20, v127 offset:3584
	ds_load_u8 v50, v127 offset:3600
	ds_load_u8 v39, v127 offset:3616
	ds_load_u8 v5, v127 offset:3568
	v_lshl_or_b32 v15, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[248:255], v[17:18], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v17, v247, v246, 0xc0c0004
	v_perm_b32 v18, v30, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v129, v0, 16, v17
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v51, v127 offset:3728
	ds_load_u8 v40, v127 offset:3744
	ds_load_u8 v5, v127 offset:3696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v50, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v20, v127 offset:3968
	ds_load_u8 v21, v127 offset:3840
	ds_load_u8 v52, v127 offset:3856
	ds_load_u8 v41, v127 offset:3872
	ds_load_u8 v5, v127 offset:3824
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v21, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v53, v127 offset:3984
	ds_load_u8 v24, v127 offset:4000
	ds_load_u8 v5, v127 offset:3952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v52, v53, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v24, v41, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v20, v127 offset:3200
	ds_load_u8 v22, v127 offset:3072
	ds_load_u8 v54, v127 offset:3088
	ds_load_u8 v42, v127 offset:3104
	ds_load_u8 v245, v127 offset:3040
	ds_load_u8 v55, v127 offset:3216
	ds_load_u8 v43, v127 offset:3232
	ds_load_u8 v5, v127 offset:3184
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v22, v20, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v54, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v22, v127 offset:3456
	ds_load_u8 v25, v127 offset:3328
	ds_load_u8 v56, v127 offset:3344
	ds_load_u8 v45, v127 offset:3360
	ds_load_u8 v207, v127 offset:3312
	ds_load_u8 v57, v127 offset:3472
	ds_load_u8 v20, v127 offset:3488
	ds_load_u8 v5, v127 offset:3440
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v25, v22, 0xc0c0004
	v_lshl_or_b32 v22, v21, 16, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v19, v32, v31, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v56, v57, 0xc0c0004
	v_lshl_or_b32 v21, v25, 16, v23
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:384 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v128, v19, 16, v18
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[15:16], v[9:10], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[248:255], v[21:22], v[11:12], v[248:255] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v127 offset:1040
	ds_load_u8 v22, v127 offset:1168
	ds_load_u8 v74, v127 offset:1184
	ds_load_u8 v75, v127 offset:1200
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v33, v36, 16, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v15, v195, v193, 0xc0c0004
	v_perm_b32 v16, v3, v1, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v5, v248
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v20, v45, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[33:34], v[11:12], v[49:56] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v33, v239, v238, 0xc0c0004
	v_perm_b32 v34, v244, v241, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v5, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v249
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v16, v16, 16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v248, v52
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v15, v34, 16, v33
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v247, v53
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v250
	v_cvt_f32_i32_e32 v246, v54
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v19, v22, 0xc0c0004
	ds_load_u8 v47, v127 offset:1488
	ds_load_u8 v22, v127 offset:1504
	ds_load_u8 v80, v127 offset:1312
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v249, v56
	scratch_store_b32 off, v5, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v251
	v_cvt_f32_i32_e32 v251, v51
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v139, v66, 16, v65
	ds_load_u8 v48, v127 offset:1360
	ds_load_u8 v19, v127 offset:1376
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v5, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v252
	v_cvt_f32_i32_e32 v252, v55
	scratch_store_b32 off, v5, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v253
	v_cvt_f32_i32_e32 v253, v50
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v254
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v127 offset:1552
	ds_load_u8 v17, v127 offset:1680
	ds_load_u8 v27, v127 offset:1696
	ds_load_u8 v23, v127 offset:1712
	ds_load_u8 v126, v127 offset:1728
	ds_load_u8 v118, v127 offset:1744
	ds_load_u8 v250, v127 offset:1760
	ds_load_u8 v28, v127 offset:1568
	ds_load_u8 v21, v127 offset:1584
	ds_load_u8 v30, v127 offset:1600
	ds_load_u8 v124, v127 offset:1616
	ds_load_u8 v254, v127 offset:1632
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v80, v78, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v255
	v_cvt_f32_i32_e32 v255, v49
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[15:16], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v19, v22, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	ds_load_u8 v17, v127 offset:1808
	ds_load_u8 v18, v127 offset:1936
	ds_load_u8 v32, v127 offset:1952
	ds_load_u8 v44, v127 offset:1968
	ds_load_u8 v31, v127 offset:1984
	ds_load_u8 v123, v127 offset:2000
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, v4 :: v_dual_mov_b32 v4, v206
	v_mov_b32_e32 v206, v85
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_mov_b32_e32 v176, v104
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v104, v127 offset:3136
	ds_load_u8 v178, v127 offset:3152
	ds_load_u8 v179, v127 offset:3168
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v64, v17, v18, 0xc0c0004
	ds_load_u8 v60, v127 offset:1216
	ds_load_u8 v17, v127 offset:1232
	ds_load_u8 v25, v127 offset:1248
	ds_load_u8 v76, v127 offset:1056
	ds_load_u8 v77, v127 offset:1072
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v28, v58, v32, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v97, v127 offset:2352
	ds_load_u8 v151, v127 offset:2368
	ds_load_u8 v152, v127 offset:2384
	ds_load_u8 v58, v127 offset:2400
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v61, v127 offset:1088
	ds_load_u8 v18, v127 offset:1104
	ds_load_u8 v26, v127 offset:1120
	v_lshl_or_b32 v140, v64, 16, v0
	v_wmma_i32_16x16x16_iu4 v[64:71], v[128:129], v[9:10], v[228:235] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v46, v46, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[139:140], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v6, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v130, v65
	v_cvt_f32_i32_e32 v141, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v140, v67
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v76, v74, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v68
	v_cvt_f32_i32_e32 v128, v69
	v_cvt_f32_i32_e32 v139, v70
	v_cvt_f32_i32_e32 v137, v71
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v27, v33, 16, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[27:28], v[11:12], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v17, v47, 16, v17
	v_lshl_or_b32 v25, v19, 16, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v37, v53
	v_cvt_f32_i32_e32 v36, v54
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v16, v127 offset:2592
	ds_load_u8 v50, v127 offset:2720
	ds_load_u8 v53, v127 offset:2736
	ds_load_u8 v74, v127 offset:2752
	ds_load_u8 v76, v127 offset:2768
	ds_load_u8 v49, v127 offset:2784
	ds_load_u8 v54, v127 offset:2608
	ds_load_u8 v78, v127 offset:2624
	ds_load_u8 v80, v127 offset:2640
	ds_load_u8 v15, v127 offset:2656
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v28, v55
	v_cvt_f32_i32_e32 v27, v56
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v85, v127 offset:2864
	ds_load_u8 v222, v127 offset:2880
	ds_load_u8 v224, v127 offset:2896
	ds_load_u8 v52, v127 offset:2912
	ds_load_u8 v88, v127 offset:2224
	ds_load_u8 v225, v127 offset:2240
	ds_load_u8 v223, v127 offset:2256
	ds_load_u8 v55, v127 offset:2272
	ds_load_u8 v91, v127 offset:2096
	ds_load_u8 v200, v127 offset:2112
	ds_load_u8 v3, v127 offset:2128
	ds_load_u8 v56, v127 offset:2144
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v16, v50, 0xc0c0004
	ds_load_u8 v50, v127 offset:2848
	ds_load_u8 v51, v127 offset:2976
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v15, v49, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v91, v88, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v127 offset:2080
	ds_load_u8 v57, v127 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v51, v57, 0xc0c0004
	ds_load_u8 v51, v127 offset:2336
	ds_load_u8 v65, v127 offset:2464
	ds_load_u8 v94, v127 offset:2480
	ds_load_u8 v149, v127 offset:2496
	ds_load_u8 v220, v127 offset:2512
	ds_load_u8 v57, v127 offset:2528
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v51, v65, 0xc0c0004
	v_lshl_or_b32 v51, v50, 16, v16
	v_perm_b32 v16, v39, v40, 0xc0c0004
	v_perm_b32 v39, v42, v43, 0xc0c0004
	v_perm_b32 v43, v85, v82, 0xc0c0004
	v_lshl_or_b32 v50, v65, 16, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v58, v57, 0xc0c0004
	v_lshl_or_b32 v40, v24, 16, v16
	v_lshl_or_b32 v39, v20, 16, v39
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v177, v175, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[50:51], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v20, v214, v213, 0xc0c0004
	v_perm_b32 v24, v216, v215, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v50, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[39:40], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v39, v218, v217, 0xc0c0004
	v_lshl_or_b32 v40, v20, 16, v16
	v_perm_b32 v16, v21, v23, 0xc0c0004
	v_perm_b32 v20, v72, v44, 0xc0c0004
	v_perm_b32 v23, v77, v75, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v24
	v_perm_b32 v24, v81, v79, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v244, v64
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v20, 16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v16, v54, v53, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v241, v65
	v_cvt_f32_i32_e32 v238, v66
	v_cvt_f32_i32_e32 v113, v67
	v_cvt_f32_i32_e32 v195, v68
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v44, v43, 16, v16
	v_lshl_or_b32 v43, v50, 16, v45
	ds_load_u8 v16, v127 offset:3632
	ds_load_u8 v45, v127 offset:3760
	ds_load_u8 v72, v127 offset:3776
	ds_load_u8 v75, v127 offset:3792
	ds_load_u8 v77, v127 offset:3808
	ds_load_u8 v79, v127 offset:3648
	ds_load_u8 v81, v127 offset:3664
	ds_load_u8 v82, v127 offset:3680
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v193, v69
	v_cvt_f32_i32_e32 v239, v70
	v_cvt_f32_i32_e32 v7, v71
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[64:71], v[39:40], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[20:21], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v16, v45, 0xc0c0004
	ds_load_u8 v45, v127 offset:4016
	ds_load_u8 v50, v127 offset:3888
	ds_load_u8 v85, v127 offset:3904
	ds_load_u8 v88, v127 offset:3920
	ds_load_u8 v91, v127 offset:3936
	ds_load_u8 v94, v127 offset:4032
	ds_load_u8 v97, v127 offset:4048
	ds_load_u8 v153, v127 offset:4064
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v21, v64
	v_cvt_f32_i32_e32 v23, v65
	v_cvt_f32_i32_e32 v24, v66
	v_cvt_f32_i32_e32 v20, v67
	v_cvt_f32_i32_e32 v40, v68
	v_cvt_f32_i32_e32 v39, v69
	v_cvt_f32_i32_e32 v42, v70
	v_cvt_f32_i32_e32 v41, v71
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[43:44], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v43, v187, v186, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v50, v45, 0xc0c0004
	ds_load_u8 v50, v127 offset:3120
	ds_load_u8 v51, v127 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v127 offset:3376
	ds_load_u8 v53, v127 offset:3504
	ds_load_u8 v227, v127 offset:3520
	ds_load_u8 v134, v127 offset:3536
	ds_load_u8 v135, v127 offset:3552
	ds_load_u8 v136, v127 offset:3392
	ds_load_u8 v0, v127 offset:3408
	ds_load_u8 v1, v127 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v51, v53, 0xc0c0004
	v_lshl_or_b32 v51, v45, 16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v162, v160, 0xc0c0004
	v_perm_b32 v45, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v50, v53, 16, v50
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v44, v43, 16, v16
	v_perm_b32 v16, v30, v126, 0xc0c0004
	v_perm_b32 v30, v59, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[50:51], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v50, v191, v190, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v218, v64
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v43, v50, 16, v45
	v_perm_b32 v45, v61, v60, 0xc0c0004
	v_perm_b32 v50, v63, v62, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v217, v65
	v_cvt_f32_i32_e32 v215, v66
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v30, v50, 16, v45
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v43, v200, v225, 0xc0c0004
	v_perm_b32 v44, v151, v149, 0xc0c0004
	v_perm_b32 v45, v104, v101, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v213, v67
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[30:31], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v30, v78, v74, 0xc0c0004
	v_perm_b32 v31, v222, v83, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v177, v68
	v_cvt_f32_i32_e32 v175, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v190, v59
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v136, v227, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v44, 16, v43
	v_perm_b32 v43, v79, v72, 0xc0c0004
	v_perm_b32 v44, v85, v94, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v189, v60
	v_cvt_f32_i32_e32 v16, v61
	v_cvt_f32_i32_e32 v191, v62
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v50, v64
	v_cvt_f32_i32_e32 v54, v65
	v_cvt_f32_i32_e32 v53, v66
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v44, v44, 16, v43
	v_lshl_or_b32 v43, v59, 16, v45
	v_wmma_i32_16x16x16_iu4 v[59:66], v[30:31], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v216, v70
	v_cvt_f32_i32_e32 v214, v71
	v_mov_b32_e32 v136, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:180
	scratch_load_b32 v44, off, off offset:184
	v_mov_b32_e32 v154, v208
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v188, v59
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v59, v29, v146, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v187, v60
	v_cvt_f32_i32_e32 v162, v61
	v_cvt_f32_i32_e32 v126, v62
	v_cvt_f32_i32_e32 v31, v63
	v_cvt_f32_i32_e32 v30, v64
	v_cvt_f32_i32_e32 v186, v65
	v_cvt_f32_i32_e32 v160, v66
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:252
	scratch_load_b32 v45, off, off offset:256
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	scratch_load_b32 v45, off, off offset:260 ; 4-byte Folded Reload
	v_lshl_or_b32 v44, v44, 16, v43
	s_waitcnt vmcnt(0)
	v_perm_b32 v45, v147, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v43, v59, 16, v45
	v_perm_b32 v45, v124, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v46, 16, v45
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v43, v3, v223, 0xc0c0004
	v_perm_b32 v44, v152, v220, 0xc0c0004
	v_perm_b32 v45, v178, v167, 0xc0c0004
	scratch_load_b32 v152, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[17:18], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v17, v80, v76, 0xc0c0004
	v_perm_b32 v18, v224, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v48, v62
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v0, v134, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v3, off, off offset:176
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v18, v18, 16, v17
	v_lshl_or_b32 v17, v44, 16, v43
	v_perm_b32 v43, v81, v75, 0xc0c0004
	v_perm_b32 v44, v88, v97, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v60, v64
	v_cvt_f32_i32_e32 v70, v65
	v_cvt_f32_i32_e32 v71, v66
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v44, v44, 16, v43
	v_lshl_or_b32 v43, v62, 16, v45
	v_wmma_i32_16x16x16_iu4 v[62:69], v[17:18], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[43:44], v[11:12], v[62:69] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v147, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v146, v63
	v_cvt_f32_i32_e32 v123, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v65
	v_cvt_f32_i32_e32 v44, v66
	v_cvt_f32_i32_e32 v43, v67
	v_cvt_f32_i32_e32 v124, v68
	v_cvt_f32_i32_e32 v118, v69
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b32 v3, off, off offset:228
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:232
	scratch_load_b32 v3, off, off offset:236
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v62, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v3, off, off offset:244
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v3, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v63, 16, v62
	v_perm_b32 v62, v254, v250, 0xc0c0004
	v_lshl_or_b32 v26, v38, 16, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[17:18], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v17, v52, v245, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[62:69], v[25:26], v[11:12], v[62:69] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v1, v135, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v1, off, off offset:196
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v18, v17, 16, v15
	v_lshl_or_b32 v17, v22, 16, v19
	v_perm_b32 v15, v82, v77, 0xc0c0004
	v_perm_b32 v19, v91, v153, 0xc0c0004
	v_perm_b32 v22, v179, v173, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v72, v62
	v_cvt_f32_i32_e32 v74, v63
	v_cvt_f32_i32_e32 v75, v64
	v_cvt_f32_i32_e32 v76, v65
	v_cvt_f32_i32_e32 v78, v66
	v_cvt_f32_i32_e32 v79, v67
	v_cvt_f32_i32_e32 v80, v68
	v_cvt_f32_i32_e32 v81, v69
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v26, v19, 16, v15
	v_lshl_or_b32 v25, v25, 16, v22
	v_wmma_i32_16x16x16_iu4 v[62:69], v[17:18], v[9:10], v[228:235] neg_lo:[1,1,0]
	v_mov_b32_e32 v91, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[25:26], v[11:12], v[62:69] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v38, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v63
	v_cvt_f32_i32_e32 v22, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v65
	v_cvt_f32_i32_e32 v17, v66
	v_cvt_f32_i32_e32 v15, v67
	v_cvt_f32_i32_e32 v25, v68
	v_cvt_f32_i32_e32 v18, v69
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:216
	scratch_load_b32 v1, off, off offset:220
	s_waitcnt vmcnt(0)
	v_perm_b32 v52, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:164
	scratch_load_b32 v1, off, off offset:168
	v_lshl_or_b32 v55, v52, 16, v49
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v1, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v0, v73, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:264
	scratch_load_b32 v1, off, off offset:272
	v_lshl_or_b32 v56, v56, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[55:56], v[9:10], v[228:235] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:208
	scratch_load_b32 v1, off, off offset:268
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:200
	scratch_load_b32 v1, off, off offset:212
	s_waitcnt vmcnt(0)
	v_perm_b32 v52, v0, v1, 0xc0c0004
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v0
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v73, v0 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_perm_b32 v58, v0, v57, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v57, v49, 16, v29
	v_lshl_or_b32 v58, v58, 16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[57:58], v[11:12], v[62:69] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v49, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v52, v63
	v_cvt_f32_i32_e32 v57, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v65
	v_cvt_f32_i32_e32 v77, v66
	v_cvt_f32_i32_e32 v82, v67
	v_cvt_f32_i32_e32 v83, v68
	v_cvt_f32_i32_e32 v84, v69
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v0, v14, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:344
	scratch_load_b32 v1, off, off offset:368
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v1, off, off offset:352
	v_lshl_or_b32 v13, v14, 16, v29
	s_waitcnt vmcnt(0)
	v_perm_b32 v55, v0, v1, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v200, off, off offset:144
	scratch_load_b32 v0, off, off offset:248
	scratch_load_b32 v1, off, off offset:348
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v1, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	v_lshl_or_b32 v14, v56, 16, v55
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v0, v207, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:356
	scratch_load_b32 v1, off, off offset:384
	s_waitcnt vmcnt(0)
	v_perm_b32 v55, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:360
	scratch_load_b32 v1, off, off offset:372
	v_lshl_or_b32 v55, v55, 16, v29
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:376
	scratch_load_b32 v1, off, off offset:400
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v62, v0, v73, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v56, v62, 16, v56
	v_wmma_i32_16x16x16_iu4 v[62:69], v[13:14], v[9:10], v[228:235] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v14, v219, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v219, 2, v219
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[62:69], v[55:56], v[11:12], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v55, v62
	v_cvt_f32_i32_e32 v56, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v64
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v10, v66
	v_cvt_f32_i32_e32 v11, v67
	v_cvt_f32_i32_e32 v12, v68
	v_cvt_f32_i32_e32 v13, v69
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v85, v14, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v62, s46, v1
	s_clause 0x7
	buffer_load_u16 v63, v62, s[40:43], 0 offen
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:8
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:12
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:16
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:20
	buffer_load_u16 v69, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v73, v62, s[40:43], 0 offen offset:28
	v_mov_b32_e32 v94, v132
	v_dual_mov_b32 v132, v221 :: v_dual_mov_b32 v101, v166
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v173, off, off offset:136
	scratch_load_b32 v207, off, off offset:132
	scratch_load_b32 v167, off, off offset:128
	scratch_load_b32 v166, off, off offset:124
	scratch_load_b32 v153, off, off offset:120
	scratch_load_b32 v179, off, off offset:116
	v_mov_b32_e32 v221, v133
	v_mov_b32_e32 v133, v143
	v_dual_mov_b32 v143, v198 :: v_dual_mov_b32 v196, v240
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s46, s46, s45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v97, v150 :: v_dual_fmac_f32 v2, v85, v63
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v63, 16, v64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v14, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	v_dual_mov_b32 v85, v206 :: v_dual_mov_b32 v104, v176
	v_mov_b32_e32 v206, v4
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v100, v64, v63 :: v_dual_lshlrev_b32 v63, 16, v65
	v_mov_b32_e32 v4, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v14, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v98, v64, v63 :: v_dual_lshlrev_b32 v63, 16, v66
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v14, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	v_dual_mov_b32 v88, v202 :: v_dual_fmac_f32 v99, v64, v63
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v64, v14, v0 :: v_dual_lshlrev_b32 v63, 16, v67
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v125, v64, v63
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v63, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v14, v33
	v_mul_f32_e32 v32, v14, v32
	v_mul_f32_e32 v28, v14, v28
	v_mul_f32_e32 v21, v14, v21
	v_mul_f32_e32 v27, v14, v27
	v_mul_f32_e32 v20, v14, v20
	v_mul_f32_e32 v16, v14, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v14, v12
	v_mul_f32_e32 v10, v14, v10
	v_mul_f32_e32 v19, v14, v19
	v_mul_f32_e32 v17, v14, v17
	v_mul_f32_e32 v15, v14, v15
	v_mul_f32_e32 v9, v14, v9
	v_mul_f32_e32 v13, v14, v13
	v_mul_f32_e32 v11, v14, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v14, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v132, v64, v63 :: v_dual_lshlrev_b32 v63, 16, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v14, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v95, v64, v63
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v64, v14, v0 :: v_dual_lshlrev_b32 v63, 16, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v0, v14, v6 :: v_dual_fmac_f32 v97, v64, v63
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v63, v62, s[40:43], 0 offen offset:32
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:36
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:40
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:44
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:48
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:52
	buffer_load_u16 v69, v62, s[40:43], 0 offen offset:56
	buffer_load_u16 v73, v62, s[40:43], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v0, v63 :: v_dual_lshlrev_b32 v0, 16, v64
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v130
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v94, v63, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v141
	v_mov_b32_e32 v141, v181
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v63, v0 :: v_dual_lshlrev_b32 v0, 16, v66
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v140
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v92, v63, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v63, v14, v129 :: v_dual_lshlrev_b32 v0, 16, v67
	scratch_load_b32 v129, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v90, v63, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v128
	scratch_load_b32 v128, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v91, v63, v0 :: v_dual_lshlrev_b32 v0, 16, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v63, v0 :: v_dual_lshlrev_b32 v0, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v14, v137
	v_mov_b32_e32 v137, v212
	v_mov_b32_e32 v212, v236
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v88, v63, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:64
	buffer_load_u16 v63, v62, s[40:43], 0 offen offset:68
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:72
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:76
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:80
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:84
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:88
	buffer_load_u16 v69, v62, s[40:43], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v85, v33, v0 :: v_dual_lshlrev_b32 v0, 16, v63
	v_dual_mov_b32 v63, v138 :: v_dual_mov_b32 v138, v116
	v_fmac_f32_e32 v86, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v14, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v64, v170 :: v_dual_fmac_f32 v207, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v14, v34 :: v_dual_mov_b32 v65, v164
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v32, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v14, v37
	scratch_load_b32 v37, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v66
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v178, v169 :: v_dual_fmac_f32 v37, v32, v0
	v_lshlrev_b32_e32 v0, 16, v67
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v14, v36
	v_dual_mov_b32 v164, v165 :: v_dual_mov_b32 v67, v159
	v_mov_b32_e32 v159, v163
	v_mov_b32_e32 v163, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v157, v32, v0
	v_dual_mov_b32 v185, v199 :: v_dual_lshlrev_b32 v0, 16, v68
	v_dual_fmac_f32 v205, v28, v0 :: v_dual_lshlrev_b32 v0, 16, v69
	v_mov_b32_e32 v69, v172
	v_mov_b32_e32 v172, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v206, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:96
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:100
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:104
	buffer_load_u16 v32, v62, s[40:43], 0 offen offset:108
	buffer_load_u16 v33, v62, s[40:43], 0 offen offset:112
	buffer_load_u16 v34, v62, s[40:43], 0 offen offset:116
	buffer_load_u16 v35, v62, s[40:43], 0 offen offset:120
	buffer_load_u16 v36, v62, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v204, v21, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v14, v23
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v21, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v21, v14, v24 :: v_dual_mov_b32 v66, v155
	v_mov_b32_e32 v155, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v115, v21, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v226, v20, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v14, v40
	v_mul_f32_e32 v33, v14, v190
	scratch_load_b32 v40, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v136, v20, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v14, v39
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v39, off, off offset:96
	scratch_load_b32 v34, off, off offset:64
	scratch_load_b32 v139, off, off offset:60
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v201, v20, v0 :: v_dual_lshlrev_b32 v0, 16, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v14, v42
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v35, off, off offset:104
	scratch_load_b32 v151, off, off offset:88
	scratch_load_b32 v150, off, off offset:84
	scratch_load_b32 v149, off, off offset:80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v133, v20, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v0, 16, v36
	scratch_load_b32 v36, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v14, v41
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v36, v20, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:128
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:132
	buffer_load_u16 v21, v62, s[40:43], 0 offen offset:136
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:140
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:144
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:148
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:152
	buffer_load_u16 v32, v62, s[40:43], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v130, v148 :: v_dual_fmac_f32 v221, v33, v0
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v14, v189
	v_dual_mov_b32 v68, v161 :: v_dual_mov_b32 v161, v114
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v117, v20, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v121, v16, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v191
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v122, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v51
	scratch_load_b32 v51, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v119, v16, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v50
	scratch_load_b32 v50, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v120, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v54
	scratch_load_b32 v54, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v128, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v53
	v_mul_f32_e32 v32, v14, v47
	scratch_load_b32 v53, off, off offset:72 ; 4-byte Folded Reload
	v_mov_b32_e32 v47, v171
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v129, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:160
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:164
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:168
	buffer_load_u16 v21, v62, s[40:43], 0 offen offset:172
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:176
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:180
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:184
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v46
	v_mul_f32_e32 v32, v14, v72
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v131, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v16, v14, v59 :: v_dual_mov_b32 v59, v211
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v69, v16, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v48
	v_dual_mov_b32 v46, v209 :: v_dual_fmac_f32 v39, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v16, v14, v61 :: v_dual_mov_b32 v61, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v142, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v60
	v_mov_b32_e32 v60, v192
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v96, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v140, v210 :: v_dual_fmac_f32 v67, v16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v71
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:192
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:196
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:200
	buffer_load_u16 v21, v62, s[40:43], 0 offen offset:204
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:208
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:212
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:216
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v66, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v74
	v_mov_b32_e32 v114, v237
	v_mul_f32_e32 v32, v14, v49
	scratch_load_b32 v49, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v76
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v48, v182 :: v_dual_fmac_f32 v61, v16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v79
	v_dual_mov_b32 v176, v183 :: v_dual_fmac_f32 v63, v16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v81
	v_dual_mov_b32 v184, v197 :: v_dual_mov_b32 v81, v243
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:224
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:228
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:232
	buffer_load_u16 v21, v62, s[40:43], 0 offen offset:236
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:240
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:244
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:248
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v52
	scratch_load_b32 v52, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v52, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v58
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v16, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v49, v16, v0 :: v_dual_mul_f32 v16, v14, v82
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v83
	v_dual_mov_b32 v82, v158 :: v_dual_mov_b32 v83, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v47, v16, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v14, v84
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v16, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, s3, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:4
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:8
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:12
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:16
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:20
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:24
	buffer_load_u16 v32, v0, s[40:43], 0 offen offset:28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, s45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v33, v14, v1 :: v_dual_lshlrev_b32 v16, 16, v16
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v35, v33, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v33, v14, v255 :: v_dual_lshlrev_b32 v16, 16, v20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v130, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v194, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v242, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v200, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v179, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v174, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v14, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v180, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:32
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:36
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:40
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:44
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:48
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:52
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:56
	buffer_load_u16 v32, v0, s[40:43], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v185, v33, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v253
	v_mul_f32_e32 v33, v14, v244
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v154, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v172, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v248
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v143, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v247
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v159, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v246
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v161, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v196, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v249
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v155, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:64
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:68
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:72
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:76
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:80
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:84
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:88
	buffer_load_u16 v32, v0, s[40:43], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v114, v33, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v241
	v_dual_mul_f32 v33, v14, v218 :: v_dual_fmac_f32 v164, v20, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v212, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v113
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v178, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v195
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v163, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v193
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v138, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v239
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v137, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v7
	scratch_load_b32 v7, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v184, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:96
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:100
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:104
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:108
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:112
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:116
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:120
	buffer_load_u16 v32, v0, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v167, v33, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v217
	v_mul_f32_e32 v33, v14, v188
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v173, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v215
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v153, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v166, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v177
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v140, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v152, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v216
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v141, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v214
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v176, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:128
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:132
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:136
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:140
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:144
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:148
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:152
	buffer_load_u16 v32, v0, s[40:43], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v111, v33, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v187
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v112, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v162
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v109, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v126
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v110, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v31
	v_mul_f32_e32 v31, v14, v147
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v107, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v108, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v105, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v160
	scratch_load_b32 v32, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v106, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:160
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:164
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:168
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:172
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:176
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:180
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:184
	buffer_load_u16 v30, v0, s[40:43], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v103, v31, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v146
	v_dual_mul_f32 v31, v14, v38 :: v_dual_fmac_f32 v104, v20, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v150, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v45
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v151, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v34, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v43
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v149, v20, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v101, v20, v16 :: v_dual_mul_f32 v20, v14, v118
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v102, v20, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:192
	buffer_load_u16 v20, v0, s[40:43], 0 offen offset:196
	buffer_load_u16 v21, v0, s[40:43], 0 offen offset:200
	buffer_load_u16 v23, v0, s[40:43], 0 offen offset:204
	buffer_load_u16 v24, v0, s[40:43], 0 offen offset:208
	buffer_load_u16 v27, v0, s[40:43], 0 offen offset:212
	buffer_load_u16 v28, v0, s[40:43], 0 offen offset:216
	buffer_load_u16 v30, v0, s[40:43], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v7, v31, v16
	scratch_load_b32 v31, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v26
	scratch_load_b32 v26, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v139, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v14, v22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:12
	scratch_load_b32 v21, off, off offset:4
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v31, v20, v16 :: v_dual_lshlrev_b32 v16, 16, v23
	scratch_load_b32 v23, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v32, v19, v16
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v24
	scratch_load_b32 v24, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v26, v17, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v27
	scratch_load_b32 v27, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v14, v18
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v27, v15, v16 :: v_dual_mul_f32 v16, v14, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:156
	scratch_load_b32 v6, off, off offset:24
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v15, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v24, v16, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v15, v0, s[40:43], 0 offen offset:224
	v_lshlrev_b32_e32 v16, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v6, v17, v16 :: v_dual_add_nc_u32 v25, s26, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x6
	buffer_load_u16 v16, v0, s[40:43], 0 offen offset:228
	buffer_load_u16 v148, v0, s[40:43], 0 offen offset:232
	buffer_load_u16 v145, v0, s[40:43], 0 offen offset:236
	buffer_load_u16 v73, v0, s[40:43], 0 offen offset:240
	buffer_load_u16 v146, v0, s[40:43], 0 offen offset:244
	buffer_load_u16 v144, v0, s[40:43], 0 offen offset:248
	buffer_load_u16 v147, v0, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v14, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v22, v15, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v14, v56
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v16
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v145
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v73
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v146
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v23, v15, v0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v14, v29
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v147
	v_lshlrev_b32_e32 v20, 16, v144
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v82, v10, v18 :: v_dual_fmac_f32 v81, v13, v19
	scratch_load_b32 v13, off, off offset:388 ; 4-byte Folded Reload
	v_fmac_f32_e32 v83, v12, v20
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(2)
	v_cmp_lt_i32_e32 vcc_lo, s7, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v148
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v14, v9, v16
	scratch_load_b32 v9, off, off           ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s7, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v21, v15, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v15, 0x80000000, v4, vcc_lo
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v0, v0, s[28:31], 0 offen
	buffer_load_b32 v15, v15, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v8, s47, v8
	v_add_nc_u32_e32 v4, s47, v4
	s_cmp_lg_u32 s6, 0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v9, v11, v17
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v13, v1 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v0, v15 offset1:8
	scratch_load_b32 v15, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v42, off, off offset:424
	scratch_load_b32 v78, off, off offset:428
	scratch_load_b32 v10, off, off offset:432
	scratch_load_b32 v3, off, off offset:436
	scratch_load_b32 v5, off, off offset:440
	scratch_load_b32 v41, off, off offset:420
	v_dual_mov_b32 v45, v131 :: v_dual_mov_b32 v56, v129
	v_dual_mov_b32 v55, v128 :: v_dual_mov_b32 v62, v119
	v_dual_mov_b32 v57, v121 :: v_dual_mov_b32 v58, v120
	v_dual_mov_b32 v70, v122 :: v_dual_mov_b32 v71, v117
	v_dual_mov_b32 v72, v221 :: v_dual_mov_b32 v75, v36
	v_dual_mov_b32 v74, v133 :: v_dual_mov_b32 v79, v115
	v_dual_mov_b32 v80, v136 :: v_dual_mov_b32 v43, v157
	v_dual_mov_b32 v202, v226 :: v_dual_mov_b32 v77, v125
	v_dual_mov_b32 v44, v168 :: v_dual_mov_b32 v181, v242
	v_mov_b32_e32 v76, v132
	v_mov_b32_e32 v84, v2
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v4, 0x770, v42
.LBB0_6:                                ; %Flow1174
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v0, 0x88, 0, s0
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v31, off offset:36
	scratch_store_b32 off, v14, off offset:8
	scratch_store_b32 off, v9, off
	scratch_store_b32 off, v7, off offset:44
	scratch_store_b32 off, v32, off offset:40
	scratch_store_b32 off, v27, off offset:32
	scratch_store_b32 off, v26, off offset:28
	scratch_store_b32 off, v6, off offset:24
	scratch_store_b32 off, v24, off offset:20
	scratch_store_b32 off, v23, off offset:16
	scratch_store_b32 off, v22, off offset:12
	scratch_store_b32 off, v21, off offset:4
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v0, v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v147, v35 :: v_dual_mov_b32 v146, v130
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v148, v34 :: v_dual_add_nc_u32 v247, 0, v5
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v2, 0, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_xad_u32 v0, v0, 8, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v199, 0
	ds_load_b64 v[11:12], v2 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[9:10], v0 offset:4096
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v208, 0, v4
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v248, 0, v3
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v165, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v188, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v5, 0xfffffb10, v208
	v_add_nc_u32_e32 v6, 0xfffffa90, v208
	v_add_nc_u32_e32 v3, 0xfffffc10, v208
	v_add_nc_u32_e32 v4, 0xfffffb90, v208
	v_dual_mov_b32 v38, v37 :: v_dual_add_nc_u32 v1, 0xffffff20, v208
	v_add_nc_u32_e32 v7, 0xfffffa10, v208
	v_add_nc_u32_e32 v8, 0xfffff990, v208
	v_add_nc_u32_e32 v13, 0xfffff910, v208
	v_add_nc_u32_e32 v14, 0xfffff890, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0xffffff10, v208
	v_add_nc_u32_e32 v31, 0xfffffe90, v208
	v_add_nc_u32_e32 v29, 0xffffff90, v208
	v_add_nc_u32_e32 v32, 0xfffffe10, v208
	v_add_nc_u32_e32 v23, 0xfffffb20, v208
	v_add_nc_u32_e32 v24, 0xfffffaa0, v208
	v_add_nc_u32_e32 v19, 0xfffffc20, v208
	v_add_nc_u32_e32 v20, 0xfffffba0, v208
	v_add_nc_u32_e32 v25, 0xfffffa20, v208
	v_add_nc_u32_e32 v26, 0xfffff9a0, v208
	v_add_nc_u32_e32 v27, 0xfffff920, v208
	v_add_nc_u32_e32 v28, 0xfffff8a0, v208
	v_add_nc_u32_e32 v16, 0xfffffda0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v2, 0xfffffea0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffffa0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffc90, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v7, 0xfffffd90, v208
	v_add_nc_u32_e32 v8, 0xfffffd10, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v22, v3, 16, v5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffd20, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v6, 16, v4
	ds_load_u8 v3, v30
	ds_load_u8 v4, v31
	ds_load_u8 v5, v29
	ds_load_u8 v6, v208 offset:16
	ds_load_u8 v8, v8
	ds_load_u8 v13, v13
	ds_load_u8 v14, v32
	ds_load_u8 v7, v7
	ds_load_u8 v29, v23
	ds_load_u8 v30, v24
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffca0, v208
	v_add_nc_u32_e32 v15, 0xfffffe20, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v31, v208 offset:32
	ds_load_u8 v37, v16
	ds_load_u8 v32, v1
	ds_load_u8 v33, v2
	ds_load_u8 v0, v0
	ds_load_u8 v34, v17
	ds_load_u8 v35, v18
	ds_load_u8 v36, v15
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v23, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_perm_b32 v24, v5, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v20, v19, 0xc0c0004
	v_perm_b32 v13, v13, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v14, v7, v14, 0xc0c0004
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_lshl_or_b32 v24, v24, 16, v23
	v_lshl_or_b32 v23, v14, 16, v13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v0, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v30, 16, v29
	v_lshl_or_b32 v21, v25, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v37, v36, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[13:20], v[23:24], v[9:10], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v23, v33, v32, 0xc0c0004
	v_perm_b32 v24, v35, v34, 0xc0c0004
	v_mov_b32_e32 v37, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v199, v13
	v_cvt_f32_i32_e32 v197, v14
	v_cvt_f32_i32_e32 v190, v15
	v_cvt_f32_i32_e32 v198, v16
	v_cvt_f32_i32_e32 v195, v17
	v_cvt_f32_i32_e32 v193, v18
	v_cvt_f32_i32_e32 v168, v19
	v_cvt_f32_i32_e32 v191, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v0, 16, v23
	v_lshl_or_b32 v21, v25, 16, v24
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb30, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[9:10], v[13:20] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffab0, v208
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v156, v14
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0xfffffc30, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v158, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffbb0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v157, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff930, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v177, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffa30, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v175, v18
	v_cvt_f32_i32_e32 v134, v19
	v_cvt_f32_i32_e32 v171, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffff8b0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffff9b0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v13, v13
	ds_load_u8 v16, v16
	ds_load_u8 v15, v15
	v_lshl_or_b32 v22, v14, 16, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffffb0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffeb0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xffffff30, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v15, 16, v13
	ds_load_u8 v13, v16
	ds_load_u8 v14, v17
	ds_load_u8 v15, v208 offset:48
	ds_load_u8 v0, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffdb0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0xfffffd30, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v0, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffcb0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	v_lshl_or_b32 v24, v0, 16, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb40, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffe30, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[23:24], v[9:10], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v160, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffac0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v169, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v162, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0xfffffbc0, v208
	v_add_nc_u32_e32 v16, 0xfffff9c0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffff8c0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v14, v14
	ds_load_u8 v16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v133, v17
	v_cvt_f32_i32_e32 v131, v18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v19
	v_cvt_f32_i32_e32 v122, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffc40, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0xfffff940, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v22, v13, 16, v0
	ds_load_u8 v14, v14
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffff40, v208
	v_add_nc_u32_e32 v13, 0xfffffec0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffa40, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v13, 64, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffdc0, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v15, 16, v14
	ds_load_u8 v13, v13
	ds_load_u8 v14, v208 offset:64
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffcc0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0xfffffd40, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v24, v13, 16, v0
	ds_load_u8 v14, v14
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb50, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffe40, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[23:24], v[9:10], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffad0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v120, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v115, v18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffbd0, v208
	v_add_nc_u32_e32 v18, 0xfffff9d0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v117, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff8d0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v125, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffc50, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffff950, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffff50, v208
	v_add_nc_u32_e32 v15, 0xfffffed0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffa50, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v15, 48, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffdd0, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v208 offset:80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffcd0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffd50, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb60, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffe50, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v128, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffae0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffbe0, v208
	v_add_nc_u32_e32 v18, 0xfffff9e0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v116, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff8e0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v124, v19
	v_cvt_f32_i32_e32 v123, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v34, v21
	v_cvt_f32_i32_e32 v118, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffc60, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffff960, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffff60, v208
	v_add_nc_u32_e32 v15, 0xfffffee0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffa60, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v15, 32, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffde0, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v208 offset:96
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffce0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffd60, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb70, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffe60, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffaf0, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v73, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffbf0, v208
	v_add_nc_u32_e32 v18, 0xfffff9f0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v30, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff8f0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v33, v19
	v_cvt_f32_i32_e32 v32, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v27, v21
	v_cvt_f32_i32_e32 v31, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffc70, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffff970, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xffffff70, v208
	v_add_nc_u32_e32 v15, 0xfffffef0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffa70, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, -16, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffdf0, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v208 offset:112
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffcf0, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffd70, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, 0xfffffb80, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffe70, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v28, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffb00, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff900, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v16
	v_cvt_f32_i32_e32 v26, v18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffa00, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v24, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v38, v21
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xfffffc00, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	ds_load_u8 v16, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffff980, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffa80, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	ds_load_u8 v29, v208
	ds_load_u8 v0, v247
	v_lshl_or_b32 v15, v18, 16, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffd00, v208
	v_add_nc_u32_e32 v18, 0xfffffe00, v208
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0xffffff80, v208
	v_add_nc_u32_e32 v16, 0xffffff00, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffd80, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0xfffffe80, v208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v0, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v187, v1
	v_cvt_f32_i32_e32 v189, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v182, v3
	v_cvt_f32_i32_e32 v188, v4
	v_cvt_f32_i32_e32 v170, v5
	v_cvt_f32_i32_e32 v186, v6
	v_cvt_f32_i32_e32 v183, v7
	v_cvt_f32_i32_e32 v165, v8
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v134, off offset:232
	scratch_store_b32 off, v133, off offset:228
	scratch_store_b32 off, v131, off offset:224
	scratch_store_b32 off, v122, off offset:220
	scratch_store_b32 off, v121, off offset:216
	scratch_store_b32 off, v120, off offset:212
	scratch_store_b32 off, v13, off offset:208
	scratch_store_b32 off, v117, off offset:200
	scratch_store_b32 off, v132, off offset:192
	scratch_store_b32 off, v115, off offset:188
	scratch_store_b32 off, v130, off offset:184
	scratch_store_b32 off, v129, off offset:180
	scratch_store_b32 off, v128, off offset:176
	scratch_store_b32 off, v127, off offset:172
	scratch_store_b32 off, v126, off offset:168
	scratch_store_b32 off, v125, off offset:164
	scratch_store_b32 off, v124, off offset:160
	scratch_store_b32 off, v123, off offset:156
	scratch_store_b32 off, v118, off offset:152
	scratch_store_b32 off, v116, off offset:148
	scratch_store_b32 off, v73, off offset:144
	scratch_store_b32 off, v36, off offset:140
	scratch_store_b32 off, v35, off offset:136
	scratch_store_b32 off, v34, off offset:132
	scratch_store_b32 off, v33, off offset:128
	scratch_store_b32 off, v32, off offset:124
	scratch_store_b32 off, v31, off offset:120
	scratch_store_b32 off, v30, off offset:116
	scratch_store_b32 off, v28, off offset:112
	scratch_store_b32 off, v26, off offset:108
	scratch_store_b32 off, v25, off offset:104
	scratch_store_b32 off, v27, off offset:100
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v24, off offset:96
	scratch_store_b32 off, v20, off offset:92
	scratch_store_b32 off, v19, off offset:88
	scratch_store_b32 off, v23, off offset:84
	v_dual_mov_b32 v13, v100 :: v_dual_mov_b32 v144, v97
	v_dual_mov_b32 v31, v99 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v145, v98 :: v_dual_mov_b32 v130, 0
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v95, off offset:204
	scratch_store_b32 off, v94, off offset:196
	scratch_store_b32 off, v93, off offset:80
	scratch_store_b32 off, v92, off offset:76
	scratch_store_b32 off, v91, off offset:72
	scratch_store_b32 off, v90, off offset:68
	scratch_store_b32 off, v89, off offset:64
	scratch_store_b32 off, v88, off offset:60
	scratch_store_b32 off, v87, off offset:56
	scratch_store_b32 off, v86, off offset:52
	scratch_store_b32 off, v85, off offset:48
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v213, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v1, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v0, v208 offset:784
	ds_load_u8 v1, v208 offset:656
	ds_load_u8 v2, v208 offset:1040
	ds_load_u8 v3, v208 offset:912
	ds_load_u8 v4, v208 offset:272
	ds_load_u8 v5, v208 offset:144
	ds_load_u8 v6, v208 offset:528
	ds_load_u8 v7, v208 offset:400
	ds_load_u8 v15, v208 offset:160
	ds_load_u8 v8, v208 offset:1808
	ds_load_u8 v16, v208 offset:1680
	ds_load_u8 v17, v208 offset:2064
	ds_load_u8 v18, v208 offset:1936
	ds_load_u8 v19, v208 offset:1296
	ds_load_u8 v20, v208 offset:1168
	ds_load_u8 v21, v208 offset:1552
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v5, v4, 0xc0c0004
	ds_load_u8 v4, v208 offset:1424
	ds_load_u8 v33, v208 offset:1824
	ds_load_u8 v34, v208 offset:1696
	ds_load_u8 v35, v208 offset:2080
	ds_load_u8 v36, v208 offset:1952
	v_lshl_or_b32 v24, v1, 16, v0
	ds_load_u8 v0, v208 offset:800
	ds_load_u8 v22, v208 offset:672
	ds_load_u8 v27, v208 offset:1056
	ds_load_u8 v28, v208 offset:928
	ds_load_u8 v29, v208 offset:288
	ds_load_u8 v30, v208 offset:544
	ds_load_u8 v32, v208 offset:416
	v_mov_b32_e32 v73, v37
	v_mov_b32_e32 v87, v38
	ds_load_u8 v38, v208 offset:1184
	v_dual_mov_b32 v85, v81 :: v_dual_mov_b32 v86, v82
	v_dual_mov_b32 v81, v76 :: v_dual_mov_b32 v76, v43
	v_mov_b32_e32 v43, v39
	ds_load_u8 v39, v208 offset:1568
	v_dual_mov_b32 v82, v77 :: v_dual_mov_b32 v77, v44
	v_mov_b32_e32 v44, v40
	ds_load_u8 v40, v208 offset:1440
	ds_load_u8 v37, v208 offset:1312
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v16, v16, v8, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v19, v4, v21, 0xc0c0004
	v_lshl_or_b32 v23, v3, 16, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v7, s10
	v_lshl_or_b32 v26, v17, 16, v16
	v_lshl_or_b32 v25, v19, 16, v18
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v22, v0, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v15, v29, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v32, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v27, 16, v0
	v_perm_b32 v0, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	v_perm_b32 v25, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v38, v37, 0xc0c0004
	v_perm_b32 v27, v40, v39, 0xc0c0004
	v_mov_b32_e32 v38, v87
	v_mov_b32_e32 v40, v44
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v242, v15
	v_cvt_f32_i32_e32 v136, v16
	v_cvt_f32_i32_e32 v134, v17
	v_cvt_f32_i32_e32 v135, v18
	v_cvt_f32_i32_e32 v130, v19
	v_cvt_f32_i32_e32 v132, v20
	v_cvt_f32_i32_e32 v128, v21
	v_cvt_f32_i32_e32 v129, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v25, 16, v0
	v_lshl_or_b32 v23, v27, 16, v26
	v_mov_b32_e32 v37, v73
	v_dual_mov_b32 v44, v77 :: v_dual_mov_b32 v77, v82
	v_mov_b32_e32 v82, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[9:10], v[15:22] neg_lo:[1,1,0]
	v_mov_b32_e32 v39, v43
	v_dual_mov_b32 v43, v76 :: v_dual_mov_b32 v76, v81
	v_mov_b32_e32 v81, v85
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v126, v15
	v_cvt_f32_i32_e32 v127, v16
	v_cvt_f32_i32_e32 v73, v17
	v_cvt_f32_i32_e32 v125, v18
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:816
	ds_load_u8 v15, v208 offset:688
	ds_load_u8 v16, v208 offset:1072
	ds_load_u8 v17, v208 offset:944
	ds_load_u8 v18, v208 offset:176
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v255, v19
	v_cvt_f32_i32_e32 v118, v20
	v_cvt_f32_i32_e32 v249, v21
	v_cvt_f32_i32_e32 v254, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	ds_load_u8 v16, v208 offset:304
	ds_load_u8 v17, v208 offset:560
	ds_load_u8 v19, v208 offset:432
	v_lshl_or_b32 v24, v15, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v0, v208 offset:1840
	ds_load_u8 v15, v208 offset:1712
	ds_load_u8 v16, v208 offset:2096
	ds_load_u8 v17, v208 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	ds_load_u8 v16, v208 offset:1328
	ds_load_u8 v17, v208 offset:1200
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:1584
	ds_load_u8 v18, v208 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v123, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:832
	ds_load_u8 v15, v208 offset:704
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v124, v16
	v_cvt_f32_i32_e32 v253, v17
	v_cvt_f32_i32_e32 v29, v18
	v_cvt_f32_i32_e32 v251, v19
	v_cvt_f32_i32_e32 v252, v20
	v_cvt_f32_i32_e32 v245, v21
	v_cvt_f32_i32_e32 v250, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v208 offset:1088
	ds_load_u8 v16, v208 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:192
	ds_load_u8 v17, v208 offset:320
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v208 offset:1856
	ds_load_u8 v15, v208 offset:1728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	ds_load_u8 v17, v208 offset:576
	ds_load_u8 v18, v208 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v208 offset:2112
	ds_load_u8 v16, v208 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:1344
	ds_load_u8 v17, v208 offset:1216
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:1600
	ds_load_u8 v18, v208 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v244, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:848
	ds_load_u8 v15, v208 offset:720
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v246, v16
	v_cvt_f32_i32_e32 v241, v17
	v_cvt_f32_i32_e32 v243, v18
	v_cvt_f32_i32_e32 v239, v19
	v_cvt_f32_i32_e32 v240, v20
	v_cvt_f32_i32_e32 v235, v21
	v_cvt_f32_i32_e32 v238, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v208 offset:1104
	ds_load_u8 v16, v208 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:336
	ds_load_u8 v17, v208 offset:208
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v208 offset:1872
	ds_load_u8 v15, v208 offset:1744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:592
	ds_load_u8 v18, v208 offset:464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v208 offset:2128
	ds_load_u8 v16, v208 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:1360
	ds_load_u8 v17, v208 offset:1232
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:1616
	ds_load_u8 v18, v208 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v236, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:864
	ds_load_u8 v15, v208 offset:736
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v237, v16
	v_cvt_f32_i32_e32 v233, v17
	v_cvt_f32_i32_e32 v234, v18
	v_cvt_f32_i32_e32 v231, v19
	v_cvt_f32_i32_e32 v232, v20
	v_cvt_f32_i32_e32 v226, v21
	v_cvt_f32_i32_e32 v230, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v208 offset:1120
	ds_load_u8 v16, v208 offset:992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:352
	ds_load_u8 v17, v208 offset:224
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v208 offset:1888
	ds_load_u8 v15, v208 offset:1760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:608
	ds_load_u8 v18, v208 offset:480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v208 offset:2144
	ds_load_u8 v16, v208 offset:2016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:1376
	ds_load_u8 v17, v208 offset:1248
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:1632
	ds_load_u8 v18, v208 offset:1504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v227, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:880
	ds_load_u8 v15, v208 offset:752
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v229, v16
	v_cvt_f32_i32_e32 v225, v17
	v_cvt_f32_i32_e32 v228, v18
	v_cvt_f32_i32_e32 v222, v19
	v_cvt_f32_i32_e32 v224, v20
	v_cvt_f32_i32_e32 v219, v21
	v_cvt_f32_i32_e32 v223, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v208 offset:1136
	ds_load_u8 v16, v208 offset:1008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:368
	ds_load_u8 v17, v208 offset:240
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v208 offset:1904
	ds_load_u8 v15, v208 offset:1776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:624
	ds_load_u8 v18, v208 offset:496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v208 offset:2160
	ds_load_u8 v16, v208 offset:2032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:1392
	ds_load_u8 v17, v208 offset:1264
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v208 offset:1648
	ds_load_u8 v18, v208 offset:1520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v220, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v208 offset:896
	ds_load_u8 v15, v208 offset:768
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v221, v16
	v_cvt_f32_i32_e32 v217, v17
	v_cvt_f32_i32_e32 v218, v18
	v_cvt_f32_i32_e32 v215, v19
	v_cvt_f32_i32_e32 v216, v20
	v_cvt_f32_i32_e32 v210, v21
	v_cvt_f32_i32_e32 v214, v22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v248 offset:2048
	ds_load_u8 v16, v208 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:384
	ds_load_u8 v17, v208 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	ds_load_u8 v16, v208 offset:640
	ds_load_u8 v18, v208 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v208 offset:1920
	ds_load_u8 v11, v208 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v11, v247 offset:2048
	ds_load_u8 v12, v208 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v208 offset:1408
	ds_load_u8 v15, v208 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v12, 0xc0c0004
	ds_load_u8 v12, v208 offset:1664
	ds_load_u8 v16, v208 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v12, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v85, v1
	v_cvt_f32_i32_e32 v213, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v209, v3
	v_cvt_f32_i32_e32 v211, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v2, v8
.LBB0_10:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v0, s44, v42
	s_mul_i32 s0, s34, s44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v0, s0, v0, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s3, s0, s27
	s_mov_b32 s5, 0x76543210
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	v_add_lshl_u32 v6, s3, v78, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s10
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v5, 0x80000000, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v208, 16, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v5, v242, v208
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v5, v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v147, v0, s2
	scratch_load_b32 v147, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v7
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_mul_f32 v4, v4, v208
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v2, v2, v208
	v_mul_f32_e32 v3, v3, v208
	v_mul_f32_e32 v1, v1, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v5, v5, v0
	v_rcp_f32_e32 v8, v7
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v7, v8, 1.0
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, vcc_lo, v0, v5, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v10, v9, v8
	v_fma_f32 v11, -v7, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v8
	v_fma_f32 v7, -v7, v10, v9
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v136, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v7, v7, v8, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v8, 4, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v7, v5, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v5, v134, v208 :: v_dual_add_nc_u32 v0, 8, v6
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v9, v8, v146
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v146, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v5, v0, v194
	scratch_load_b32 v146, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v194, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v10
	v_fma_f32 v12, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v15, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v10, v15, v12
	v_fmac_f32_e32 v15, v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v10, v15, v12
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v135, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v10, v11, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v11, 12, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v10, v9, v8
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_nc_u32_e32 v8, 20, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v132, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v12, v11, v181
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v181, v11, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v12, v12, v11
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v11, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v16, v18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v16, null, v5, v5, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v5, v0
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v16, v16, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v16, v5, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 28, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v129, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v10, v8, v179
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v179, v8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v10
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, null, v17, v17, v10
	v_rcp_f32_e32 v18, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v8, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v10, v17, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v21, -v8, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v18
	v_fma_f32 v8, -v8, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v8, v18, v20
	v_div_fixup_f32 v8, v15, v12, v11
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v130, v208 :: v_dual_add_nc_u32 v11, 16, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v18, v17, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v17, 24, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v18, v128, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x1
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v16, v0, v180
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v180, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v16, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v12, v11, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, v18, v17, v174
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v200, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, v174, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v12, v12, v11
	v_rcp_f32_e32 v19, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v15, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v11, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v15, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v15, -v15, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v15, v15, v19, v21
	v_div_fixup_f32 v200, v15, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v11, 36, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v127, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v0
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v194, v20, v18, v17
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v18, v125, v208 :: v_dual_add_nc_u32 v17, 44, v6
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v12, v11, v154
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v154, v11, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v11, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v12
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, null, v15, v15, v12
	v_rcp_f32_e32 v21, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v11, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v12, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v11, -v11, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v11, v21, v23
	v_div_fixup_f32 v11, v19, v16, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 32, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v21, v15, v12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v15, 40, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v73, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v16, v126, v208 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v18, v17, v143
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v143, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, 0xbfb8aa3b, v17 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v21, v15, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v172, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v15 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v16, v0, v185
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v185, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v0
	v_rcp_f32_e32 v22, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v25, -v19, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v22
	v_fma_f32 v19, -v19, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v22, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v20
	v_fma_f32 v23, -v20, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v20, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v24, v23
	v_div_fmas_f32 v20, v20, v22, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v180, v20, v18, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v18, v255, v208 :: v_dual_add_nc_u32 v17, 48, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v21, v21
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v15, v21, v15
	v_div_fixup_f32 v181, v19, v16, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 52, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v118, v208 :: v_dual_mul_f32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v26, -v22, v25, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v174, v22, v21, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v15, 60, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v254, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v21, v15, v155
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v155, v15, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v15 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v16, v0, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v161, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v19
	v_fma_f32 v24, -v19, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v19, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v25, v24
	v_div_fmas_f32 v19, v19, v23, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v172, v19, v16, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 56, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v249, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v18, v17, v159
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v159, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v20
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v18, v18, v17
	v_rcp_f32_e32 v23, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v20, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v20, -v20, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v23, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v192, v20, v18, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v15
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v15
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v15, v21, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v16, v0, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v196, v0, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v196, v22, v21, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v253, v208
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v16, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v17, v20, v19
	v_fmac_f32_e32 v20, v23, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v20, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v124, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0x44, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v161, v17, v16, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_add_nc_u32_e32 v0, 0x48, v6
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v19, v18, v164
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v164, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v212
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v212, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v20
	v_fma_f32 v24, -v20, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v20, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v123, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 64, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v155, v20, v19, v18
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v114
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v114, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v30, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v26
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v29, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x4c, v6
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v178
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v178, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v30, v29
	v_fma_f32 v33, -v28, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v29
	v_fma_f32 v28, -v28, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v29, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v154, v28, v27, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v159, v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v16, null, v15, v15, v0
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v18, v252, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v17, 0x54, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v131, v16, v15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v246, v208 :: v_dual_add_nc_u32 v0, 0x64, v6
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v18, v17, v138
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v138, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v173
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v251, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0x50, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v21, v20, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v163, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	v_div_fixup_f32 v138, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v250, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x5c, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v143, v22, v21, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v184
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v184, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v245, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x58, v6
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v137, v26, s2
	scratch_load_b32 v137, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v122, v25, v24, v23
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v30
	v_fmac_f32_e32 v32, v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v32, v30
	v_div_fmas_f32 v28, v28, v29, v32
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v173, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v133, v28, v27, v26
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v73, v73, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v0
	v_fma_f32 v16, -v0, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v29, v73, v29
	v_mul_f32_e32 v17, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v0, v17, v16
	v_fmac_f32_e32 v17, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v17, v16
	v_div_fmas_f32 v118, v0, v15, v17
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v244, v208 :: v_dual_add_nc_u32 v0, 0x60, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v117, v118, v73, v29
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v167
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v120, v167, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v120
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v120
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v121, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v121, v121, v120
	v_rcp_f32_e32 v15, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v0, v15, 1.0
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v120, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v15
	v_fma_f32 v18, -v0, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v15
	v_fma_f32 v0, -v0, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v123, v0, v15, v17
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v243, v208 :: v_dual_add_nc_u32 v0, 0x6c, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v120, v123, v121, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v166, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v124, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v124, v124, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v124, v0
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v125, v15, v16, v18
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v241, v208 :: v_dual_add_nc_u32 v15, 0x68, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v121, v125, v124, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_add_nc_u32_e32 v0, 0x7c, v6
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v153
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v153, v15, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v16, v16, v15
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v21, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v18
	v_fma_f32 v17, -v17, v20, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v240, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0x74, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v118, v17, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v238, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v176
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v176, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v15, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v19, v18, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v152, v18, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v239, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 0x70, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v115, v20, v19, v18
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v140
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v140, v21, s2
	scratch_load_b32 v140, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v26, v25
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v116, v23, v22, v21
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v25, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v25, v0
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v26, v15, v16, v18
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v235, v208 :: v_dual_add_nc_u32 v15, 0x78, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v114, v26, v25, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_add_nc_u32_e32 v0, 0x94, v6
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v141
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v141, v15, s2
	scratch_load_b32 v141, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v17, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v20, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v237, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0x84, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v19, v18, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v112, v18, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v236, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 0x80, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v111, v21, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v27, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v27, v24
	v_div_scale_f32 v27, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v28, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v23, v28, v27
	v_fmac_f32_e32 v28, v29, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v234, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v24, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 0x8c, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v27, v24, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v110, v24, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v110, v20, v19, v18
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v24, v27, v24
	v_mul_f32_e32 v32, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v30
	v_fmac_f32_e32 v32, v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v32, v30
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v233, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v29, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v29, 0x88, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v112, v28, v27, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v30, v29, v109
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v109, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v30, v30, v32
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v30, v30, v29
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_div_fixup_f32 v113, v17, v16, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v232, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v35, v34, v33
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v32, v35, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v108, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v35, v36, v33
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v32, -v32, v35, v34
	v_div_fmas_f32 v32, v32, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v109, v32, v30, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v17, v17, v0
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v18, v16
	v_div_scale_f32 v18, vcc_lo, v0, v17, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v16
	v_fma_f32 v20, -v15, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v20, v16
	v_div_fixup_f32 v111, v23, v22, v21
	v_fma_f32 v15, -v15, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v15, v16, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v231, v208 :: v_dual_add_nc_u32 v15, 0x90, v6
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v107
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v107, v15, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v107, v18, v17, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xac, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v230, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0x9c, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v21, v20, v106
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v106, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v226, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x98, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v106, v22, v21, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v105, v23, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v25, v28, v27
	v_fmac_f32_e32 v28, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v229, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0xa4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v104, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v30
	v_fmac_f32_e32 v32, v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v32, v30
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v227, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v29, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v29, 0xa0, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v108, v19, v16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v228, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v151
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v151, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v30, v29, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v103, v29, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v103, v28, v27, v26
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v35, v34
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v104, v32, v30, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v29, v29, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v29, v0
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v30, v15, v16, v18
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v225, v208 :: v_dual_add_nc_u32 v15, 0xa8, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v105, v25, v24, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v150, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v19, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v19, v16
	v_div_scale_f32 v19, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v20, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v15, v20, v19
	v_fmac_f32_e32 v20, v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v15, v20, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v224, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v15, v15, v16, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v16, 0xb4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v19, v16, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v149, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v19, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v16, v19, v16
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v222, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 0xb0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v100, v20, v19, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v148
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v148, v21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v27, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v24
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v25, v223, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 0xbc, v6
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v25, v24, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v102, v24, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v102, v30, v29, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xc4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v32, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v26, v32, v28
	v_fmac_f32_e32 v32, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v32, v28
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v219, v208
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v26, v26, v27, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v27, 0xb8, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v99, v26, v25, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v28, v27, v101
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v101, v27, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v101, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v32
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v28, v28, v27
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v27, v28, v27
	v_div_fixup_f32 v98, v15, v18, v17
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v221, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v35, v34, v33
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v15, v0, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v32, v35, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v139, v0, s2
	scratch_load_b32 v139, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v35, v36, v33 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v35, v34
	v_div_fmas_f32 v32, v32, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v97, v32, v28, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v15
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v16
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v16, v16, v15
	v_rcp_f32_e32 v17, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v0, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v0, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v0, -v0, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v0, v17, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v17, v220, v208 :: v_dual_add_nc_u32 v0, 0xc0, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v93, v19, v16, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v214, v208 :: v_dual_add_nc_u32 v15, 0xdc, v6
	scratch_load_b32 v19, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v17, v0, v147
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v147, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v19, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v0
	v_fma_f32 v18, -v0, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v22, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v0, v22, v18
	v_fmac_f32_e32 v22, v23, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v22, v18
	v_div_fmas_f32 v22, v0, v17, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v17, v218, v208 :: v_dual_add_nc_u32 v0, 0xcc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v94, v22, v21, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v17, v0, v146
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v146, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v23
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v24, v24, v23
	v_rcp_f32_e32 v17, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v0, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v18, v17
	v_fma_f32 v26, -v0, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v17
	v_fma_f32 v0, -v0, v25, v18
	scratch_load_b32 v18, off, off offset:36 ; 4-byte Folded Reload
	v_div_fmas_f32 v25, v0, v17, v25
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v17, v217, v208 :: v_dual_add_nc_u32 v0, 0xc8, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v95, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v17, v0, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v18, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v26
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v27, v27, v26
	v_rcp_f32_e32 v17, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v0, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v18, v17
	v_fma_f32 v29, -v0, v28, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v17
	v_fma_f32 v0, -v0, v28, v18
	scratch_load_b32 v18, off, off offset:32 ; 4-byte Folded Reload
	v_div_fmas_f32 v28, v0, v17, v28
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v17, v216, v208 :: v_dual_add_nc_u32 v0, 0xd4, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v91, v28, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v17, v0, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v18, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v0
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v18, null, v17, v17, v0
	v_rcp_f32_e32 v29, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v18, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v17, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v30, v29
	v_fma_f32 v33, -v18, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v29
	v_fma_f32 v18, -v18, v32, v30
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v215, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v18, v18, v29, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v29, 0xd0, v6
	scratch_load_b32 v32, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v89, v18, v17, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_add_nc_u32_e32 v0, 0xec, v6
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v30, v29, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v32, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v30, v30, v32
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v30, v30, v29
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v36, v33
	v_and_b32_e32 v36, 16, v41
	v_fma_f32 v32, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v92, v32, v30, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v15
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v210, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0xd8, v6
	scratch_load_b32 v22, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v88, v19, v16, v15
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	scratch_load_b32 v16, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v211, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v15, v0, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v21, v20, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v22, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v213, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0xe4, v6
	scratch_load_b32 v25, off, off offset:16 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v25, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v85, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0xe0, v6
	scratch_load_b32 v28, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v73, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v28, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v30, v29
	v_fma_f32 v33, -v28, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, v33, v29 :: v_dual_mul_f32 v33, v170, v208
	v_fma_f32 v28, -v28, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v29, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v29, v22, v21, v20
	v_div_fixup_f32 v87, v28, v27, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v27, v27, v0
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	scratch_load_b32 v17, off, off offset:4 ; 4-byte Folded Reload
	v_div_fmas_f32 v28, v15, v16, v18
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v209, v208 :: v_dual_add_nc_u32 v15, 0xe8, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v90, v28, v27, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:100
	scratch_load_b32 v28, off, off offset:96
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_or_b32_e32 v0, s1, v78
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v0, v0, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v208
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v208 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v17, v15, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v16, v16, v15
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v21, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v18
	v_fma_f32 v17, -v17, v20, v19
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0xf4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v4, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v19, v4, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v18, v18, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v4, v18, v4
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v22, v21
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0xf0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v85, v19, v18, v4
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v195, v208
	scratch_load_b32 v19, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v3, v3, v20, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v82, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v21, null, v20, v20, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v25, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v22
	v_fma_f32 v21, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v22, v24
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v22, 0xfc, v6
	v_add_nc_u32_e32 v6, 0xf8, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v86, v21, v20, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_mov_b32_e32 v3, v84
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:160
	scratch_load_b32 v21, off, off offset:156
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v19, v208 :: v_dual_lshlrev_b32 v22, 16, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v2, v2, v22, v81
	v_fma_f32 v1, v1, v6, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v81, v2, s2
	v_cndmask_b32_e64 v1, v83, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v2
	v_mul_f32_e32 v6, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v2, v22, v2
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v23, v26, v25
	v_fmac_f32_e32 v26, v30, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v26, v25
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v83, v23, v22, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v197, v208
	scratch_load_b32 v23, off, off offset:132 ; 4-byte Folded Reload
	v_mul_f32_e32 v20, v20, v208
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v6, v6, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v1, v6, v1
	v_mul_f32_e32 v30, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v24, v30, v26
	v_fmac_f32_e32 v30, v32, v25
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v38, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v24, v30, v26
	v_div_fmas_f32 v24, v24, v25, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:124
	scratch_load_b32 v30, off, off offset:92
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v82, v24, v6, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v199, v208
	scratch_load_b32 v24, off, off offset:128 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v21, v208
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v1, v0, v84
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v84, s0, v78, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.h, 0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v193, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v3, v0, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v1, 4, v84
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v198, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v0, v7 :: v_dual_add_nc_u32 v35, 0xf8, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v0.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v23, v23, v208
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v25, v25, v208
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v30, v30, v208
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v24, v24, v208 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v2, v1, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v2, 12, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v13, v1, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v13, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v1, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v157, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v3, v2, v31
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v3, 16, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v31, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	scratch_load_b32 v31, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v2, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v168, v208 :: v_dual_lshlrev_b32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v4, v3, v77
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v4, 20, v84
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v6, v4, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e32 v6.h, v78.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v76, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v77, v3, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 1, v78
	v_mov_b16_e32 v78.l, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v1, v200 :: v_dual_mul_f32 v1, v2, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v4, 1, v78
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v78.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v7, v4, 0x7fff
	v_and_b32_e32 v2, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v78.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v191, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s3
	v_mov_b32_e32 v1, 0x5410
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v177, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v3, v2, v0 :: v_dual_cndmask_b32 v0, v0, v2
	v_mov_b32_e32 v2, 0x7632
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v2, 0x3276, v2, vcc_lo
	v_lshl_or_b32 v1, v1, 8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v1, 0x540054, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x760076, v2
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v77, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v76, 0x7060706, v2
	v_perm_b32 v1, v0, v3, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_perm_b32 v2, v0, v3, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 8, v84
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v190, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v3, v0, v145
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v3, 28, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v145, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v6, v3, v144
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v6, 24, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v144, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v3, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v11, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v3.h
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v208 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v8, v6, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v175, v208
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v140, v6, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e32 v6.h, v78.h
	scratch_load_b32 v140, off, off offset:68 ; 4-byte Folded Reload
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v5, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v78
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e32 v3.l, v0.h
	v_mov_b16_e32 v3.h, v78.h
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v156, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v119, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v3, v0, v4, vcc_lo
	v_cndmask_b32_e32 v0, v4, v0, vcc_lo
	v_permlanex16_b32 v4, v3, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v77
	v_perm_b32 v4, v4, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 36, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v5, v0, v139
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 32, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v139, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	scratch_load_b32 v139, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	scratch_load_b32 v12, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v81, v17, v16, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v13, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:216
	scratch_load_b32 v17, off, off offset:192
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v6, v5, v31
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v6, 44, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v31, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v181
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v17, v17, v208 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v7, v6, v137
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 52, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v137, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	scratch_load_b32 v137, off, off offset:60 ; 4-byte Folded Reload
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v8, v7, v141
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 48, v84
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v9, v8, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v78
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v6, v180
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v141, v7, s2
	v_cndmask_b32_e64 v7, v140, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v78.h
	v_mov_b16_e32 v78.l, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s3, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v7, v192
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v78
	v_mov_b16_e32 v78.l, v6.h
	v_cmp_o_f32_e64 s4, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v0, v7, 0x7fff
	v_and_b32_e32 v10, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v6, v10, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_mov_b16_e32 v6.h, v78.h
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v158, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v6.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v171, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v5, v8, vcc_lo
	v_cndmask_b32_e32 v8, v8, v5, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v8, v77
	v_perm_b32 v6, v6, v8, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 40, v84
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v9, v8, v139
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v9, 60, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v139, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v174
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v10, v9, v137
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v10, 56, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v137, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v196
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v11, v10, v12
	scratch_load_b32 v11, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v12, v10, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.l, v8.h
	v_mov_b16_e32 v10.h, v78.h
	scratch_load_b32 v12, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v161
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v10, v8, v10, 0x7fff
	v_and_b32_e32 v8, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v9, v8, 0x7fff
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v78.h
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v9, v0, v9, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v160, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v169, v208 :: v_dual_cndmask_b32 v8, v0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v8, v0, v77
	v_perm_b32 v8, v8, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x44, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v9, v0, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v9, 64, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v12, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v12, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v12, v208 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v10, v9, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v10, 0x4c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v11, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v162, v208
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v11, v10, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v11, 0x50, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v44, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v12, v11, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v12, 0x54, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v37, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v15, v12, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v78
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v10, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v43, v12, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e32 v12.h, v78.h
	v_mov_b16_e32 v78.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v10, v138
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v11, v143
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v78
	v_mov_b16_e32 v78.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v9, v9
	v_add3_u32 v11, v0, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v78
	v_add3_u32 v16, v10, v16, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v78.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v13, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v13, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_cndmask_b32_e32 v10, v9, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v10, v12, v77
	v_perm_b32 v10, v10, v12, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v12, 0x48, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v13, v208
	scratch_load_b32 v13, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v15, v12, v207
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v15, 0x5c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v207, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v12, v131
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v12, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v16, v15, v206
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 0x58, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v206, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v122
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v15.h
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v17, v16, v205
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v17, v14, v208
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v205, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v12.h
	v_mov_b16_e32 v16.h, v78.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v16, v12, v16, 0x7fff
	v_and_b32_e32 v12, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v15, v12, 0x7fff
	v_mov_b16_e32 v15.l, v0.h
	v_mov_b16_e32 v15.h, v78.h
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v0, v15, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s3
	v_cndmask_b16 v11.l, 0x7fff, v15.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v13, v208
	scratch_load_b32 v13, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v12, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v0, v77
	v_perm_b32 v12, v12, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x60, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v13, v208
	scratch_load_b32 v13, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v15, v0, v204
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v15, 0x64, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v204, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v120
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v13, v208
	scratch_load_b32 v13, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v16, v15, v203
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 0x6c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v203, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v15.h
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v17, v16, v202
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x70, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v202, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v121
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v14, v17, v80
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x74, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v80, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v13, v17, v201
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v78
	v_mov_b16_e32 v78.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v201, v13, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v15, v17, 0x7fff
	v_mov_b16_e32 v15.l, v0.h
	v_mov_b16_e32 v15.h, v78.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v13, v13, v115 :: v_dual_and_b32 v18, 1, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v16, v18, 0x7fff
	v_mov_b16_e32 v78.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v14, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v78
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v13, v14, 0x7fff
	v_mov_b16_e32 v13.l, v0.h
	v_mov_b16_e32 v13.h, v78.h
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v0, v13, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:180
	scratch_load_b32 v17, off, off offset:184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s4
	v_cmp_o_f32_e64 s0, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v13, v0, v14 :: v_dual_cndmask_b32 v0, v14, v0
	v_permlanex16_b32 v14, v13, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v0, v77
	v_perm_b32 v14, v14, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x68, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v15, v0, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v15, 0x7c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v79, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v118
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v17, v15, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x78, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v75, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v15.h
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v19, v17, v74
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v19, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v74, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e32 v17.h, v78.h
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v16, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v78
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v15, v16, 0x7fff
	v_mov_b16_e32 v15.l, v0.h
	v_mov_b16_e32 v15.h, v78.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v0, v15, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:176
	scratch_load_b32 v18, off, off offset:168
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v15, v0, v16, vcc_lo
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v15, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v77
	v_perm_b32 v16, v16, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x80, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v208
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v17, v0, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x84, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v72, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v111
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v18, v17, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 0x8c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v71, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v17.h
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v19, v18, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v70, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v18, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 0x90, v84
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v20, v18, v62
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 0x94, v84
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v20, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v78
	v_mov_b16_e32 v78.l, v19.h
	v_add3_u32 v21, v17, v21, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v62, v18, s2
	v_cndmask_b32_e64 v18, v58, v20, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v78.h
	v_and_b32_e32 v22, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v22, v19, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v17, v108 :: v_dual_mul_f32 v17, v18, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v78.l, v17.h
	v_cmp_o_f32_e64 s3, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v78
	v_add3_u32 v18, v17, v18, 0x7fff
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e32 v17.h, v78.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v0, v17, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v21.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:148
	scratch_load_b32 v21, off, off offset:152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s4
	v_cmp_o_f32_e64 s0, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v17, v0, v18 :: v_dual_cndmask_b32 v0, v18, v0
	v_permlanex16_b32 v18, v17, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v77
	v_perm_b32 v18, v18, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x88, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v20, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v20, v0, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 0x9c, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v57, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v20, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x98, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v56, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v106
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v20.h
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v23, v21, v55
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v55, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v78.h
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v19, v105 :: v_dual_and_b32 v19, 1, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v78.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:144
	scratch_load_b32 v22, off, off offset:136
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v77
	v_perm_b32 v20, v20, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xa4, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v23, v23, v208
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v21, v0, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0xa0, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v45, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v103
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0xac, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v40, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v104
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v39
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0xb0, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v39, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v142
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xb4, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v22, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v142, v23, s2
	v_cndmask_b32_e64 v23, v96, v24, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e32 v24.h, v78.h
	v_mov_b16_e32 v78.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v21, v24, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v21, v22, v101 :: v_dual_mul_f32 v22, v23, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v78
	v_cmp_o_f32_e64 s4, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v78.l, v22.h
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	v_and_b32_e32 v26, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v22, v26, 0x7fff
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v78.h
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v25.h, s0
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:116
	scratch_load_b32 v26, off, off offset:120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v22.h, s4
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v21, v24, vcc_lo
	v_cndmask_b32_e32 v24, v24, v21, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v24, v77
	v_perm_b32 v22, v22, v24, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xa8, v84
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xbc, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v69, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v24, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xb8, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v68, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v99
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v67
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v27, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v67, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v78.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v24, v26, 0x7fff
	v_and_b32_e32 v24, 1, v78
	v_add3_u32 v24, v25, v24, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v78.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v23.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v26.h, s1
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v26, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v24, v0, v77
	v_perm_b32 v24, v24, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc0, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v208
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v25, v0, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xc4, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v66, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xcc, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v65, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v25.h
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v64, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v27, v26, v95 :: v_dual_add_nc_u32 v26, 0xd0, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v28, v26, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xd4, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v61, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v30, v28, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v78
	v_mov_b16_e32 v78.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v63, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v78.h
	v_and_b32_e32 v31, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v25, v25, v89 :: v_dual_and_b32 v28, 1, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v27, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v78.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v26, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v78.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v28.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:84
	scratch_load_b32 v30, off, off offset:88
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s4
	v_cmp_o_f32_e64 s0, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, v0, v26 :: v_dual_cndmask_b32 v0, v26, v0
	v_permlanex16_b32 v26, v25, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v77
	v_perm_b32 v26, v26, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc8, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v28, v28, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v30, v30, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v28, v0, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xdc, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v60, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v30, v28, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0xd8, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v59, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v28, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v32, v30, v54
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v186, v208
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v54, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e32 v30.h, v78.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v0, v30, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v27, v29 :: v_dual_and_b32 v27, 1, v78
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v189, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v78.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v30.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v187, v208
	v_mul_f32_e32 v31, v188, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v77
	v_perm_b32 v28, v28, v0, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xe4, v84
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v29, v0, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0xe0, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v52, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v78.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0xec, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v53, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0xf4, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v51, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v32, v31, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0xf0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v33, v32, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v30, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v50, v31, s2
	v_cndmask_b32_e64 v31, v49, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v78.h
	v_mov_b16_e32 v78.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v29, v30, v85 :: v_dual_mul_f32 v30, v31, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v78
	v_mov_b16_e32 v78.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v29, v29
	v_cmp_o_f32_e64 s4, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v0, v31, 0x7fff
	v_and_b32_e32 v34, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v29, v34, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v78.h
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v182, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v29.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v165, v208
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v29, v30, v32 :: v_dual_cndmask_b32 v30, v32, v30
	v_permlanex16_b32 v32, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v29, v32, v30, v77
	v_perm_b32 v30, v32, v30, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0xe8, v84
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v33, v32, v48
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v183, v208
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v48, v32, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v33, v35, v47
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v32, v32, v81 :: v_dual_add_nc_u32 v35, 0xfc, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v47, v33, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v33, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v35, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v46, v34, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v33, v34, v83
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v34.h, v78.h
	v_mov_b16_e32 v78.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v32, v34, 0x7fff
	v_and_b32_e32 v32, 1, v78
	v_mov_b16_e32 v78.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v33, v32, 0x7fff
	v_and_b32_e32 v33, 1, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v0, v33, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s2
	v_and_b32_e32 v34, 0x1e0, v41
	v_cndmask_b16 v31.l, 0x7fff, v33.h, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v33, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v31, s27, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	s_mov_b32 s27, s11
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v31, s34, s33, v31
	v_add_lshl_u32 v33, v31, v33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v31, v0, v32, v77
	v_perm_b32 v32, v0, v32, v76
	v_add_nc_u32_e32 v34, 32, v33
	v_add_nc_u32_e32 v0, 64, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v35, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v34, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v0, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 448
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 448
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 45000
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 448
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 448
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 170
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
