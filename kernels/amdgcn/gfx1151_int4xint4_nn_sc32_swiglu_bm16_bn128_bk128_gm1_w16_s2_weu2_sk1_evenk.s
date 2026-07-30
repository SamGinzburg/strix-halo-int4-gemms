	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v41, v0
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v6, 2, v41
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 5, v41
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v1, 0x7c, v6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
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
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s6, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s16, s7
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v0, v41, 4, 4
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s5, s19, s5
	.loc	1 102 14                        ; generate_amdgcn.py:102:14
	s_lshl_b32 s34, s27, 1
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s18, s3, 4
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[4:5], null, s34, v2, v[1:2]
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s16, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s19, s5, s17
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v7, s18, v2
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s21, s19, s17
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s16, s34, s18
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s35, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s5, s21, s7
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s21, 7
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s5
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v7
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s5, 16, v7
	.loc	1 193 34 is_stmt 1              ; generate_amdgcn.py:193:34
	v_add3_u32 v7, s26, s16, v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v42, 15, v41
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s7, s20, s4
.Ltmp19:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s7, 5
.Ltmp21:
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v3, s18, v42
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_or_b32_e32 v5, s33, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 31
	s_cselect_b32 s2, -1, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s6, s35, v3
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v3
	.loc	1 189 34 is_stmt 1              ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[3:4], null, v5, s35, v[3:4]
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s5, vcc_lo
	.loc	1 201 43                        ; generate_amdgcn.py:201:43
	v_add_nc_u32_e32 v4, s27, v7
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s6, s4, s6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v8, 0x7f, v41
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_bfe_i32 v7, v41, 7, 1
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_or_b32_e32 v11, 0x3f0, v41
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v14, 0, v6
	v_or_b32_e32 v12, 0x7f0, v41
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v7, 0x88, v7
	s_mov_b32 s6, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v8, v7, v8
	v_lshlrev_b32_e32 v7, 4, v41
	buffer_load_u8 v3, v3, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b32 v5, v5, s[36:39], 0 offen
	buffer_load_b32 v4, v4, s[36:39], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v13, 0, v8
	s_waitcnt vmcnt(2)
	ds_store_b8 v13, v3 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v14, v5, v4 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v9, 0x70, v7
	v_and_b32_e32 v6, 8, v41
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v3, 0x3f0, v41
	v_or_b32_e32 v4, 0x770, v42
	v_or_b32_e32 v5, 0x7f0, v41
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow1169
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v78, v41, 4, 1
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v195, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v33, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s6, s19, 8
	s_mov_b32 s16, 0
	s_max_i32 s20, s0, 1
	s_add_i32 s1, s6, s34
	s_lshl_b32 s21, s17, 8
	v_bfe_i32 v3, v41, 3, 1
	s_sub_i32 s1, s1, s21
	s_sub_i32 s6, s6, s21
	s_lshl_b32 s48, s20, 4
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 0x70, v7
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v0, s33, v0
	s_lshl_b32 s19, s19, 7
	s_lshl_b32 s17, s17, 7
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	v_and_or_b32 v4, 0x88, v3, v4
	v_lshlrev_b32_e32 v3, 1, v2
	v_sub_nc_u32_e32 v2, s35, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:396
	scratch_store_b32 off, v78, off offset:428
	v_lshlrev_b32_e32 v2, 1, v78
	v_lshl_or_b32 v3, s3, 5, v3
	scratch_store_b32 off, v41, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 8, v4
	s_add_i32 s50, s18, 16
	scratch_store_b32 off, v2, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s33, v42
	v_add_nc_u32_e32 v6, 33, v3
	v_add_nc_u32_e32 v3, 32, v3
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v127, 0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v2, s7, v2
	v_mul_lo_u32 v6, s27, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v7, s27, v3
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v101, 0
	v_lshlrev_b32_e32 v25, 1, v2
	v_mad_u64_u32 v[2:3], null, s35, v0, s[18:19]
	v_add3_u32 v0, v7, s19, v1
	v_add3_u32 v6, v6, s19, v1
	v_mov_b32_e32 v195, 0
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_subrev_nc_u32_e32 v8, s17, v0
	v_add3_u32 v0, v2, v42, 16
	v_subrev_nc_u32_e32 v3, s17, v6
	s_mov_b32 s17, s16
	v_dual_mov_b32 v234, s23 :: v_dual_mov_b32 v233, s22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:404
	scratch_store_b32 off, v11, off offset:436
	v_add_nc_u32_e32 v0, 0, v4
	v_dual_mov_b32 v232, s21 :: v_dual_mov_b32 v231, s20
	v_dual_mov_b32 v230, s19 :: v_dual_mov_b32 v229, s18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:408
	scratch_store_b32 off, v12, off offset:440
	v_add_nc_u32_e32 v0, 0, v5
	v_dual_mov_b32 v228, s17 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v227, s16
	v_mov_b32_e32 v201, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v47, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s49, s27, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:420
	scratch_store_b32 off, v13, off offset:384
	scratch_store_b32 off, v14, off offset:388
	scratch_store_b32 off, v42, off offset:392
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v3, off offset:172
	scratch_store_b32 off, v25, off offset:168
	scratch_store_b32 off, v130, off offset:164
	scratch_store_b32 off, v37, off offset:160
	scratch_store_b32 off, v206, off offset:156
	scratch_store_b32 off, v188, off offset:152
	scratch_store_b32 off, v173, off offset:148
	scratch_store_b32 off, v36, off offset:144
	scratch_store_b32 off, v35, off offset:140
	scratch_store_b32 off, v134, off offset:136
	scratch_store_b32 off, v40, off offset:132
	scratch_store_b32 off, v168, off offset:128
	scratch_store_b32 off, v114, off offset:124
	scratch_store_b32 off, v54, off offset:120
	scratch_store_b32 off, v51, off offset:116
	scratch_store_b32 off, v34, off offset:112
	scratch_store_b32 off, v33, off offset:108
	scratch_store_b32 off, v212, off offset:104
	scratch_store_b32 off, v53, off offset:100
	scratch_store_b32 off, v169, off offset:96
	scratch_store_b32 off, v143, off offset:92
	scratch_store_b32 off, v211, off offset:88
	scratch_store_b32 off, v50, off offset:84
	scratch_store_b32 off, v159, off offset:80
	scratch_store_b32 off, v140, off offset:76
	scratch_store_b32 off, v52, off offset:72
	scratch_store_b32 off, v49, off offset:68
	scratch_store_b32 off, v213, off offset:64
	scratch_store_b32 off, v32, off offset:60
	scratch_store_b32 off, v156, off offset:56
	scratch_store_b32 off, v154, off offset:52
	scratch_store_b32 off, v153, off offset:48
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v26, off offset:20
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v151, off offset:44
	scratch_store_b32 off, v150, off offset:40
	scratch_store_b32 off, v149, off offset:36
	scratch_store_b32 off, v30, off offset:28
	scratch_store_b32 off, v27, off offset:24
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v23, off offset:12
	scratch_store_b32 off, v22, off offset:8
	scratch_store_b32 off, v21, off offset:4
	scratch_store_b32 off, v10, off
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v3, v25, s[44:47], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v0, s50, v42
	v_dual_mov_b32 v160, v82 :: v_dual_mov_b32 v169, v104
	v_dual_mov_b32 v213, v128 :: v_dual_mov_b32 v186, v185
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v183, v132 :: v_dual_add_nc_u32 v0, s16, v0
	v_mov_b32_e32 v132, v157
	v_mov_b32_e32 v158, v67
	v_mov_b32_e32 v210, v70
	v_dual_mov_b32 v122, v121 :: v_dual_mov_b32 v165, v178
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_dual_mov_b32 v121, v120 :: v_dual_mov_b32 v120, v119
	v_dual_mov_b32 v119, v118 :: v_dual_mov_b32 v118, v117
	v_mov_b32_e32 v161, v83
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	v_dual_mov_b32 v117, v116 :: v_dual_mov_b32 v116, v142
	v_dual_mov_b32 v145, v181 :: v_dual_mov_b32 v142, v63
	v_mov_b32_e32 v181, v69
	v_dual_mov_b32 v208, v137 :: v_dual_mov_b32 v199, v59
	v_mov_b32_e32 v150, v97
	v_mov_b32_e32 v164, v84
	v_mov_b32_e32 v184, v174
	v_dual_mov_b32 v6, v207 :: v_dual_mov_b32 v157, v66
	v_dual_mov_b32 v207, v77 :: v_dual_mov_b32 v182, v60
	v_dual_mov_b32 v137, v61 :: v_dual_mov_b32 v134, v155
	v_dual_mov_b32 v209, v81 :: v_dual_mov_b32 v144, v64
	v_mov_b32_e32 v167, v47
	v_dual_mov_b32 v176, v175 :: v_dual_mov_b32 v155, v65
	v_dual_mov_b32 v114, v113 :: v_dual_mov_b32 v149, v88
	v_dual_mov_b32 v113, v170 :: v_dual_mov_b32 v170, v68
	v_dual_mov_b32 v200, v172 :: v_dual_mov_b32 v185, v46
	v_mov_b32_e32 v146, v48
	.loc	1 170 22 is_stmt 1              ; generate_amdgcn.py:170:22
	s_add_i32 s12, s50, s16
	v_mov_b32_e32 v212, v129
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v3, off offset:180 ; 4-byte Folded Spill
	scratch_load_b32 v3, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s16, v3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v127 offset:512
	ds_load_u8 v9, v127 offset:640
	ds_load_u8 v3, v127 offset:656
	ds_load_u8 v197, v127 offset:672
	ds_load_u8 v177, v127 offset:688
	ds_load_u8 v162, v127 offset:704
	ds_load_u8 v4, v127 offset:720
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v104, v127 offset:3136
	ds_load_u8 v172, v127 offset:3152
	ds_load_u8 v173, v127 offset:3168
	ds_load_u8 v76, v127 offset:2160
	ds_load_u8 v82, v127 offset:2992
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v63, v127 offset:1344
	ds_load_u8 v59, v127 offset:1856
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v84, v127 offset:3024
	ds_load_u8 v83, v127 offset:3008
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v77, v127 offset:1072
	ds_load_u8 v60, v127 offset:1216
	ds_load_u8 v66, v127 offset:1296
	ds_load_u8 v81, v127 offset:1328
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v0, v9, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	scratch_store_b32 off, v4, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v247, v127 offset:528
	ds_load_u8 v198, v127 offset:544
	ds_load_u8 v179, v127 offset:560
	ds_load_u8 v163, v127 offset:576
	ds_load_u8 v4, v127 offset:592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v10, v127 offset:768
	ds_load_u8 v11, v127 offset:896
	ds_load_u8 v0, v127 offset:912
	ds_load_u8 v103, v127 offset:928
	ds_load_u8 v214, v127 offset:944
	ds_load_u8 v187, v127 offset:960
	ds_load_u8 v4, v127 offset:976
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:992
	v_lshl_or_b32 v14, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v27, v127 offset:784
	ds_load_u8 v238, v127 offset:800
	ds_load_u8 v215, v127 offset:816
	ds_load_u8 v189, v127 offset:832
	ds_load_u8 v4, v127 offset:848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v27, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v11, v127
	ds_load_u8 v12, v127 offset:128
	ds_load_u8 v28, v127 offset:144
	ds_load_u8 v239, v127 offset:160
	ds_load_u8 v216, v127 offset:176
	ds_load_u8 v190, v127 offset:192
	ds_load_u8 v4, v127 offset:208
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v29, v127 offset:16
	ds_load_u8 v240, v127 offset:32
	ds_load_u8 v217, v127 offset:48
	ds_load_u8 v191, v127 offset:64
	ds_load_u8 v4, v127 offset:80
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v12, v127 offset:256
	ds_load_u8 v13, v127 offset:384
	ds_load_u8 v30, v127 offset:400
	ds_load_u8 v242, v127 offset:416
	ds_load_u8 v218, v127 offset:432
	ds_load_u8 v192, v127 offset:448
	ds_load_u8 v148, v127 offset:464
	ds_load_u8 v4, v127 offset:480
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v31, v127 offset:272
	ds_load_u8 v245, v127 offset:288
	ds_load_u8 v219, v127 offset:304
	ds_load_u8 v196, v127 offset:320
	ds_load_u8 v147, v127 offset:336
	ds_load_u8 v4, v127 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v9, v127 offset:1664
	ds_load_u8 v10, v127 offset:1536
	ds_load_u8 v4, v127 offset:1520
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v10, v127 offset:1920
	ds_load_u8 v11, v127 offset:1792
	ds_load_u8 v4, v127 offset:1776
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:1904
	v_lshl_or_b32 v24, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v11, v127 offset:1024
	ds_load_u8 v12, v127 offset:1152
	ds_load_u8 v4, v127 offset:1136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v12, v127 offset:1408
	ds_load_u8 v15, v127 offset:1280
	ds_load_u8 v4, v127 offset:1264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v15, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v4, v127 offset:1392
	v_lshl_or_b32 v23, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	scratch_load_b32 v4, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v5, v4
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v4, v4 offset:2048
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	scratch_load_b32 v4, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[9:10], v4 offset:4096
	scratch_load_b32 v4, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[13:14], v[9:10], v[227:234] neg_lo:[1,1,0]
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v7, v125
	ds_load_u8 v125, v127 offset:2016
	ds_load_u8 v58, v127 offset:1824
	ds_load_u8 v72, v127 offset:1840
	v_mov_b32_e32 v194, v94
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[11:12], v4 offset:4096
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v4, v15
	scratch_store_b32 off, v4, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v16
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v17
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v18
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v19
	scratch_store_b32 off, v4, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v20
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v21
	scratch_store_b32 off, v4, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_store_b32 off, v4, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v15, v127 offset:2688
	ds_load_u8 v16, v127 offset:2560
	ds_load_u8 v32, v127 offset:2576
	ds_load_u8 v4, v127 offset:2544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v33, v127 offset:2704
	ds_load_u8 v4, v127 offset:2672
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v32, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v18, v127 offset:2944
	ds_load_u8 v19, v127 offset:2816
	ds_load_u8 v15, v127 offset:2832
	ds_load_u8 v4, v127 offset:2800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v127 offset:2176
	ds_load_u8 v20, v127 offset:2048
	ds_load_u8 v34, v127 offset:2064
	ds_load_u8 v35, v127 offset:2192
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v16, v127 offset:2960
	ds_load_u8 v4, v127 offset:2928
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v127 offset:2432
	ds_load_u8 v21, v127 offset:2304
	ds_load_u8 v36, v127 offset:2320
	ds_load_u8 v237, v127 offset:2288
	ds_load_u8 v37, v127 offset:2448
	ds_load_u8 v14, v127 offset:2416
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v34, v35, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_lshl_or_b32 v16, v15, 16, v32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v36, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v19, v127 offset:3712
	ds_load_u8 v20, v127 offset:3584
	ds_load_u8 v49, v127 offset:3600
	ds_load_u8 v26, v127 offset:3616
	ds_load_u8 v211, v127 offset:3568
	ds_load_u8 v50, v127 offset:3728
	ds_load_u8 v40, v127 offset:3744
	ds_load_u8 v206, v127 offset:3696
	v_lshl_or_b32 v15, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[248:255], v[17:18], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v17, v247, v3, 0xc0c0004
	v_perm_b32 v18, v29, v28, 0xc0c0004
	v_dual_mov_b32 v3, v2 :: v_dual_mov_b32 v2, v195
	v_mov_b32_e32 v195, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v129, v0, 16, v17
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v127 offset:3968
	ds_load_u8 v21, v127 offset:3840
	ds_load_u8 v51, v127 offset:3856
	ds_load_u8 v41, v127 offset:3872
	ds_load_u8 v235, v127 offset:3824
	ds_load_u8 v52, v127 offset:3984
	ds_load_u8 v24, v127 offset:4000
	ds_load_u8 v236, v127 offset:3952
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v49, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v21, v20, 0xc0c0004
	ds_load_u8 v20, v127 offset:3200
	ds_load_u8 v23, v127 offset:3072
	ds_load_u8 v53, v127 offset:3088
	ds_load_u8 v42, v127 offset:3104
	ds_load_u8 v246, v127 offset:3040
	ds_load_u8 v54, v127 offset:3216
	ds_load_u8 v22, v127 offset:3232
	ds_load_u8 v241, v127 offset:3184
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v51, v52, 0xc0c0004
	v_lshl_or_b32 v39, v21, 16, v19
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v19, v31, v30, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v24, v41, v24, 0xc0c0004
	v_lshl_or_b32 v33, v33, 16, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v128, v19, 16, v18
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v23, v20, 0xc0c0004
	ds_load_u8 v25, v127 offset:3456
	ds_load_u8 v38, v127 offset:3328
	ds_load_u8 v56, v127 offset:3344
	ds_load_u8 v45, v127 offset:3360
	ds_load_u8 v243, v127 offset:3312
	ds_load_u8 v57, v127 offset:3472
	ds_load_u8 v20, v127 offset:3488
	ds_load_u8 v244, v127 offset:3440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v53, v54, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v42, v22, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v38, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v56, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v38, v25, 16, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v45, v20, 0xc0c0004
	v_lshl_or_b32 v32, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[248:255], v[38:39], v[11:12], v[248:255] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v47, v127 offset:1232
	ds_load_u8 v39, v127 offset:1248
	ds_load_u8 v75, v127 offset:1056
	ds_load_u8 v46, v127 offset:1872
	ds_load_u8 v38, v127 offset:1888
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v4, v248
	scratch_store_b32 off, v4, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v249
	scratch_store_b32 off, v4, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v250
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v251
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v125, 0xc0c0004
	v_mov_b32_e32 v125, v7
	v_mov_b32_e32 v7, v13
	v_mov_b32_e32 v156, v101
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v252
	v_mov_b32_e32 v166, v85
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v253
	scratch_store_b32 off, v4, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v254
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v127 offset:1552
	ds_load_u8 v17, v127 offset:1680
	ds_load_u8 v27, v127 offset:1696
	ds_load_u8 v23, v127 offset:1712
	ds_load_u8 v126, v127 offset:1728
	ds_load_u8 v124, v127 offset:1744
	ds_load_u8 v249, v127 offset:1760
	ds_load_u8 v28, v127 offset:1568
	ds_load_u8 v43, v127 offset:1584
	ds_load_u8 v30, v127 offset:1600
	ds_load_u8 v123, v127 offset:1616
	ds_load_u8 v254, v127 offset:1632
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v4, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v4, v255
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	ds_load_u8 v17, v127 offset:1808
	ds_load_u8 v18, v127 offset:1936
	ds_load_u8 v55, v127 offset:1952
	ds_load_u8 v44, v127 offset:1968
	ds_load_u8 v31, v127 offset:1984
	ds_load_u8 v29, v127 offset:2000
	scratch_store_b32 off, v4, off offset:304 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v17, v18, 0xc0c0004
	ds_load_u8 v18, v127 offset:1040
	ds_load_u8 v19, v127 offset:1168
	ds_load_u8 v73, v127 offset:1184
	ds_load_u8 v74, v127 offset:1200
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v58, v55, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v97, v127 offset:2352
	ds_load_u8 v151, v127 offset:2368
	ds_load_u8 v153, v127 offset:2384
	ds_load_u8 v58, v127 offset:2400
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v61, v127 offset:1088
	ds_load_u8 v17, v127 offset:1104
	ds_load_u8 v25, v127 offset:1120
	v_lshl_or_b32 v136, v64, 16, v0
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v29, v46, v29, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v65, v18, v19, 0xc0c0004
	ds_load_u8 v67, v127 offset:1424
	ds_load_u8 v78, v127 offset:1440
	ds_load_u8 v79, v127 offset:1456
	ds_load_u8 v62, v127 offset:1472
	ds_load_u8 v18, v127 offset:1488
	ds_load_u8 v21, v127 offset:1504
	ds_load_u8 v80, v127 offset:1312
	ds_load_u8 v48, v127 offset:1360
	ds_load_u8 v19, v127 offset:1376
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v17, v47, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v25, v25, v39, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v66, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v66, 16, v65
	v_wmma_i32_16x16x16_iu4 v[64:71], v[128:129], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v48, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v21, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[64:71], v[135:136], v[11:12], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v46, 16, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v4, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v65
	v_cvt_f32_i32_e32 v140, v66
	v_cvt_f32_i32_e32 v139, v67
	v_cvt_f32_i32_e32 v135, v68
	v_cvt_f32_i32_e32 v128, v69
	v_cvt_f32_i32_e32 v138, v70
	v_cvt_f32_i32_e32 v136, v71
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[15:16], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v15, v198, v197, 0xc0c0004
	v_perm_b32 v16, v238, v103, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v101, v127 offset:3264
	ds_load_u8 v159, v127 offset:3280
	ds_load_u8 v103, v127 offset:3296
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v32, v240, v239, 0xc0c0004
	v_perm_b32 v33, v245, v242, 0xc0c0004
	v_lshl_or_b32 v16, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v180, v64
	v_cvt_f32_i32_e32 v255, v65
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v15, v33, 16, v32
	v_perm_b32 v32, v75, v73, 0xc0c0004
	v_perm_b32 v33, v80, v78, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v252, v66
	v_cvt_f32_i32_e32 v250, v67
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[15:16], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v27, v33, 16, v32
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v248, v68
	v_cvt_f32_i32_e32 v247, v69
	v_cvt_f32_i32_e32 v253, v70
	v_cvt_f32_i32_e32 v251, v71
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[27:28], v[11:12], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v32, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v53
	v_cvt_f32_i32_e32 v36, v54
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v16, v127 offset:2592
	ds_load_u8 v50, v127 offset:2720
	ds_load_u8 v53, v127 offset:2736
	ds_load_u8 v73, v127 offset:2752
	ds_load_u8 v75, v127 offset:2768
	ds_load_u8 v49, v127 offset:2784
	ds_load_u8 v54, v127 offset:2608
	ds_load_u8 v78, v127 offset:2624
	ds_load_u8 v80, v127 offset:2640
	ds_load_u8 v15, v127 offset:2656
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v28, v55
	v_cvt_f32_i32_e32 v27, v56
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v85, v127 offset:2864
	ds_load_u8 v223, v127 offset:2880
	ds_load_u8 v222, v127 offset:2896
	ds_load_u8 v52, v127 offset:2912
	ds_load_u8 v88, v127 offset:2224
	ds_load_u8 v226, v127 offset:2240
	ds_load_u8 v225, v127 offset:2256
	ds_load_u8 v55, v127 offset:2272
	ds_load_u8 v91, v127 offset:2096
	ds_load_u8 v220, v127 offset:2112
	ds_load_u8 v221, v127 offset:2128
	ds_load_u8 v56, v127 offset:2144
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v16, v50, 0xc0c0004
	ds_load_u8 v50, v127 offset:2848
	ds_load_u8 v51, v127 offset:2976
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v15, v49, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v91, v88, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v127 offset:2080
	ds_load_u8 v57, v127 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v51, v57, 0xc0c0004
	ds_load_u8 v51, v127 offset:2336
	ds_load_u8 v65, v127 offset:2464
	ds_load_u8 v94, v127 offset:2480
	ds_load_u8 v188, v127 offset:2496
	ds_load_u8 v130, v127 offset:2512
	ds_load_u8 v57, v127 offset:2528
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v51, v65, 0xc0c0004
	v_lshl_or_b32 v51, v50, 16, v16
	v_perm_b32 v16, v26, v40, 0xc0c0004
	v_lshl_or_b32 v40, v20, 16, v22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v20, v215, v214, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v50, v65, 16, v64
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v22, v217, v216, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v41, v24, 16, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v16, v179, v177, 0xc0c0004
	v_perm_b32 v24, v219, v218, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[50:51], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v97, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v58, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[64:71], v[40:41], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v41, v20, 16, v16
	v_perm_b32 v16, v43, v23, 0xc0c0004
	v_perm_b32 v20, v72, v44, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v43, v85, v82, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v40, v24, 16, v22
	v_perm_b32 v22, v77, v74, 0xc0c0004
	v_perm_b32 v24, v81, v79, 0xc0c0004
	v_lshl_or_b32 v23, v20, 16, v16
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v16, v54, v53, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v245, v64
	v_cvt_f32_i32_e32 v242, v65
	v_cvt_f32_i32_e32 v239, v66
	v_cvt_f32_i32_e32 v5, v67
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v44, v43, 16, v16
	v_lshl_or_b32 v43, v50, 16, v45
	ds_load_u8 v16, v127 offset:3632
	ds_load_u8 v45, v127 offset:3760
	ds_load_u8 v72, v127 offset:3776
	ds_load_u8 v74, v127 offset:3792
	ds_load_u8 v77, v127 offset:3808
	ds_load_u8 v79, v127 offset:3648
	ds_load_u8 v81, v127 offset:3664
	ds_load_u8 v82, v127 offset:3680
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v198, v68
	v_cvt_f32_i32_e32 v197, v69
	v_cvt_f32_i32_e32 v240, v70
	v_cvt_f32_i32_e32 v238, v71
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v22, v24, 16, v22
	v_wmma_i32_16x16x16_iu4 v[64:71], v[40:41], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[22:23], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v16, v45, 0xc0c0004
	ds_load_u8 v45, v127 offset:4016
	ds_load_u8 v50, v127 offset:3888
	ds_load_u8 v85, v127 offset:3904
	ds_load_u8 v88, v127 offset:3920
	ds_load_u8 v91, v127 offset:3936
	ds_load_u8 v94, v127 offset:4032
	ds_load_u8 v97, v127 offset:4048
	ds_load_u8 v154, v127 offset:4064
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v20, v64
	v_cvt_f32_i32_e32 v23, v65
	v_cvt_f32_i32_e32 v24, v66
	v_cvt_f32_i32_e32 v22, v67
	v_cvt_f32_i32_e32 v40, v68
	v_cvt_f32_i32_e32 v26, v69
	v_cvt_f32_i32_e32 v42, v70
	v_cvt_f32_i32_e32 v41, v71
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[43:44], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v43, v189, v187, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v50, v45, 0xc0c0004
	ds_load_u8 v50, v127 offset:3120
	ds_load_u8 v51, v127 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v127 offset:3376
	ds_load_u8 v53, v127 offset:3504
	ds_load_u8 v175, v127 offset:3520
	ds_load_u8 v174, v127 offset:3536
	ds_load_u8 v0, v127 offset:3552
	ds_load_u8 v168, v127 offset:3392
	ds_load_u8 v178, v127 offset:3408
	ds_load_u8 v143, v127 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v51, v53, 0xc0c0004
	v_lshl_or_b32 v51, v45, 16, v16
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v16, v163, v162, 0xc0c0004
	v_perm_b32 v45, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v50, v53, 16, v50
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v44, v43, 16, v16
	v_perm_b32 v16, v30, v126, 0xc0c0004
	v_perm_b32 v30, v59, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[64:71], v[50:51], v[11:12], v[64:71] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v50, v196, v192, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v219, v64
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v43, v50, 16, v45
	v_perm_b32 v45, v61, v60, 0xc0c0004
	v_perm_b32 v50, v63, v62, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v218, v65
	v_cvt_f32_i32_e32 v216, v66
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v30, v50, 16, v45
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v43, v220, v226, 0xc0c0004
	v_perm_b32 v44, v151, v188, 0xc0c0004
	v_perm_b32 v45, v104, v101, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v214, v67
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[30:31], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v30, v78, v73, 0xc0c0004
	v_perm_b32 v31, v223, v83, 0xc0c0004
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v179, v68
	v_cvt_f32_i32_e32 v177, v69
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v192, v59
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v168, v175, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v44, 16, v43
	v_perm_b32 v43, v79, v72, 0xc0c0004
	v_perm_b32 v44, v85, v94, 0xc0c0004
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v191, v60
	v_cvt_f32_i32_e32 v16, v61
	v_cvt_f32_i32_e32 v196, v62
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v50, v64
	v_cvt_f32_i32_e32 v54, v65
	v_cvt_f32_i32_e32 v53, v66
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v44, v44, 16, v43
	v_lshl_or_b32 v43, v59, 16, v45
	v_wmma_i32_16x16x16_iu4 v[59:66], v[30:31], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v217, v70
	v_cvt_f32_i32_e32 v215, v71
	v_mov_b32_e32 v175, v176
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:200
	scratch_load_b32 v44, off, off offset:204
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v190, v59
	v_cvt_f32_i32_e32 v189, v60
	v_cvt_f32_i32_e32 v163, v61
	v_cvt_f32_i32_e32 v126, v62
	v_cvt_f32_i32_e32 v31, v63
	v_cvt_f32_i32_e32 v30, v64
	v_cvt_f32_i32_e32 v187, v65
	v_cvt_f32_i32_e32 v162, v66
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:272
	scratch_load_b32 v45, off, off offset:276
	s_waitcnt vmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:280
	scratch_load_b32 v59, off, off offset:284
	v_lshl_or_b32 v44, v44, 16, v43
	s_waitcnt vmcnt(0)
	v_perm_b32 v45, v59, v45, 0xc0c0004
	v_perm_b32 v59, v147, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v43, v59, 16, v45
	v_perm_b32 v45, v123, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[59:66], v[43:44], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v29, 16, v45
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v29, v221, v225, 0xc0c0004
	v_perm_b32 v43, v153, v130, 0xc0c0004
	v_perm_b32 v45, v172, v159, 0xc0c0004
	v_mov_b32_e32 v172, v200
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[59:66], v[17:18], v[11:12], v[59:66] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v17, v80, v75, 0xc0c0004
	v_perm_b32 v18, v222, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v59, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v18, v18, 16, v17
	v_lshl_or_b32 v17, v43, 16, v29
	v_perm_b32 v29, v81, v74, 0xc0c0004
	v_perm_b32 v43, v88, v97, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v61, v178, v174, 0xc0c0004
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v48, v62
	v_cvt_f32_i32_e32 v69, v63
	v_cvt_f32_i32_e32 v60, v64
	v_cvt_f32_i32_e32 v70, v65
	v_cvt_f32_i32_e32 v71, v66
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v44, v43, 16, v29
	v_lshl_or_b32 v43, v61, 16, v45
	v_wmma_i32_16x16x16_iu4 v[61:68], v[17:18], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:192
	scratch_load_b32 v18, off, off offset:196
	v_mov_b32_e32 v174, v184
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[61:68], v[43:44], v[11:12], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v148, v61
	v_cvt_f32_i32_e32 v147, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v63
	v_cvt_f32_i32_e32 v44, v64
	v_cvt_f32_i32_e32 v43, v65
	v_cvt_f32_i32_e32 v29, v66
	v_cvt_f32_i32_e32 v124, v67
	v_cvt_f32_i32_e32 v45, v68
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:244
	scratch_load_b32 v61, off, off offset:248
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v61, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:252
	scratch_load_b32 v62, off, off offset:256
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v62, off, off offset:260
	scratch_load_b32 v63, off, off offset:264
	s_waitcnt vmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v62, 16, v61
	v_perm_b32 v61, v254, v249, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v61
	v_lshl_or_b32 v38, v19, 16, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[17:18], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v17, v52, v246, 0xc0c0004
	v_perm_b32 v19, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v143, v0, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[38:39], v[11:12], v[61:68] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v18, v17, 16, v15
	v_lshl_or_b32 v17, v21, 16, v19
	v_perm_b32 v19, v91, v154, 0xc0c0004
	v_mov_b32_e32 v91, v195
	v_dual_mov_b32 v195, v2 :: v_dual_mov_b32 v2, v3
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:212
	scratch_load_b32 v3, off, off offset:216
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v15, v82, v77, 0xc0c0004
	v_perm_b32 v21, v173, v103, 0xc0c0004
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v72, v61
	v_cvt_f32_i32_e32 v73, v62
	v_cvt_f32_i32_e32 v74, v63
	v_cvt_f32_i32_e32 v75, v64
	v_cvt_f32_i32_e32 v78, v65
	v_cvt_f32_i32_e32 v79, v66
	v_cvt_f32_i32_e32 v80, v67
	v_cvt_f32_i32_e32 v81, v68
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v39, v19, 16, v15
	v_lshl_or_b32 v38, v25, 16, v21
	v_wmma_i32_16x16x16_iu4 v[61:68], v[17:18], v[9:10], v[227:234] neg_lo:[1,1,0]
	v_mov_b32_e32 v101, v156
	v_mov_b32_e32 v97, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[38:39], v[11:12], v[61:68] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v39, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v38, v62
	v_cvt_f32_i32_e32 v21, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v64
	v_cvt_f32_i32_e32 v17, v65
	v_cvt_f32_i32_e32 v15, v66
	v_cvt_f32_i32_e32 v25, v67
	v_cvt_f32_i32_e32 v18, v68
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:236
	scratch_load_b32 v3, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v52, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v3, off, off offset:188
	v_lshl_or_b32 v55, v52, 16, v49
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:208
	scratch_load_b32 v3, off, off offset:300
	s_waitcnt vmcnt(0)
	v_perm_b32 v57, v0, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v3, off, off offset:296
	v_lshl_or_b32 v56, v57, 16, v56
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v0, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v3, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v52, v3, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:220
	scratch_load_b32 v3, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v0, v3, 0xc0c0004
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v0
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v77, v0 offset:2048
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_perm_b32 v61, v0, v57, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v57, v52, 16, v49
	v_lshl_or_b32 v58, v61, 16, v58
	v_wmma_i32_16x16x16_iu4 v[61:68], v[55:56], v[9:10], v[227:234] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_perm_b32 v55, v76, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[57:58], v[11:12], v[61:68] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v49, v61
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v52, v62
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v236, v77, 0xc0c0004
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v57, v63
	v_cvt_f32_i32_e32 v58, v64
	v_cvt_f32_i32_e32 v82, v65
	v_cvt_f32_i32_e32 v83, v66
	v_cvt_f32_i32_e32 v84, v67
	v_cvt_f32_i32_e32 v85, v68
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:368
	scratch_load_b32 v3, off, off offset:380
	v_lshl_or_b32 v13, v14, 16, v55
	v_perm_b32 v55, v241, v243, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v0, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:268
	scratch_load_b32 v3, off, off offset:376
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v3, v0, 0xc0c0004
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:180
	scratch_load_b32 v3, off, off offset:400
	scratch_load_b32 v130, off, off offset:164
	v_mov_b32_e32 v94, v194
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v14, v61, 16, v56
	v_perm_b32 v56, v244, v211, 0xc0c0004
	v_perm_b32 v61, v206, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v55, v56, 16, v55
	v_lshl_or_b32 v56, v62, 16, v61
	v_wmma_i32_16x16x16_iu4 v[61:68], v[13:14], v[9:10], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[55:56], v[11:12], v[61:68] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v55, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v56, v62
	v_cvt_f32_i32_e32 v103, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v64
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v11, v66
	v_cvt_f32_i32_e32 v12, v67
	v_cvt_f32_i32_e32 v14, v68
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v14, v13, v14
	v_mul_f32_e32 v10, v13, v10
	v_mul_f32_e32 v12, v13, v12
	v_mul_f32_e32 v11, v13, v11
	v_mul_f32_e32 v9, v13, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v62, s6, v3
	s_clause 0x7
	buffer_load_u16 v63, v62, s[40:43], 0 offen
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:8
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:12
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:16
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:20
	buffer_load_u16 v76, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v77, v62, s[40:43], 0 offen offset:28
	v_mov_b32_e32 v104, v169
	v_mov_b32_e32 v88, v149
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s6, s6, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v101, v61, v63
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v64
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v102, v61, v63 :: v_dual_lshlrev_b32 v63, 16, v65
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v97, v61, v63
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v63, 16, v66
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v98, v61, v63
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v63, 16, v67
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v99, v61, v63
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v63, 16, v68
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v100, v61, v63 :: v_dual_lshlrev_b32 v63, 16, v76
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v95, v61, v63
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v63, 16, v77
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v13, v0
	v_dual_mov_b32 v77, v207 :: v_dual_mul_f32 v0, v13, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v207, v6 :: v_dual_fmac_f32 v96, v61, v63
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v61, v62, s[40:43], 0 offen offset:32
	buffer_load_u16 v63, v62, s[40:43], 0 offen offset:36
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:40
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:44
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:48
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:52
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:56
	buffer_load_u16 v76, v62, s[40:43], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v61, 16, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v94, v0, v61
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v13, v129 :: v_dual_lshlrev_b32 v61, 16, v63
	v_mov_b32_e32 v129, v212
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v93, v0, v61 :: v_dual_mul_f32 v0, v13, v140
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v61, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v90, v0, v61
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v13, v139 :: v_dual_lshlrev_b32 v61, 16, v65
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v89, v0, v61 :: v_dual_mul_f32 v0, v13, v135
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v61, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v91, v0, v61 :: v_dual_mul_f32 v0, v13, v128
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v128, v213 :: v_dual_lshlrev_b32 v61, 16, v67
	v_fmac_f32_e32 v92, v0, v61
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v13, v138 :: v_dual_lshlrev_b32 v61, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v87, v0, v61 :: v_dual_mul_f32 v0, v13, v136
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v76
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v88, v0, v61
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v33
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v33, v62, s[40:43], 0 offen offset:64
	buffer_load_u16 v61, v62, s[40:43], 0 offen offset:68
	buffer_load_u16 v63, v62, s[40:43], 0 offen offset:72
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:76
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:80
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:84
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:88
	buffer_load_u16 v68, v62, s[40:43], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v86, v0, v33
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v32, 16, v61
	v_mov_b32_e32 v61, v137
	v_mov_b32_e32 v137, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v77, v0, v32 :: v_dual_mul_f32 v0, v13, v35
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v32, 16, v63
	v_dual_mov_b32 v63, v142 :: v_dual_mov_b32 v142, v116
	v_dual_mov_b32 v116, v117 :: v_dual_mov_b32 v117, v118
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v207, v0, v32 :: v_dual_mul_f32 v0, v13, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v64
	v_dual_mov_b32 v118, v119 :: v_dual_mov_b32 v119, v120
	v_dual_mov_b32 v120, v121 :: v_dual_mov_b32 v121, v122
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v2, v0, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:160
	scratch_load_b32 v206, off, off offset:156
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v32, 16, v65
	v_mov_b32_e32 v65, v155
	v_dual_mov_b32 v155, v134 :: v_dual_mov_b32 v64, v144
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v0, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v36
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v32, 16, v66
	v_dual_mov_b32 v66, v157 :: v_dual_mov_b32 v157, v132
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v1, v0, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v28
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v28, 16, v67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v205, v0, v28 :: v_dual_mul_f32 v0, v13, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v27, 16, v68
	v_mov_b32_e32 v67, v158
	v_mov_b32_e32 v68, v170
	v_mov_b32_e32 v170, v113
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v206, v0, v27
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v20
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:96
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:100
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:104
	buffer_load_u16 v32, v62, s[40:43], 0 offen offset:108
	buffer_load_u16 v33, v62, s[40:43], 0 offen offset:112
	buffer_load_u16 v34, v62, s[40:43], 0 offen offset:116
	buffer_load_u16 v35, v62, s[40:43], 0 offen offset:120
	buffer_load_u16 v36, v62, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v113, v114 :: v_dual_lshlrev_b32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v203, v0, v20 :: v_dual_mul_f32 v0, v13, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v204, v0, v20
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v24
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v7, v0, v20 :: v_dual_mul_f32 v0, v13, v22
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v112, v0, v20
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v40
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v40, off, off offset:132
	scratch_load_b32 v33, off, off offset:108
	scratch_load_b32 v140, off, off offset:76
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v224, v0, v20
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v26
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v202, v0, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:140
	scratch_load_b32 v34, off, off offset:112
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v42
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v42, off, off offset:392
	scratch_load_b32 v188, off, off offset:152
	scratch_load_b32 v173, off, off offset:148
	scratch_load_b32 v134, off, off offset:136
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v35, v0, v20 :: v_dual_mul_f32 v0, v13, v41
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v20, 16, v36
	scratch_load_b32 v36, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v0, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:128
	buffer_load_u16 v22, v62, s[40:43], 0 offen offset:132
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:136
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:140
	buffer_load_u16 v26, v62, s[40:43], 0 offen offset:144
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:148
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:152
	buffer_load_u16 v32, v62, s[40:43], 0 offen offset:156
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v192
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v115, v0, v20 :: v_dual_mul_f32 v0, v13, v191
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v116, v0, v20
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v16
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v119, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v196
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v24
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v120, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v51
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v51, off, off offset:116
	scratch_load_b32 v212, off, off offset:104
	scratch_load_b32 v143, off, off offset:92
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v117, v0, v16 :: v_dual_mul_f32 v0, v13, v50
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:84
	scratch_load_b32 v159, off, off offset:80
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v118, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v54
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v28
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:120
	scratch_load_b32 v168, off, off offset:128
	scratch_load_b32 v114, off, off offset:124
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v121, v0, v16 :: v_dual_mul_f32 v0, v13, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v32
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:100
	scratch_load_b32 v169, off, off offset:96
	scratch_load_b32 v211, off, off offset:88
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v131, v0, v16 :: v_dual_mul_f32 v0, v13, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:160
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:164
	buffer_load_u16 v22, v62, s[40:43], 0 offen offset:168
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:172
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:176
	buffer_load_u16 v26, v62, s[40:43], 0 offen offset:180
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:184
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v47, v167 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v125, v0, v16 :: v_dual_mul_f32 v0, v13, v46
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v128, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v59
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v59, v199 :: v_dual_lshlrev_b32 v16, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v40, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v48
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v23
	v_dual_mov_b32 v46, v185 :: v_dual_mov_b32 v185, v186
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v141, v0, v16 :: v_dual_mul_f32 v0, v13, v69
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v69, v181 :: v_dual_lshlrev_b32 v16, 16, v24
	v_dual_mov_b32 v48, v146 :: v_dual_mov_b32 v181, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v60
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v26
	v_dual_mov_b32 v178, v165 :: v_dual_fmac_f32 v129, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v70
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v60, v182 :: v_dual_fmac_f32 v67, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v71
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v28
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v68, v0, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:192
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:196
	buffer_load_u16 v22, v62, s[40:43], 0 offen offset:200
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:204
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:208
	buffer_load_u16 v26, v62, s[40:43], 0 offen offset:212
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:216
	buffer_load_u16 v28, v62, s[40:43], 0 offen offset:220
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v72
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v132, v183 :: v_dual_fmac_f32 v65, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v73
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v66, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v74
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v61, v0, v16 :: v_dual_mul_f32 v0, v13, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v60, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v78
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v63, v0, v16 :: v_dual_mul_f32 v0, v13, v79
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v26
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v64, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v80
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v54, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v81
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v28
	v_mov_b32_e32 v70, v210
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v28, v13, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:68
	scratch_load_b32 v213, off, off offset:64
	v_mov_b32_e32 v81, v209
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v59, v0, v16
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v0, v62, s[40:43], 0 offen offset:224
	buffer_load_u16 v16, v62, s[40:43], 0 offen offset:228
	buffer_load_u16 v20, v62, s[40:43], 0 offen offset:232
	buffer_load_u16 v22, v62, s[40:43], 0 offen offset:236
	buffer_load_u16 v23, v62, s[40:43], 0 offen offset:240
	buffer_load_u16 v24, v62, s[40:43], 0 offen offset:244
	buffer_load_u16 v26, v62, s[40:43], 0 offen offset:248
	buffer_load_u16 v27, v62, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v53, v28, v0
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v52
	scratch_load_b32 v52, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v52, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v57
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v16, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v49, v0, v16 :: v_dual_mul_f32 v0, v13, v58
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v16, 16, v22
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v48, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v82
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v16, 16, v23
	v_mov_b32_e32 v82, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v50, v0, v16
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v83
	v_dual_mov_b32 v83, v161 :: v_dual_lshlrev_b32 v16, 16, v24
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v51, v0, v16 :: v_dual_lshlrev_b32 v16, 16, v26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v84
	v_mov_b32_e32 v84, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v46, v0, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v13, v85
	v_dual_mov_b32 v85, v166 :: v_dual_lshlrev_b32 v16, 16, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v47, v0, v16 :: v_dual_add_nc_u32 v16, s1, v3
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:28
	scratch_load_b32 v3, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s1, s1, s3
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v34, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v33, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v212, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v130, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v26
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v195, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v201, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v70, v0, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v193, v0, v20
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:60
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v180
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v181, v0, v20 :: v_dual_mul_f32 v0, v13, v255
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v174, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v252
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v171, v0, v20 :: v_dual_mul_f32 v0, v13, v250
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v188, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v248
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v133, v0, v20 :: v_dual_mul_f32 v0, v13, v247
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v170, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v253
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v173, v0, v20 :: v_dual_mul_f32 v0, v13, v251
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v157, v0, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:92
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v245
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v152, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v242
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v155, v0, v20 :: v_dual_mul_f32 v0, v13, v239
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v132, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v5
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v142, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v198
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v137, v0, v20 :: v_dual_mul_f32 v0, v13, v197
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v168, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v240
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v114, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v238
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v172, v0, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:124
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v219
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v169, v0, v20 :: v_dual_mul_f32 v0, v13, v218
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v211, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v216
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v159, v0, v20 :: v_dual_mul_f32 v0, v13, v214
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v143, v0, v20 :: v_dual_mul_f32 v0, v13, v179
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v178, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v177
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v213, v0, v20 :: v_dual_mul_f32 v0, v13, v217
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v185, v0, v20 :: v_dual_mul_f32 v0, v13, v215
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v175, v0, v20 :: v_dual_mul_f32 v0, v13, v190
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v32, v16, s[40:43], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v111, v0, v20 :: v_dual_mul_f32 v0, v13, v189
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v134, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v163
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v109, v0, v20 :: v_dual_mul_f32 v0, v13, v126
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v110, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v31
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v26
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v31, off, off offset:32
	scratch_load_b32 v151, off, off offset:44
	scratch_load_b32 v150, off, off offset:40
	scratch_load_b32 v149, off, off offset:36
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v107, v0, v20 :: v_dual_mul_f32 v0, v13, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v113, v0, v20 :: v_dual_mul_f32 v0, v13, v187
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v106, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v162
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v32
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v32, off, off offset:60
	scratch_load_b32 v156, off, off offset:56
	scratch_load_b32 v154, off, off offset:52
	scratch_load_b32 v153, off, off offset:48
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v108, v0, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v30, v16, s[40:43], 0 offen offset:188
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v148
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v104, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v147
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v105, v0, v20 :: v_dual_mul_f32 v0, v13, v123
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v32, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v44
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v140, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v43
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v154, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v29
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v156, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v124
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v31, v0, v20 :: v_dual_mul_f32 v0, v13, v45
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v30
	scratch_load_b32 v30, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v153, v0, v20 :: v_dual_mul_f32 v0, v13, v39
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v20, v16, s[40:43], 0 offen offset:192
	buffer_load_u16 v22, v16, s[40:43], 0 offen offset:196
	buffer_load_u16 v23, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v24, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v26, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v27, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v28, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v29, v16, s[40:43], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v150, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v38
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v22
	scratch_load_b32 v22, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v151, v0, v20 :: v_dual_mul_f32 v0, v13, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v23
	scratch_load_b32 v23, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v30, v0, v20
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v13, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:16
	scratch_load_b32 v20, off, off
	v_dual_fmac_f32 v149, v0, v19 :: v_dual_mul_f32 v0, v13, v17
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:20
	scratch_load_b32 v21, off, off offset:4
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v26, v0, v17
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v0, v13, v15
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v15, 16, v27
	scratch_load_b32 v27, off, off offset:24 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v17, 16, v29
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v27, v0, v15 :: v_dual_mul_f32 v0, v13, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v15, 16, v28
	scratch_load_b32 v25, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v23, v0, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v16, s[40:43], 0 offen offset:224
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v13, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v24, v15, v17
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x6
	buffer_load_u16 v15, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v148, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v76, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v144, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v145, v16, s[40:43], 0 offen offset:244
	buffer_load_u16 v146, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v147, v16, s[40:43], 0 offen offset:252
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v13, v55
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v21, v16, v0
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v13, v56 :: v_dual_lshlrev_b32 v19, 16, v147
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v16, 16, v144
	v_lshlrev_b32_e32 v17, 16, v145
	v_lshlrev_b32_e32 v18, 16, v146
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v22, v0, v15
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v15, 16, v148
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v83, v14, v19
	scratch_load_b32 v14, off, off offset:388 ; 4-byte Folded Reload
	v_dual_fmac_f32 v84, v9, v16 :: v_dual_fmac_f32 v81, v11, v17
	v_fmac_f32_e32 v82, v12, v18
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e32 vcc_lo, s12, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v0, v13, v103 :: v_dual_lshlrev_b32 v13, 16, v76
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v85, v0, v15 :: v_dual_fmac_f32 v20, v10, v13
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_dual_cndmask_b32 v0, 0x80000000, v8 :: v_dual_cndmask_b32 v15, 0x80000000, v3
	s_clause 0x1
	buffer_load_b32 v0, v0, s[36:39], 0 offen
	buffer_load_b32 v15, v15, s[36:39], 0 offen
	scratch_store_b32 off, v20, off         ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:384
	scratch_load_b32 v10, off, off
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v4, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v25, 2, v25
	v_add_nc_u32_e32 v8, s49, v8
	v_add_nc_u32_e32 v3, s49, v3
	s_cmp_lg_u32 s48, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v13, v4 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v14, v0, v15 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v41, off, off offset:424
	scratch_load_b32 v78, off, off offset:428
	scratch_load_b32 v9, off, off offset:432
	scratch_load_b32 v3, off, off offset:436
	scratch_load_b32 v5, off, off offset:440
	v_or_b32_e32 v4, 0x770, v42
	v_dual_mov_b32 v44, v129 :: v_dual_mov_b32 v55, v128
	v_dual_mov_b32 v56, v121 :: v_dual_mov_b32 v57, v131
	v_dual_mov_b32 v58, v120 :: v_dual_mov_b32 v183, v117
	v_dual_mov_b32 v62, v119 :: v_dual_mov_b32 v71, v118
	v_dual_mov_b32 v72, v115 :: v_dual_mov_b32 v73, v116
	v_dual_mov_b32 v74, v35 :: v_dual_mov_b32 v75, v36
	v_dual_mov_b32 v79, v112 :: v_dual_mov_b32 v80, v7
	v_dual_mov_b32 v194, v224 :: v_dual_mov_b32 v43, v1
	v_dual_mov_b32 v38, v2 :: v_dual_mov_b32 v103, v113
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v45, v125 :: v_dual_and_b32 v6, 8, v41
.LBB0_7:                                ; %Flow1170
	.loc	1 168 26 is_stmt 1              ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v0, s7, v42
	s_mul_i32 s3, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s1, s0, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s3, s3, s1
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v27, off offset:24
	scratch_store_b32 off, v10, off
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v30, off offset:28
	scratch_store_b32 off, v26, off offset:20
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v23, off offset:12
	scratch_store_b32 off, v22, off offset:8
	scratch_store_b32 off, v21, off offset:4
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v0, s3, v0, 1
	v_dual_mov_b32 v165, v34 :: v_dual_mov_b32 v164, v33
	v_dual_mov_b32 v145, v130 :: v_dual_mov_b32 v146, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cmp_ne_u32_e64 s0, 1, v2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v248, 0, v5
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v247, 0, v4
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v208, v0, s[28:31], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v0, 0x88, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v250, 0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v0, v0, v9
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v242, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v167, 0
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v0, v0, 8, 0
	ds_load_b64 v[11:12], v1 offset:4096
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_b64 v[9:10], v0 offset:4096
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v162, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v5, 0xfffffb10, v247
	v_add_nc_u32_e32 v6, 0xfffffa90, v247
	v_add_nc_u32_e32 v3, 0xfffffc10, v247
	v_add_nc_u32_e32 v4, 0xfffffb90, v247
	v_dual_mov_b32 v39, v37 :: v_dual_add_nc_u32 v0, 0xffffffa0, v247
	v_add_nc_u32_e32 v7, 0xfffffa10, v247
	v_add_nc_u32_e32 v8, 0xfffff990, v247
	v_add_nc_u32_e32 v13, 0xfffff910, v247
	v_add_nc_u32_e32 v14, 0xfffff890, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v30, 0xffffff10, v247
	v_add_nc_u32_e32 v31, 0xfffffe90, v247
	v_add_nc_u32_e32 v29, 0xffffff90, v247
	v_add_nc_u32_e32 v32, 0xfffffe10, v247
	v_add_nc_u32_e32 v23, 0xfffffb20, v247
	v_add_nc_u32_e32 v24, 0xfffffaa0, v247
	v_add_nc_u32_e32 v19, 0xfffffc20, v247
	v_add_nc_u32_e32 v20, 0xfffffba0, v247
	v_add_nc_u32_e32 v25, 0xfffffa20, v247
	v_add_nc_u32_e32 v26, 0xfffff9a0, v247
	v_add_nc_u32_e32 v27, 0xfffff920, v247
	v_add_nc_u32_e32 v28, 0xfffff8a0, v247
	v_add_nc_u32_e32 v1, 0xffffff20, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffda0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v2, 0xfffffea0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v14, v13, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffffc90, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v7, 0xfffffd90, v247
	v_add_nc_u32_e32 v8, 0xfffffd10, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v22, v3, 16, v5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffd20, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v21, v6, 16, v4
	ds_load_u8 v3, v30
	ds_load_u8 v4, v31
	ds_load_u8 v5, v29
	ds_load_u8 v6, v247 offset:16
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
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffca0, v247
	v_add_nc_u32_e32 v15, 0xfffffe20, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v31, v247 offset:32
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
	v_mov_b32_e32 v37, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v166, v13
	v_cvt_f32_i32_e32 v209, v14
	v_cvt_f32_i32_e32 v186, v15
	v_cvt_f32_i32_e32 v196, v16
	v_cvt_f32_i32_e32 v197, v17
	v_cvt_f32_i32_e32 v198, v18
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v167, v20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v0, 16, v23
	v_lshl_or_b32 v21, v25, 16, v24
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb30, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[9:10], v[13:20] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v179, v13
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffffab0, v247
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v161, v14
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v14, 0xfffffc30, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v180, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffbb0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v131, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff930, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v199, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffa30, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v177, v18
	v_cvt_f32_i32_e32 v116, v19
	v_cvt_f32_i32_e32 v184, v20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffff8b0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff9b0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v13, v13
	ds_load_u8 v16, v16
	ds_load_u8 v15, v15
	v_lshl_or_b32 v22, v14, 16, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffffb0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffeb0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xffffff30, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v21, v15, 16, v13
	ds_load_u8 v13, v16
	ds_load_u8 v14, v17
	ds_load_u8 v15, v247 offset:48
	ds_load_u8 v0, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffdb0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v14, 0xfffffd30, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v0, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffcb0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	v_lshl_or_b32 v24, v0, 16, v13
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb40, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffe30, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[23:24], v[9:10], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v182, v13
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffffac0, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v135, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v139, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffbc0, v247
	v_add_nc_u32_e32 v17, 0xfffff9c0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v13, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v138, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff8c0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	ds_load_u8 v17, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v115, v18
	v_cvt_f32_i32_e32 v129, v19
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v136, v20
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v13, 0xfffffc40, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffff940, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v24, v13, 16, v0
	ds_load_u8 v15, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff40, v247
	v_add_nc_u32_e32 v13, 0xfffffec0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffa40, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v13, 64, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffdc0, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v23, v16, 16, v15
	ds_load_u8 v13, v13
	ds_load_u8 v15, v247 offset:64
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffcc0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffd40, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v26, v13, 16, v0
	ds_load_u8 v15, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb50, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffe40, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v122, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffad0, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v200, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffbd0, v247
	v_add_nc_u32_e32 v18, 0xfffff9d0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v120, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff8d0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v128, v19
	v_cvt_f32_i32_e32 v130, v20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v123, v21
	v_cvt_f32_i32_e32 v119, v22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffc50, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff950, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff50, v247
	v_add_nc_u32_e32 v15, 0xfffffed0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffa50, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v15, 48, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffdd0, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v247 offset:80
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffcd0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffd50, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb60, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffe50, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffae0, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v126, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffbe0, v247
	v_add_nc_u32_e32 v18, 0xfffff9e0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v117, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff8e0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v118, v19
	v_cvt_f32_i32_e32 v124, v20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v34, v21
	v_cvt_f32_i32_e32 v39, v22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffc60, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff960, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff60, v247
	v_add_nc_u32_e32 v15, 0xfffffee0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffa60, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_subrev_nc_u32_e32 v15, 32, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffde0, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v247 offset:96
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffce0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffd60, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb70, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffe60, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v36, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffaf0, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v113, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffbf0, v247
	v_add_nc_u32_e32 v18, 0xfffff9f0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v32, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff8f0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	ds_load_u8 v18, v18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v33, v19
	v_cvt_f32_i32_e32 v35, v20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v27, v21
	v_cvt_f32_i32_e32 v30, v22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffc70, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff970, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xffffff70, v247
	v_add_nc_u32_e32 v15, 0xfffffef0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffa70, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, -16, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffdf0, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v15
	ds_load_u8 v16, v247 offset:112
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffcf0, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffd70, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v26, v15, 16, v0
	ds_load_u8 v16, v16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v0, 0xfffffb80, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffe70, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v28, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffb00, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v24, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffff900, v247
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v29, v16
	v_cvt_f32_i32_e32 v23, v18
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v18, 0xfffffa00, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v25, v19
	v_cvt_f32_i32_e32 v26, v20
	v_cvt_f32_i32_e32 v19, v21
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v18, v18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v20, v22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xfffffc00, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v15, v15
	ds_load_u8 v16, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffff980, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffa80, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	ds_load_u8 v76, v247
	ds_load_u8 v0, v248
	v_lshl_or_b32 v15, v18, 16, v17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v17, 0xfffffd00, v247
	v_add_nc_u32_e32 v18, 0xfffffe00, v247
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v15, 0xffffff80, v247
	v_add_nc_u32_e32 v16, 0xffffff00, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v76, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffd80, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v16, 0xfffffe80, v247
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v0, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v191, v1
	v_cvt_f32_i32_e32 v192, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v163, v3
	v_cvt_f32_i32_e32 v187, v4
	v_cvt_f32_i32_e32 v189, v5
	v_cvt_f32_i32_e32 v190, v6
	v_cvt_f32_i32_e32 v160, v7
	v_cvt_f32_i32_e32 v162, v8
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v116, off offset:236
	scratch_store_b32 off, v115, off offset:232
	scratch_store_b32 off, v139, off offset:228
	scratch_store_b32 off, v138, off offset:224
	scratch_store_b32 off, v136, off offset:220
	scratch_store_b32 off, v135, off offset:216
	scratch_store_b32 off, v122, off offset:212
	scratch_store_b32 off, v130, off offset:208
	scratch_store_b32 off, v129, off offset:204
	scratch_store_b32 off, v128, off offset:200
	scratch_store_b32 off, v120, off offset:196
	scratch_store_b32 off, v127, off offset:192
	scratch_store_b32 off, v119, off offset:188
	scratch_store_b32 off, v113, off offset:184
	scratch_store_b32 off, v126, off offset:180
	scratch_store_b32 off, v125, off offset:176
	scratch_store_b32 off, v124, off offset:172
	scratch_store_b32 off, v123, off offset:168
	scratch_store_b32 off, v118, off offset:164
	scratch_store_b32 off, v117, off offset:160
	scratch_store_b32 off, v112, off offset:156
	scratch_store_b32 off, v39, off offset:152
	scratch_store_b32 off, v36, off offset:148
	scratch_store_b32 off, v35, off offset:144
	scratch_store_b32 off, v34, off offset:140
	scratch_store_b32 off, v33, off offset:136
	scratch_store_b32 off, v32, off offset:132
	scratch_store_b32 off, v31, off offset:128
	scratch_store_b32 off, v30, off offset:124
	scratch_store_b32 off, v29, off offset:120
	scratch_store_b32 off, v28, off offset:116
	scratch_store_b32 off, v26, off offset:112
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v27, off offset:108
	scratch_store_b32 off, v25, off offset:104
	scratch_store_b32 off, v24, off offset:100
	scratch_store_b32 off, v23, off offset:96
	scratch_store_b32 off, v20, off offset:92
	scratch_store_b32 off, v19, off offset:88
	v_dual_mov_b32 v148, v102 :: v_dual_mov_b32 v147, v101
	v_dual_mov_b32 v144, v100 :: v_dual_mov_b32 v13, v99
	v_dual_mov_b32 v27, v98 :: v_dual_mov_b32 v30, 0
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v97, off offset:84
	scratch_store_b32 off, v96, off offset:80
	scratch_store_b32 off, v95, off offset:76
	scratch_store_b32 off, v94, off offset:72
	scratch_store_b32 off, v93, off offset:68
	scratch_store_b32 off, v92, off offset:64
	scratch_store_b32 off, v91, off offset:60
	scratch_store_b32 off, v90, off offset:56
	scratch_store_b32 off, v89, off offset:52
	scratch_store_b32 off, v88, off offset:48
	scratch_store_b32 off, v87, off offset:44
	scratch_store_b32 off, v86, off offset:40
	scratch_store_b32 off, v77, off offset:36
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v1, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v0, v247 offset:784
	ds_load_u8 v1, v247 offset:656
	ds_load_u8 v2, v247 offset:1040
	ds_load_u8 v3, v247 offset:912
	ds_load_u8 v4, v247 offset:272
	ds_load_u8 v5, v247 offset:144
	ds_load_u8 v6, v247 offset:528
	ds_load_u8 v7, v247 offset:400
	ds_load_u8 v15, v247 offset:160
	ds_load_u8 v8, v247 offset:1808
	ds_load_u8 v16, v247 offset:1680
	ds_load_u8 v17, v247 offset:2064
	ds_load_u8 v18, v247 offset:1936
	ds_load_u8 v19, v247 offset:1296
	ds_load_u8 v20, v247 offset:1168
	ds_load_u8 v21, v247 offset:1552
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
	ds_load_u8 v4, v247 offset:1424
	ds_load_u8 v33, v247 offset:1824
	ds_load_u8 v34, v247 offset:1696
	ds_load_u8 v35, v247 offset:2080
	ds_load_u8 v36, v247 offset:1952
	v_lshl_or_b32 v24, v1, 16, v0
	ds_load_u8 v0, v247 offset:800
	ds_load_u8 v22, v247 offset:672
	ds_load_u8 v28, v247 offset:1056
	ds_load_u8 v29, v247 offset:928
	ds_load_u8 v30, v247 offset:288
	ds_load_u8 v31, v247 offset:544
	ds_load_u8 v32, v247 offset:416
	v_dual_mov_b32 v77, v37 :: v_dual_mov_b32 v76, v38
	ds_load_u8 v38, v247 offset:1184
	ds_load_u8 v39, v247 offset:1568
	v_mov_b32_e32 v86, v85
	v_mov_b32_e32 v85, v81
	v_dual_mov_b32 v81, v78 :: v_dual_mov_b32 v78, v43
	v_mov_b32_e32 v43, v40
	ds_load_u8 v40, v247 offset:1440
	ds_load_u8 v37, v247 offset:1312
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v16, v16, v8, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v22, v0, 0xc0c0004
	v_lshl_or_b32 v23, v3, 16, v2
	v_perm_b32 v19, v4, v21, 0xc0c0004
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_lshl_or_b32 v26, v17, 16, v16
	v_lshl_or_b32 v25, v19, 16, v18
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v15, v30, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v32, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v28, 16, v0
	v_perm_b32 v0, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	v_perm_b32 v25, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v38, v37, 0xc0c0004
	v_perm_b32 v28, v40, v39, 0xc0c0004
	v_mov_b32_e32 v38, v76
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v242, v15
	v_cvt_f32_i32_e32 v139, v16
	v_cvt_f32_i32_e32 v136, v17
	v_cvt_f32_i32_e32 v138, v18
	v_cvt_f32_i32_e32 v30, v19
	v_cvt_f32_i32_e32 v135, v20
	v_cvt_f32_i32_e32 v130, v21
	v_cvt_f32_i32_e32 v29, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v25, 16, v0
	v_lshl_or_b32 v23, v28, 16, v26
	v_dual_mov_b32 v37, v77 :: v_dual_mov_b32 v40, v43
	v_dual_mov_b32 v43, v78 :: v_dual_mov_b32 v78, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[9:10], v[15:22] neg_lo:[1,1,0]
	v_mov_b32_e32 v81, v85
	v_mov_b32_e32 v85, v86
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v128, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v16
	v_cvt_f32_i32_e32 v123, v17
	v_cvt_f32_i32_e32 v126, v18
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:816
	ds_load_u8 v15, v247 offset:688
	ds_load_u8 v16, v247 offset:1072
	ds_load_u8 v17, v247 offset:944
	ds_load_u8 v18, v247 offset:176
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v254, v19
	v_cvt_f32_i32_e32 v76, v20
	v_cvt_f32_i32_e32 v249, v21
	v_cvt_f32_i32_e32 v253, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	ds_load_u8 v16, v247 offset:304
	ds_load_u8 v17, v247 offset:560
	ds_load_u8 v19, v247 offset:432
	v_lshl_or_b32 v24, v15, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v0, v247 offset:1840
	ds_load_u8 v15, v247 offset:1712
	ds_load_u8 v16, v247 offset:2096
	ds_load_u8 v17, v247 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	ds_load_u8 v16, v247 offset:1328
	ds_load_u8 v17, v247 offset:1200
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:1584
	ds_load_u8 v18, v247 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v125, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:832
	ds_load_u8 v15, v247 offset:704
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v127, v16
	v_cvt_f32_i32_e32 v118, v17
	v_cvt_f32_i32_e32 v124, v18
	v_cvt_f32_i32_e32 v252, v19
	v_cvt_f32_i32_e32 v255, v20
	v_cvt_f32_i32_e32 v245, v21
	v_cvt_f32_i32_e32 v251, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v247 offset:1088
	ds_load_u8 v16, v247 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:192
	ds_load_u8 v17, v247 offset:320
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v247 offset:1856
	ds_load_u8 v15, v247 offset:1728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	ds_load_u8 v17, v247 offset:576
	ds_load_u8 v18, v247 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v247 offset:2112
	ds_load_u8 v16, v247 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:1344
	ds_load_u8 v17, v247 offset:1216
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:1600
	ds_load_u8 v18, v247 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v244, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:848
	ds_load_u8 v15, v247 offset:720
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v246, v16
	v_cvt_f32_i32_e32 v241, v17
	v_cvt_f32_i32_e32 v243, v18
	v_cvt_f32_i32_e32 v239, v19
	v_cvt_f32_i32_e32 v240, v20
	v_cvt_f32_i32_e32 v235, v21
	v_cvt_f32_i32_e32 v238, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v247 offset:1104
	ds_load_u8 v16, v247 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:336
	ds_load_u8 v17, v247 offset:208
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v247 offset:1872
	ds_load_u8 v15, v247 offset:1744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:592
	ds_load_u8 v18, v247 offset:464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v247 offset:2128
	ds_load_u8 v16, v247 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:1360
	ds_load_u8 v17, v247 offset:1232
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:1616
	ds_load_u8 v18, v247 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v236, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:864
	ds_load_u8 v15, v247 offset:736
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v237, v16
	v_cvt_f32_i32_e32 v233, v17
	v_cvt_f32_i32_e32 v234, v18
	v_cvt_f32_i32_e32 v231, v19
	v_cvt_f32_i32_e32 v232, v20
	v_cvt_f32_i32_e32 v226, v21
	v_cvt_f32_i32_e32 v230, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v247 offset:1120
	ds_load_u8 v16, v247 offset:992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:352
	ds_load_u8 v17, v247 offset:224
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v247 offset:1888
	ds_load_u8 v15, v247 offset:1760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:608
	ds_load_u8 v18, v247 offset:480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v247 offset:2144
	ds_load_u8 v16, v247 offset:2016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:1376
	ds_load_u8 v17, v247 offset:1248
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:1632
	ds_load_u8 v18, v247 offset:1504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v227, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:880
	ds_load_u8 v15, v247 offset:752
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v229, v16
	v_cvt_f32_i32_e32 v225, v17
	v_cvt_f32_i32_e32 v228, v18
	v_cvt_f32_i32_e32 v222, v19
	v_cvt_f32_i32_e32 v224, v20
	v_cvt_f32_i32_e32 v219, v21
	v_cvt_f32_i32_e32 v223, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v247 offset:1136
	ds_load_u8 v16, v247 offset:1008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:368
	ds_load_u8 v17, v247 offset:240
	v_lshl_or_b32 v24, v15, 16, v0
	ds_load_u8 v0, v247 offset:1904
	ds_load_u8 v15, v247 offset:1776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:624
	ds_load_u8 v18, v247 offset:496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v17, 16, v16
	ds_load_u8 v15, v247 offset:2160
	ds_load_u8 v16, v247 offset:2032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:1392
	ds_load_u8 v17, v247 offset:1264
	v_lshl_or_b32 v26, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v247 offset:1648
	ds_load_u8 v18, v247 offset:1520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[15:22], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[25:26], v[9:10], v[15:22] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v220, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v0, v247 offset:896
	ds_load_u8 v15, v247 offset:768
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v221, v16
	v_cvt_f32_i32_e32 v217, v17
	v_cvt_f32_i32_e32 v218, v18
	v_cvt_f32_i32_e32 v215, v19
	v_cvt_f32_i32_e32 v216, v20
	v_cvt_f32_i32_e32 v210, v21
	v_cvt_f32_i32_e32 v214, v22
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v250 offset:2048
	ds_load_u8 v16, v247 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v247 offset:384
	ds_load_u8 v17, v247 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	ds_load_u8 v16, v247 offset:640
	ds_load_u8 v18, v247 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v247 offset:1920
	ds_load_u8 v11, v247 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v11, v248 offset:2048
	ds_load_u8 v12, v247 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v247 offset:1408
	ds_load_u8 v15, v247 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v12, 0xc0c0004
	ds_load_u8 v12, v247 offset:1664
	ds_load_u8 v16, v247 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v12, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v87, v1
	v_cvt_f32_i32_e32 v86, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v3
	v_cvt_f32_i32_e32 v77, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v2, v8
.LBB0_11:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s1, s34
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s1, s26, s0
	s_mov_b32 s11, 0x31027000
	.loc	1 208 35 is_stmt 1              ; generate_amdgcn.py:208:35
	s_add_i32 s3, s1, s27
	s_mov_b32 s10, 0x7ffffffe
	v_add_lshl_u32 v7, s3, v78, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s8, s14
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v208.h, v208.l
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v208.l, 0
	s_mov_b32 s5, 0x76543210
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v7, s2
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v4, v242, v208
	v_mul_f32_e32 v2, v2, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v3, v3, v208
	v_mul_f32_e32 v5, v5, v208
	v_mul_f32_e32 v1, v1, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v4, v0, v165
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v165, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v0
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v6
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v6, null, v4, v4, v0
	v_rcp_f32_e32 v8, v6
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, vcc_lo, v0, v4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v10, v9, v8
	v_fma_f32 v11, -v6, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v8
	v_fma_f32 v6, -v6, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v6, v6, v8, v10
	v_div_fixup_f32 v4, v6, v4, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 4, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v6, v139, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v6, v0, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v164, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v8, null, v6, v6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v9, v8
	v_fma_f32 v10, -v8, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, v10, v9
	v_div_scale_f32 v10, vcc_lo, v0, v6, v0
	v_mul_f32_e32 v11, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v8, v11, v10
	v_fmac_f32_e32 v11, v12, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v8, v11, v10
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v10, v138, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v8, v8, v9, v11
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v9, 12, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v9, v10, v9, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v145, v9, s2
	scratch_load_b32 v145, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v10
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v11
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v11, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v9, null, v11, v11, v10
	v_rcp_f32_e32 v12, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v9, v12, 1.0
	v_fmac_f32_e32 v12, v15, v12
	v_div_scale_f32 v15, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v12
	v_fma_f32 v17, -v9, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v12
	v_fma_f32 v9, -v9, v16, v15
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v136, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v12, v9, v12, v16
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v9, 8, v7
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v9, v15, v9, v212
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v212, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v15
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v16
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v9, null, v16, v16, v15
	v_rcp_f32_e32 v17, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v9, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v9, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v9, -v9, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v9, v17, v19
	v_div_fixup_f32 v9, v8, v6, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 20, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v6, v135, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v6, v0, v201
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v201, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v0
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v8
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v6, null, v18, v18, v0
	v_rcp_f32_e32 v8, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v6, v8, 1.0
	v_fmac_f32_e32 v8, v19, v8
	v_div_scale_f32 v19, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v8
	v_fma_f32 v21, -v6, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v8
	v_fma_f32 v6, -v6, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v6, v8, v20
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v8, 16, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v12, v11, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v10, v30, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v201, v19, v18, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_add_nc_u32_e32 v0, 24, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v130, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v8, v10, v8, v195
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v195, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v18, v0, v70
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v70, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v11, 1.0, v8
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v8, null, v11, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v8
	v_fma_f32 v20, -v8, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v20, v12
	v_div_scale_f32 v20, vcc_lo, v10, v11, v10
	v_mul_f32_e32 v21, v20, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v8, v21, v20
	v_fmac_f32_e32 v21, v22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v21, v20
	v_div_fmas_f32 v12, v8, v12, v21
	v_div_fixup_f32 v8, v17, v16, v15
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v29, v208 :: v_dual_add_nc_u32 v15, 28, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v195, v12, v11, v10
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v10, 36, v7
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v11, v129, v208
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x1
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v193
	v_fma_f32 v10, v11, v10, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v193, v15, s2
	v_cndmask_b32_e64 v11, v174, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_mul_f32_e32 v10, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v17, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v17
	v_fma_f32 v21, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v17, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v22, v21
	v_div_fmas_f32 v17, v17, v20, v22
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v18, v18, v0
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v10
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v10, null, v20, v20, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v10
	v_fma_f32 v21, -v10, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v21, v12
	v_div_scale_f32 v21, vcc_lo, v11, v20, v11
	v_mul_f32_e32 v22, v21, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v10, v22, v21
	v_fmac_f32_e32 v22, v23, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v22, v21
	v_div_fmas_f32 v21, v10, v12, v22
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v12, 32, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v10, v17, v16, v15
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v128, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v11, v21, v20, v11
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v21, v123, v208 :: v_dual_add_nc_u32 v20, 40, v7
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v12, v15, v12, v181
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v181, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v171
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v171, v20, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v12
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v12, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v12
	v_fma_f32 v22, -v12, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v22, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v23, v22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v12, v23, v22
	v_fmac_f32_e32 v23, v24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v23, v22
	v_div_fmas_f32 v17, v12, v17, v23
	v_div_fixup_f32 v12, v19, v18, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 44, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v126, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v181, v17, v16, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v15, 52, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v76, v208
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v18, v0, v188
	v_fma_f32 v15, v16, v15, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v188, v0, s2
	v_cndmask_b32_e64 v15, v170, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v18, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v19
	v_fma_f32 v23, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, v18, v0
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v19, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v24, v23
	v_div_fmas_f32 v19, v19, v22, v24
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v176, v19, v18, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 48, v7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v254, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v171, v22, v21, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v21, v253, v208 :: v_dual_add_nc_u32 v20, 60, v7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v16, v16
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v17, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v17
	v_fma_f32 v24, -v17, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v17, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v25, v24
	v_div_fmas_f32 v17, v17, v23, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v170, v17, v16, v15
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v249, v208 :: v_dual_add_nc_u32 v15, 56, v7
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v18, v0, v133
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v133, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v18, v18, v0
	v_rcp_f32_e32 v23, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v19, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v19, -v19, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v19, v23, v25
	v_div_fixup_f32 v188, v19, v18, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x44, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v127, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v157, v20, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v173, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v23, v22
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v158, v22, v21, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v17, null, v16, v16, v15
	v_rcp_f32_e32 v23, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v17, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v17, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v17, -v17, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v23, v25
	v_div_fixup_f32 v193, v17, v16, v15
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v255, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v18, v0, v155
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v155, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v18, v18, v0
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v125, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v20, 64, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v155, v19, v18, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_nc_u32_e32 v0, 0x54, v7
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v152
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v152, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v168
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v168, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v124, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0x4c, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v157, v22, v21, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v24, v23, v142
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v142, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v26
	v_fma_f32 v30, -v25, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v26
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v118, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0x48, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v142, v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v132, v26, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v31, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v29, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v32, v31
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v152, v29, v28, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v15, v18, v17
	v_fmac_f32_e32 v18, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v20, v15, v16, v18
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v252, v208 :: v_dual_add_nc_u32 v15, 0x50, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v137, v15, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v137, v20, v19, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x60, v7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v17
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v18, v18, v17
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v21, v16
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v16
	v_fma_f32 v23, -v15, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v16
	v_fma_f32 v15, -v15, v22, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v251, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v15, v15, v16, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v16, 0x5c, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v133, v15, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v244, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v169, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v16, v21, v16, v172
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v172, v16, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v16
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v16
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v16, v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v245, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0x58, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v132, v22, v21, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v24, v23, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v114, v23, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
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
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v28, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v29, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, v28
	v_fmac_f32_e32 v29, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v246, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0x64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v122, v25, v24, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v211
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v211, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v39, v29, v28, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v29, v29, v0
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v29, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v15, v16, v18
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v243, v208 :: v_dual_add_nc_u32 v15, 0x6c, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v120, v30, v29, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_add_nc_u32_e32 v0, 0x7c, v7
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v143
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v143, v15, s2
	scratch_load_b32 v143, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v32, 1.0, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v32, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v31, v32, v31
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v33, v15, v16, v18
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v241, v208 :: v_dual_add_nc_u32 v15, 0x68, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v115, v33, v32, v31
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v159
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v159, v15, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v240, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v18, 0x74, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v116, v17, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v238, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v175
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v175, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v15, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v18, v19, v18, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v213, v18, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
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
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v239, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0x70, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v119, v20, v19, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v178
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v178, v21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v28, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v28, v24
	v_fma_f32 v23, -v23, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v117, v23, v22, v21
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v23, v23, v0
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v15, v16, v18
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v235, v208 :: v_dual_add_nc_u32 v15, 0x78, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v114, v19, v23, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_add_nc_u32_e32 v0, 0x94, v7
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v185
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v185, v15, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v17, null, v16, v16, v15
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v20, v18
	v_div_scale_f32 v20, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v18
	v_fma_f32 v22, -v17, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v18
	v_fma_f32 v17, -v17, v21, v20
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v237, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v17, v17, v18, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v18, 0x84, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v113, v17, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v232, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v103
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v103, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v15, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v18, v20, v18, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v134, v18, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v24, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v24, v22
	v_div_scale_f32 v24, vcc_lo, v18, v20, v18
	v_mul_f32_e32 v25, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v21, v25, v24
	v_fmac_f32_e32 v25, v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v25, v24
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v236, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v21, v21, v22, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v22, 0x80, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v24, v22, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v111, v22, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v111, v21, v20, v18
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v28, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v22, v24, v22
	v_mul_f32_e32 v29, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, v28
	v_fmac_f32_e32 v29, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v234, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0x8c, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v112, v25, v24, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v110
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v110, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v233, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v30, 0x88, v7
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v30, v31, v30, v109
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v109, v30, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v109, v29, v28, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v32
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v31, v31, v30
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v110, v32, v31, v30
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v231, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v17, 0x90, v7
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v17, v18, v17, v107
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v107, v17, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v107, v16, v15, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v15, v230, v208 :: v_dual_add_nc_u32 v0, 0x9c, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v22, v21
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v108
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v108, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v108, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v15, v15, v0
	v_rcp_f32_e32 v20, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v16, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v16, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v16, -v16, v22, v21
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v226, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v16, v16, v20, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v20, 0x98, v7
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v106
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v106, v20, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v106, v16, v15, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v15, v228, v208 :: v_dual_add_nc_u32 v0, 0xac, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v229, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0xa4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v140, v0, s2
	scratch_load_b32 v140, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v24, v23, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v105, v23, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v105, v22, v21, v20
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
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
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v28, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v29, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, v28
	v_fmac_f32_e32 v29, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v227, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0xa0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v103, v25, v24, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v104
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v104, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v104, v29, v28, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v29, v29, v0
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v29, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v15, -v15, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v15, v16, v18
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v225, v208 :: v_dual_add_nc_u32 v15, 0xa8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v99, v30, v29, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_add_nc_u32_e32 v0, 0xc4, v7
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v15, v16, v15, v146
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v146, v15, s2
	scratch_load_b32 v146, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
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
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v15, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v16
	v_fma_f32 v19, -v16, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v17, v15, v17
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v16, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v20, v19
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v224, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v16, v16, v18, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v18, 0xb4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v100, v16, v15, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v221, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v151, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v18, v19, v18, v156
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v156, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v18
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v22, v222, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xb0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v102, v20, v19, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v22, v21, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v154, v21, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
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
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v23, v26, v25
	v_fmac_f32_e32 v26, v28, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v223, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v24, 0xbc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v101, v23, v22, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v24, v25, v24, v153
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v153, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v24
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v24
	v_rcp_f32_e32 v28, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v28, 1.0
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, vcc_lo, v24, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v28
	v_fma_f32 v33, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v28
	v_fma_f32 v26, -v26, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v219, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v28, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v28, 0xb8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v98, v26, v25, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v28, v31, v28, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v145, v28, s2
	scratch_load_b32 v145, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v28
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v32
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v31, v31, v28
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v28, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v34, v160, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_and_b32_e32 v35, 16, v41
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v97, v32, v31, v28
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v220, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v17, 0xc0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v95, v16, v15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_nc_u32_e32 v0, 0xd0, v7
	scratch_load_b32 v16, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v215, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v17, v18, v17, v150
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v150, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v16
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v218, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v20, 0xcc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v96, v19, v18, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v149
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v149, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v217, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0xc8, v7
	scratch_load_b32 v25, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v92, v22, v21, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v24, v23, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v25, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v26
	v_fma_f32 v30, -v25, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v26
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v216, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0xd4, v7
	scratch_load_b32 v29, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v93, v25, v24, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v29, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v94, v29, v28, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v214, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v17, 0xdc, v7
	scratch_load_b32 v19, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v90, v16, v15, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_nc_u32_e32 v0, 0xec, v7
	scratch_load_b32 v16, off, off          ; 4-byte Folded Reload
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v15, v77, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v17, v18, v17, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v19, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v16
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
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
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v210, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v20, 0xd8, v7
	scratch_load_b32 v22, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v89, v19, v18, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v16, v0, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v22
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v22, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
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
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v86, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v23, 0xe4, v7
	scratch_load_b32 v25, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v88, v22, v21, v20
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v23, v24, v23, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v25, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v28, v26
	v_div_scale_f32 v28, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v26
	v_fma_f32 v30, -v25, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v26
	v_fma_f32 v25, -v25, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v87, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0xe0, v7
	scratch_load_b32 v29, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v76, v25, v24, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v28, v26, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v29, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v26
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v26
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, v33, v30 :: v_dual_mul_f32 v33, v162, v208
	v_fma_f32 v29, -v29, v32, v31
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v190, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	scratch_load_b32 v30, off, off offset:88 ; 4-byte Folded Reload
	v_mul_f32_e32 v32, v189, v208
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v87, v29, v28, v26
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	scratch_load_b32 v29, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v18, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v0
	v_fma_f32 v16, -v0, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v19, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, v16
	v_fmac_f32_e32 v19, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v19, v16
	v_div_fmas_f32 v19, v0, v15, v19
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v15, v91, v208 :: v_dual_add_nc_u32 v0, 0xe8, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v30, v30, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v29, v29, v208
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v15, v0, v85
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v85, v0, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v85, v19, v18, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v17, 0xf4, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v15, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v16
	v_fma_f32 v21, -v16, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v15, v0
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v16, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v22, v21
	v_div_fmas_f32 v16, v16, v20, v22
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v5, v5, v17, v81
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v81, v5, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v5
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v18, null, v17, v17, v5
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v5, v17, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v18, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v18, -v18, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v19, v21
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v19, 0xf0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v91, v18, v17, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v167, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:168
	scratch_load_b32 v17, off, off offset:188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v3, v3, v19, v84
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v84, v3, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v84, v16, v15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v3
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v20
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v20, null, v19, v19, v3
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v3, v19, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v20, -v20, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v21, 0xfc, v7
	v_add_nc_u32_e32 v7, 0xf8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v86, v20, v19, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v198, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:172
	scratch_load_b32 v20, off, off offset:164
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v18, v18, v208
	v_mul_f32_e32 v17, v17, v208
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v208
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v20, v208 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v2, v2, v21, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v83, v2, s2
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v83, s1, v78, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v2 :: v_dual_add_nc_u32 v0, 4, v83
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v1, v1, v7, v82
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v82, v1, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v2
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v2, v21, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v82, v22, v21, v2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v2, v166, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:140
	scratch_load_b32 v21, off, off offset:152
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v23, null, v7, v7, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v1, v7, v1
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v23, v26, v25
	v_fmac_f32_e32 v26, v28, v24
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	scratch_load_b32 v28, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v23, -v23, v26, v25
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v25, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v23, v24, v26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:136
	scratch_load_b32 v26, off, off offset:108
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v81, v23, v7, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v209, v208
	v_mul_f32_e32 v7, v177, v208
	scratch_load_b32 v23, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v1, v0, v148
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_or_b32_e32 v1, s0, v78
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v148, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v1, v1, s26, 1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v184, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v22, v22, v208
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v21, v21, v208
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v28, v28, v208
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v25, v25, v208
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v208
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v23, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v2, v1, v147
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v2, 20, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v147, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v1, v1, v4
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v4, v197, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v3, v2, v144
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v3, 16, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v144, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	scratch_load_b32 v144, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v2, v201
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v4, v3, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v208.l
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v13, v3, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v208.l
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e64 v2.h, v208.l
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_mov_b32_e32 v3, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v4, v186, v208 :: v_dual_cndmask_b32 v3, 0x3276, v3
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v2, v1, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v1 :: v_dual_mov_b32 v1, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 8, v3
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v77, 0x7060706, v3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v196, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v1, v1, 4, v1
	v_and_b32_e32 v78, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v1, v0, v2, v78
	v_perm_b32 v2, v0, v2, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 12, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v3, v0, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v3, 8, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v27, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	scratch_load_b32 v27, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v6
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v6, v121, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v4, v3, v140
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v4, 28, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v140, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	scratch_load_b32 v140, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v3, v3, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v8, v131, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v5, v4, v146
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v5, 24, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v146, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v4, v4, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v10, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v208 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v6, v5, v145
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v208.l
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v145, v5, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v5.l, v3.h
	v_mov_b16_e64 v5.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v12
	scratch_load_b32 v12, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e64 v3.h, v208.l
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v4, v3, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v208.l
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v179, v208
	v_mul_f32_e32 v6, v161, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, v0, v3, vcc_lo
	v_cndmask_b32_e32 v0, v3, v0, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v78
	v_perm_b32 v4, v4, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 32, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v5, v0, v144
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v5, 36, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v144, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v181
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v6, v5, v143
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v6, 52, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v143, v5, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	scratch_load_b32 v143, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v5, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	scratch_load_b32 v11, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v7, v6, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v7, 48, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v27, v6, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	scratch_load_b32 v27, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v6, v170
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v8, v7, v140
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e64 v8.h, v208.l
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v140, v7, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e64 v7.h, v208.l
	scratch_load_b32 v140, off, off offset:48 ; 4-byte Folded Reload
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v5, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e64 v5.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v5, v6, v5, 0x7fff
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v7, v180, v208
	v_mul_f32_e32 v8, v199, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v0, v5, vcc_lo
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v0, v78
	v_perm_b32 v6, v6, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 40, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v7, v0, v143
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v7, 44, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v143, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v171
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v8, v7, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v8, 60, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v27, v7, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v27, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v7, v176
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v9, v8, v140
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 56, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v140, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v8, v8, v158
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v208.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v7, v10, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v11, v9, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e64 v9.h, v208.l
	scratch_load_b32 v11, off, off offset:36 ; 4-byte Folded Reload
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v7, v193
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e64 v7.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e64 v8.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v182, v208
	v_mul_f32_e32 v10, v14, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:220
	scratch_load_b32 v13, off, off offset:212
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v8, v0, v7, vcc_lo
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v8, v0, v78
	v_perm_b32 v8, v8, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 64, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v14, v208
	scratch_load_b32 v14, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v9, v0, v12
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 0x44, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v12, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v12, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v157
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v208
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v12, v208 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v11
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v10, 0x54, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v11, v9, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v11, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v155
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v208 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v11, v10, v43
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v11, 0x50, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v43, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v10, v137
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v12, v11, v37
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e64 v12.h, v208.l
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v37, v11, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v11.l, v0.h
	v_mov_b16_e64 v11.h, v208.l
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v0, v11, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v9, v133
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e64 v9.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e64 v10.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:224
	scratch_load_b32 v12, off, off offset:216
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v10, v0, v9, vcc_lo
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v10, v0, v78
	v_perm_b32 v10, v10, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x4c, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v11, v11, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v11, v0, v38
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v11, 0x48, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v38, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v142
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v12, v11, v207
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v12, 0x5c, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v207, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v11, v152
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v15, v12, v206
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 0x58, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v206, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v14, v15, v205
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v0.h
	v_mov_b16_e64 v15.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v12, v132
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v205, v14, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v14.l, v11.h
	v_mov_b16_e64 v14.h, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v11, v14, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v12, v122
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v0.h
	v_mov_b16_e64 v12.h, v208.l
	v_cmp_o_f32_e64 s4, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v0, v12, 0x7fff
	v_mov_b16_e32 v0.l, v11.h
	v_mov_b16_e64 v0.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s3
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v11, v0, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v14, v200, v208
	v_mul_f32_e32 v15, v13, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v12.l, 0x7fff, v0.h, s4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v13, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v0, v11, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v0, v12, v78
	v_perm_b32 v12, v0, v12, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x64, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v13, v208
	scratch_load_b32 v13, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v14, v0, v204
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v14, 0x60, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v204, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v39
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v13, v208 :: v_dual_lshlrev_b32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v15, v14, v203
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 0x74, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v203, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v14, v120
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v14, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v16, v15, v202
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, 0x70, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v202, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v13, v16, v194
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v194, v13, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v15, v119
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v14.h
	v_mov_b16_e64 v15.h, v208.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v117
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v15
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v14, v15, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e64 v14.h, v208.l
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v13, v14, 0x7fff
	v_mov_b16_e32 v13.l, v0.h
	v_mov_b16_e64 v13.h, v208.l
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v0, v13, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:196
	scratch_load_b32 v16, off, off offset:192
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v13, v0, v14 :: v_dual_cndmask_b32 v0, v14, v0
	v_permlanex16_b32 v14, v13, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v0, v78
	v_perm_b32 v14, v14, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x68, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v15, v0, v80
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 0x6c, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v80, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v116
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v16, v15, v79
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, 0x7c, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v79, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v15, v15, v115
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v16, v17, v16, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v17, 0x78, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v75, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v16, v114
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v18, v17, v74
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e64 v18.h, v208.l
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v74, v17, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e64 v17.h, v208.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v15, v113
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e64 v15.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v16, v15, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:180
	scratch_load_b32 v18, off, off offset:176
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v16, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v78
	v_perm_b32 v16, v16, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x84, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v17, v0, v73
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v17, 0x80, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v73, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v111
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v18, v17, v72
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v18, 0x94, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v72, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v17, v112
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v18, v19, v18, v71
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x90, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v71, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v18, v18, v107
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v183
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v208.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v183, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e64 v19.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v108 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e64 v17.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v18, v17, 0x7fff
	v_mov_b16_e32 v18.l, v0.h
	v_mov_b16_e64 v18.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v0, v18, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:160
	scratch_load_b32 v20, off, off offset:156
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v18, v0, v17, vcc_lo
	v_cndmask_b32_e32 v0, v17, v0, vcc_lo
	v_permlanex16_b32 v18, v18, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v78
	v_perm_b32 v18, v18, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x88, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v62
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x8c, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v62, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v110
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v58
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x9c, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v58, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v109
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v57
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x98, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v57, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v20, v20, v106
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v56
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e64 v22.h, v208.l
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v56, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e64 v21.h, v208.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v19, v105
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e64 v19.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:184
	scratch_load_b32 v22, off, off offset:148
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v78
	v_perm_b32 v20, v20, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa4, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v21, v0, v55
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0xa0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v55, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v103
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v45
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v22, 0xb4, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v45, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v21, v21, v104
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v22, v23, v22, v44
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xb0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v44, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v22, v22, v102
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v69
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v208.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v69, v23, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e64 v23.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v101 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v22, v21, 0x7fff
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e64 v22.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v0, v22, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v23.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:132
	scratch_load_b32 v24, off, off offset:128
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v0, v21, vcc_lo
	v_cndmask_b32_e32 v0, v21, v0, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v0, v78
	v_perm_b32 v22, v22, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa8, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v23, v0, v40
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xac, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v40, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v100
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v141
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v24, 0xbc, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v141, v23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v23, v23, v99
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v24, v25, v24, v68
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xb8, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v68, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v24, v98
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v67
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e64 v26.h, v208.l
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v67, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e64 v25.h, v208.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v23, v97
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e64 v23.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v24, v23, 0x7fff
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:120
	scratch_load_b32 v26, off, off offset:116
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v24, v0, v78
	v_perm_b32 v24, v24, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc4, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v25, v0, v66
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xc0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v66, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v95
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v65
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v26, 0xd4, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v65, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v25, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v27, v26, v64
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v27, 0xd0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v64, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v26, v94
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v28, v27, v63
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v208.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v63, v27, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e64 v27.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v90 :: v_dual_and_b32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v25, v27, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e64 v25.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v26, v25, 0x7fff
	v_mov_b16_e32 v26.l, v0.h
	v_mov_b16_e64 v26.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v28.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v27.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:100
	scratch_load_b32 v28, off, off offset:96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v26, v0, v25, vcc_lo
	v_cndmask_b32_e32 v0, v25, v0, vcc_lo
	v_permlanex16_b32 v26, v26, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v78
	v_perm_b32 v26, v26, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc8, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v208
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v28, v28, v208
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v27, v0, v61
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v27, 0xcc, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v61, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v93
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v28, v27, v60
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v28, 0xdc, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v60, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v27, v27, v92
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v29, v28, v59
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xd8, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v59, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v28, v28, v89
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v30, v29, v54
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v30.l, v27.h
	v_mov_b16_e64 v30.h, v208.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v27, v30, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v54, v29, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e64 v29.h, v208.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v27, v88
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v28.h
	v_mov_b16_e64 v27.h, v208.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v29.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v29, v192, v208
	v_mul_f32_e32 v30, v191, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v78
	v_perm_b32 v28, v28, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xe4, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v29, v0, v52
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xe0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v52, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v76
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v30, v29, v53
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v30, 0xf4, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v53, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v29, v29, v87
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v31, v30, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xf0, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v51, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v91
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v32, v31, v50
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v32.l, v0.h
	v_mov_b16_e64 v32.h, v208.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v32, v0, v32, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v50, v31, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e64 v31.h, v208.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v86 :: v_dual_and_b32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v31, v29, v31, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e64 v29.h, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v30, v29, 0x7fff
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e64 v30.h, v208.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v30, v0, v30, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v32.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v187, v208
	v_mul_f32_e32 v32, v163, v208
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v30, v0, v29, vcc_lo
	v_cndmask_b32_e32 v0, v29, v0, vcc_lo
	v_permlanex16_b32 v30, v30, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v29, v30, v0, v78
	v_perm_b32 v30, v30, v0, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xec, v83
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v31, v0, v48
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xe8, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v48, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v85
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v32, v31, v49
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v32, 0xfc, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v49, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v31, v84
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v32, v33, v32, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v33, 0xf8, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v47, v32, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v32, v32, v82
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v33, v34, v33, v46
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v34.l, v0.h
	v_mov_b16_e64 v34.h, v208.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v46, v33, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v33.l, v31.h
	v_mov_b16_e64 v33.h, v208.l
	v_cmp_o_f32_e64 s2, v32, v32
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v31, v33, 0x7fff
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e64 v31.h, v208.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v32, v31, 0x7fff
	v_mov_b16_e64 v32.h, v208.l
	v_mov_b16_e32 v32.l, v0.h
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v0, v32, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v34.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v33.h, s1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v33, 1, v35
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v34, 0x1e0, v41
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v31, s27, v42
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	s_mov_b32 s27, s11
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v31, s33, s26, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s10
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v33, v31, v33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_perm_b32 v31, v0, v32, v78
	v_perm_b32 v32, v0, v32, v77
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
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 448
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 45548
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 448
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 448
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 172
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
