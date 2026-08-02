	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v79, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v43, 15, v0
	v_lshrrev_b32_e32 v81, 1, v0
	v_lshlrev_b32_e32 v83, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v82, 2, v79
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_mul_hi_u32 s2, s9, s8
	s_xor_b32 s8, s4, s6
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s16, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s17, s2, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s18, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s28, s17, s16
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s28, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v3, 2, v79
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow229
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v80, 7, v0
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v45, 0x1f0, v0
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v44, 0x100, v0
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v46, 4, v43
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v47, 16, v0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v52, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v44
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v5, 3, v0
	v_and_b32_e32 v6, 56, v81
	v_and_b32_e32 v12, 56, v83
	v_lshrrev_b32_e32 v2, 3, v45
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v1, 3, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, v5, v6
	v_lshlrev_b32_e32 v5, 6, v43
	v_lshlrev_b32_e32 v16, 5, v79
	v_xor_b32_e32 v12, v12, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s30, v3, v43
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp18:
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s21, s18, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_xor_b32_e32 v7, v1, v2
	v_and_or_b32 v14, 0x438, v83, v5
	v_or3_b32 v12, v12, v16, v5
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v5, s3, v2
	v_sub_nc_u32_e32 v85, s21, v2
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v2, 32, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v30, s3, v1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s31, s2, 8
.Ltmp24:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v34, s17, 9, v79
	v_mul_lo_u32 v2, s31, v2
	v_mul_lo_u32 v3, s31, v3
	v_add_nc_u32_e32 v33, 64, v30
	s_lshl_b32 s20, s16, 9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 3, v0
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v30, 3, v47
	v_subrev_nc_u32_e32 v87, s20, v34
	s_lshl_b32 s20, s17, 8
	v_add_nc_u32_e32 v32, 64, v5
	v_cmp_gt_i32_e64 s1, 0x80, v33
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v88, 1, v2
	v_lshlrev_b32_e32 v89, 1, v3
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v33, 0x41, v5
	v_mad_u64_u32 v[2:3], null, s29, v5, s[20:21]
	v_lshl_or_b32 v7, v43, 10, v7
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v86, 2, v30
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v30, s30, v4
	v_mad_u64_u32 v[3:4], null, s29, v32, s[20:21]
	v_cmp_gt_i32_e64 s0, 0x80, v5
	v_mad_u64_u32 v[4:5], null, s29, v33, s[20:21]
	v_xor_b32_e32 v8, 0x88, v7
	v_sub_nc_u32_e32 v84, s21, v1
	v_mad_u64_u32 v[41:42], null, s21, v30, v[1:2]
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v1, s29, v2
	v_xor_b32_e32 v9, 0x110, v7
	v_xor_b32_e32 v10, 0x198, v7
	v_xor_b32_e32 v11, 0x220, v7
	v_xor_b32_e32 v13, 0x2a8, v7
	v_xor_b32_e32 v15, 0x330, v7
	v_xor_b32_e32 v17, 0x3b8, v7
	v_xor_b32_e32 v18, 8, v14
	v_xor_b32_e32 v19, 16, v14
	v_xor_b32_e32 v20, 24, v14
	v_xor_b32_e32 v16, 32, v14
	v_xor_b32_e32 v21, 40, v14
	v_xor_b32_e32 v22, 48, v14
	v_xor_b32_e32 v23, 56, v14
	v_xor_b32_e32 v24, 8, v12
	v_xor_b32_e32 v25, 16, v12
	v_xor_b32_e32 v26, 24, v12
	v_xor_b32_e32 v27, 32, v12
	v_xor_b32_e32 v28, 40, v12
	v_xor_b32_e32 v29, 48, v12
	v_xor_b32_e32 v31, 56, v12
	s_add_i32 s34, s3, 64
	s_lshl_b32 s3, s16, 8
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v94, 0, v6
	v_subrev_nc_u32_e32 v90, s3, v3
	v_subrev_nc_u32_e32 v91, s3, v4
	v_subrev_nc_u32_e32 v92, s3, v2
	v_subrev_nc_u32_e32 v93, s3, v1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v95, 0, v7
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v96, 0, v8
	v_mov_b32_e32 v1, s36
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v97, 0, v9
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v98, 0, v10
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v99, 0, v11
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v100, 0, v13
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v101, 0, v15
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v102, 0, v17
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v103, 0, v14
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v104, 0, v18
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v105, 0, v19
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v106, 0, v20
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v107, 0, v16
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v108, 0, v21
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v109, 0, v22
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v110, 0, v23
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v111, 0, v12
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v112, 0, v24
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v113, 0, v25
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v114, 0, v26
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v115, 0, v27
	v_add_nc_u32_e32 v116, 0, v28
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v117, 0, v29
	v_add_nc_u32_e32 v118, 0, v31
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_cmp_gt_i32_e64 s2, 0x80, v32
	v_mov_b32_e32 v8, s43
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v54, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s33, s29, 1
	s_lshl_b32 s35, s29, 7
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s6
	s_mov_b32 s25, s7
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s5, s34, 64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v11, s34, v41
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v85
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v46, v92
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s5, v84
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v46, v93
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v12, 64, v11
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s34, v84
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v13, 0x80000000, v10, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v17, 0x80000000, v12, s5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v120, v89, s[16:19], 0 offen
	buffer_load_u16 v119, v88, s[16:19], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v19, 0x80000000, v11, s3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[17:18], v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s34, v85
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[129:130], v19, s[20:23], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s31, s31, -1
	s_addk_i32 s34, 0x80
	v_add_nc_u32_e32 v88, 2, v88
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v89, 2, v89
	v_add_nc_u32_e32 v93, s35, v93
	s_cmp_lg_u32 s31, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(2)
	v_perm_b32 v19, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v20, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v21, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v22, v16, v12, 0x5010400
	v_perm_b32 v23, v16, v12, 0x7030602
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v94, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v16, 8, v19
	v_lshrrev_b32_e32 v17, 24, v19
	v_lshrrev_b32_e32 v18, 8, v13
	v_and_b16 v9.l, 0xff, v19.l
	v_and_b16 v9.h, 0xff, v19.h
	v_and_b16 v10.l, 0xff, v13.l
	v_lshrrev_b32_e32 v19, 24, v13
	v_and_b16 v10.h, 0xff, v13.h
	v_lshrrev_b32_e32 v24, 8, v20
	v_and_b16 v11.l, 0xff, v20.l
	v_lshrrev_b32_e32 v25, 24, v20
	v_and_b16 v11.h, 0xff, v20.h
	v_lshrrev_b32_e32 v20, 8, v14
	v_and_b16 v12.l, 0xff, v14.l
	v_lshrrev_b32_e32 v26, 24, v14
	v_and_b16 v12.h, 0xff, v14.h
	v_lshrrev_b32_e32 v27, 8, v21
	v_and_b16 v13.l, 0xff, v21.l
	v_lshrrev_b32_e32 v28, 24, v21
	v_and_b16 v13.h, 0xff, v21.h
	v_lshrrev_b32_e32 v21, 8, v15
	v_and_b16 v14.l, 0xff, v15.l
	v_lshrrev_b32_e32 v29, 24, v15
	v_and_b16 v14.h, 0xff, v15.h
	v_lshlrev_b16 v15.l, 8, v16.l
	v_lshlrev_b16 v15.h, 8, v17.l
	v_lshlrev_b16 v16.l, 8, v18.l
	v_lshrrev_b32_e32 v30, 8, v22
	v_lshrrev_b32_e32 v31, 24, v22
	v_or_b16 v9.l, v9.l, v15.l
	v_and_b16 v15.l, 0xff, v22.l
	v_or_b16 v9.h, v9.h, v15.h
	v_and_b16 v15.h, 0xff, v22.h
	v_or_b16 v10.l, v10.l, v16.l
	v_lshrrev_b32_e32 v22, 8, v23
	v_lshlrev_b16 v16.l, 8, v19.l
	v_lshlrev_b16 v16.h, 8, v24.l
	v_lshrrev_b32_e32 v24, 24, v23
	v_lshlrev_b16 v17.l, 8, v25.l
	v_lshlrev_b16 v17.h, 8, v20.l
	v_or_b16 v10.h, v10.h, v16.l
	v_and_b16 v16.l, 0xff, v23.l
	v_or_b16 v11.l, v11.l, v16.h
	v_and_b16 v16.h, 0xff, v23.h
	v_lshlrev_b16 v18.l, 8, v26.l
	v_lshlrev_b16 v18.h, 8, v27.l
	v_lshlrev_b16 v19.l, 8, v28.l
	v_lshlrev_b16 v19.h, 8, v21.l
	v_lshlrev_b16 v20.l, 8, v29.l
	v_lshlrev_b16 v20.h, 8, v30.l
	v_lshlrev_b16 v21.l, 8, v31.l
	v_lshlrev_b16 v21.h, 8, v22.l
	v_lshlrev_b16 v22.l, 8, v24.l
	v_or_b16 v11.h, v11.h, v17.l
	v_or_b16 v12.l, v12.l, v17.h
	v_or_b16 v12.h, v12.h, v18.l
	v_or_b16 v13.l, v13.l, v18.h
	v_or_b16 v13.h, v13.h, v19.l
	v_or_b16 v14.l, v14.l, v19.h
	v_or_b16 v14.h, v14.h, v20.l
	v_or_b16 v15.l, v15.l, v20.h
	v_or_b16 v15.h, v15.h, v21.l
	v_or_b16 v16.l, v16.l, v21.h
	v_or_b16 v16.h, v16.h, v22.l
	ds_store_b16 v95, v9
	ds_store_b16_d16_hi v95, v9 offset:64
	ds_store_b16 v96, v10
	ds_store_b16_d16_hi v96, v10 offset:64
	ds_store_b16 v97, v11
	ds_store_b16_d16_hi v97, v11 offset:64
	ds_store_b16 v98, v12
	ds_store_b16_d16_hi v98, v12 offset:64
	ds_store_b16 v99, v13
	ds_store_b16_d16_hi v99, v13 offset:64
	ds_store_b16 v100, v14
	ds_store_b16_d16_hi v100, v14 offset:64
	ds_store_b16 v101, v15
	ds_store_b16_d16_hi v101, v15 offset:64
	ds_store_b16 v102, v16
	ds_store_b16_d16_hi v102, v16 offset:64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[121:124], v103 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v111 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v104 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v112 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v105 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v113 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v106 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v114 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v107 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v115 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v108 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v116 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v109 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v117 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v110 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v118 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v121, v46, v90
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v122, v46, v91
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v90, s35, v90
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v121, 0x80000000, v121, s3
	v_cndmask_b32_e64 v125, 0x80000000, v122, s3
	s_clause 0x1
	buffer_load_b128 v[121:124], v121, s[24:27], 0 offen
	buffer_load_b128 v[125:128], v125, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v94, v[129:130] offset:16384
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v91, s35, v91
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v125, v121, 0x5010400
	v_perm_b32 v125, v125, v121, 0x7030602
	v_perm_b32 v132, v126, v122, 0x5010400
	v_perm_b32 v126, v126, v122, 0x7030602
	v_perm_b32 v133, v127, v123, 0x5010400
	v_lshrrev_b32_e32 v121, 8, v131
	v_and_b16 v121.h, 0xff, v131.l
	v_lshrrev_b32_e32 v122, 24, v131
	v_perm_b32 v127, v127, v123, 0x7030602
	v_lshrrev_b32_e32 v123, 24, v125
	v_lshlrev_b16 v121.l, 8, v121.l
	v_perm_b32 v134, v128, v124, 0x5010400
	v_lshlrev_b16 v122.l, 8, v122.l
	v_perm_b32 v135, v128, v124, 0x7030602
	v_lshlrev_b16 v123.l, 8, v123.l
	v_or_b16 v121.l, v121.h, v121.l
	v_and_b16 v121.h, 0xff, v131.h
	v_lshrrev_b32_e32 v124, 24, v132
	v_lshrrev_b32_e32 v128, 24, v127
	v_lshrrev_b32_e32 v129, 24, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v121.h, v121.h, v122.l
	v_lshrrev_b32_e32 v122, 8, v125
	v_and_b16 v122.h, 0xff, v125.l
	v_lshlrev_b16 v124.l, 8, v124.l
	v_lshlrev_b16 v129.l, 8, v129.l
	v_lshlrev_b16 v122.l, 8, v122.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v122.l, v122.h, v122.l
	v_and_b16 v122.h, 0xff, v125.h
	v_lshrrev_b32_e32 v125, 24, v126
	v_or_b16 v122.h, v122.h, v123.l
	v_lshrrev_b32_e32 v123, 8, v132
	v_and_b16 v123.h, 0xff, v132.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v125.l, 8, v125.l
	v_lshlrev_b16 v123.l, 8, v123.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v123.l, v123.h, v123.l
	v_and_b16 v123.h, 0xff, v132.h
	v_or_b16 v123.h, v123.h, v124.l
	v_lshrrev_b32_e32 v124, 8, v126
	v_and_b16 v124.h, 0xff, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v124.l, 8, v124.l
	v_or_b16 v124.l, v124.h, v124.l
	v_and_b16 v124.h, 0xff, v126.h
	v_lshrrev_b32_e32 v126, 24, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v124.h, v124.h, v125.l
	v_lshrrev_b32_e32 v125, 8, v133
	v_and_b16 v125.h, 0xff, v133.l
	v_lshlrev_b16 v126.l, 8, v126.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v125.l, 8, v125.l
	v_or_b16 v125.l, v125.h, v125.l
	v_and_b16 v125.h, 0xff, v133.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v125.h, v125.h, v126.l
	v_lshrrev_b32_e32 v126, 8, v127
	v_and_b16 v126.h, 0xff, v127.l
	v_lshlrev_b16 v127.l, 8, v128.l
	v_lshrrev_b32_e32 v128, 24, v134
	v_lshlrev_b16 v126.l, 8, v126.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v126.l, v126.h, v126.l
	v_and_b16 v126.h, 0xff, v127.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v126.h, v126.h, v127.l
	v_lshrrev_b32_e32 v127, 8, v134
	v_and_b16 v127.h, 0xff, v134.l
	v_lshlrev_b16 v127.l, 8, v127.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v127.l, v127.h, v127.l
	v_and_b16 v127.h, 0xff, v134.h
	v_or_b16 v127.h, v127.h, v128.l
	v_lshrrev_b32_e32 v128, 8, v135
	v_and_b16 v128.h, 0xff, v135.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v128.l, v128.h, v128.l
	v_and_b16 v128.h, 0xff, v135.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v128.h, v128.h, v129.l
	ds_store_b16 v95, v121
	ds_store_b16_d16_hi v95, v121 offset:64
	ds_store_b16 v96, v122
	ds_store_b16_d16_hi v96, v122 offset:64
	ds_store_b16 v97, v123
	ds_store_b16_d16_hi v97, v123 offset:64
	ds_store_b16 v98, v124
	ds_store_b16_d16_hi v98, v124 offset:64
	ds_store_b16 v99, v125
	ds_store_b16_d16_hi v99, v125 offset:64
	ds_store_b16 v100, v126
	ds_store_b16_d16_hi v100, v126 offset:64
	ds_store_b16 v101, v127
	ds_store_b16_d16_hi v101, v127 offset:64
	ds_store_b16 v102, v128
	ds_store_b16_d16_hi v102, v128 offset:64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[121:124], v103 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v111 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v104 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v112 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v105 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v113 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v106 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v114 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v107 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v115 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v108 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v116 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v109 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v117 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[121:124], v110 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[125:128], v118 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[121:122], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v123, v34
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v40, v25
	v_cvt_f32_i32_e32 v25, v31
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v31, v86, v87
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v124, v33
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v39, v26
	v_cvt_f32_i32_e32 v26, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v32, v31, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v27
	v_cvt_f32_i32_e32 v27, v17
	v_cvt_f32_i32_e32 v17, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v11, 16, v120
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v28
	v_cvt_f32_i32_e32 v28, v30
	v_mul_f32_e32 v30, v11, v40
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v87, s33, v87
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v78, v30, v32
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v30, 16, v119
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v30, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v62, v40, v32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v11, v39
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v39, v31, s[8:11], 0 offen offset:4
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v32, v39
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v32, v30, v123 :: v_dual_mul_f32 v37, v11, v37
	v_mul_f32_e32 v28, v11, v28
	v_dual_mul_f32 v29, v11, v29 :: v_dual_add_nc_u32 v92, s35, v92
	v_mul_f32_e32 v15, v11, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v61, v32, v39 :: v_dual_mul_f32 v32, v11, v38
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v38, v31, s[8:11], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v25, v11, v25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v17, v11, v17 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v76, v32, v38
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v30, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v60, v32, v38
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v32, v31, s[8:11], 0 offen offset:12
	buffer_load_u16 v38, v31, s[8:11], 0 offen offset:16
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v75, v37, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v37, v31, s[8:11], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v35, v30, v35 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v39, v30, v121
	v_mul_f32_e32 v36, v30, v36
	v_mul_f32_e32 v33, v30, v33
	v_mul_f32_e32 v34, v30, v34
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v29, v38
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v29, v31, s[8:11], 0 offen offset:256
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v22, v30, v22
	v_mul_f32_e32 v23, v30, v23
	v_mul_f32_e32 v24, v30, v24
	v_mul_f32_e32 v21, v30, v21
	v_mul_f32_e32 v20, v30, v20
	v_mul_f32_e32 v19, v30, v19
	v_mul_f32_e32 v18, v30, v18
	v_dual_mul_f32 v16, v11, v16 :: v_dual_mul_f32 v27, v30, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v28, v37
	v_fmac_f32_e32 v59, v39, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v32, v31, s[8:11], 0 offen offset:24
	buffer_load_u16 v39, v31, s[8:11], 0 offen offset:28
	buffer_load_u16 v28, v31, s[8:11], 0 offen offset:268
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v57, v35, v37 :: v_dual_fmac_f32 v58, v36, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v36, v31, s[8:11], 0 offen offset:260
	buffer_load_u16 v38, v31, s[8:11], 0 offen offset:264
	buffer_load_u16 v35, v31, s[8:11], 0 offen offset:272
	buffer_load_u16 v37, v31, s[8:11], 0 offen offset:276
	buffer_load_u16 v30, v31, s[8:11], 0 offen offset:280
	buffer_load_u16 v31, v31, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v11, v26
	v_mul_f32_e32 v14, v11, v14
	v_mul_f32_e32 v13, v11, v13
	v_mul_f32_e32 v12, v11, v12
	v_mul_f32_e32 v10, v11, v10
	v_mul_f32_e32 v9, v11, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v32, 16, v39
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v71, v26, v32 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v69, v9, v36 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v56, v33, v11 :: v_dual_fmac_f32 v55, v18, v36
	v_fmac_f32_e32 v54, v34, v32
	v_dual_fmac_f32 v70, v17, v29 :: v_dual_fmac_f32 v53, v19, v38
	v_fmac_f32_e32 v68, v10, v38
	v_dual_fmac_f32 v66, v13, v35 :: v_dual_fmac_f32 v49, v22, v37
	v_dual_fmac_f32 v65, v14, v37 :: v_dual_fmac_f32 v72, v25, v11
	v_dual_fmac_f32 v67, v12, v28 :: v_dual_fmac_f32 v52, v27, v29
	v_dual_fmac_f32 v51, v20, v28 :: v_dual_fmac_f32 v64, v15, v30
	v_fmac_f32_e32 v63, v16, v31
	v_fmac_f32_e32 v50, v21, v35
	v_fmac_f32_e32 v48, v23, v30
	v_fmac_f32_e32 v42, v24, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v2, v81 :: v_dual_mov_b32 v3, v82
	v_mov_b32_e32 v1, v83
.LBB0_7:                                ; %._crit_edge
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v4, |v77|, |v77|
	v_max_f32_e64 v5, |v78|, |v78|
	v_max_f32_e64 v7, |v61|, |v61|
	v_max_f32_e64 v8, |v62|, |v62|
	v_max3_f32 v6, |v75|, |v74|, |v73|
	v_max3_f32 v9, |v69|, |v68|, |v67|
	v_max_f32_e32 v4, v5, v4
	v_max3_f32 v10, |v66|, |v65|, |v64|
	v_max_f32_e32 v7, v8, v7
	v_max3_f32 v8, |v59|, |v58|, |v57|
	v_max3_f32 v11, |v55|, |v53|, |v51|
	v_max3_f32 v12, |v50|, |v49|, |v48|
	v_max3_f32 v5, |v72|, |v71|, |v70|
	v_max3_f32 v4, v4, |v76|, v6
	v_max3_f32 v6, v9, v10, |v63|
	v_max3_f32 v9, |v56|, |v54|, |v52|
	v_max3_f32 v7, v7, |v60|, v8
	v_max3_f32 v8, v11, v12, |v42|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v4, v5, v6
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v11, v80, 8, 0
	s_waitcnt lgkmcnt(0)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, v7, v9, v8
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_barrier
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v7, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v8, 4, v80
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v2, 0xf0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v79, 3, v8
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_max_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v8, v8, v2
	v_xor_b32_e32 v2, v10, v2
	v_lshrrev_b32_e32 v7, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v11, v8, v9
	v_add3_u32 v2, 0, v9, v2
	v_lshl_add_u32 v8, v9, 3, 0
	ds_store_b64 v6, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	v_add3_u32 v8, v8, v3, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v4
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v4, v2
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v5
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v4, v5, v6 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v2, v5
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v6, v4 :: v_dual_max_f32 v9, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v5, v9 :: v_dual_lshlrev_b32 v2, 3, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v6, v6, v6
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v5, 0, v2, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v6
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v6
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v8, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v5
.Ltmp49:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v11, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v7, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v9, -v5, v7, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v6, v8, 1.0
	v_fmac_f32_e32 v7, v9, v7
	v_div_scale_f32 v9, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v8, v10, v8
	v_mul_f32_e32 v10, v11, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v12, v9, v8
	v_fma_f32 v13, -v5, v10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v6, v12, v9
	v_fmac_f32_e32 v10, v13, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v12, v14, v8
	v_fma_f32 v5, -v5, v10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v12, v9
	v_div_fmas_f32 v5, v5, v7, v10
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v6, v6, v8, v12
	v_div_fixup_f32 v3, v5, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v6, 0x40e00000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v7.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v4, 1, v4
	v_and_b32_e32 v6, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_add3_u32 v3, v5, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 0xffff0000, v4
	v_and_b32_e32 v5, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v25, null, v6, v6, v69
	v_div_scale_f32 v26, s8, v69, v6, v69
	v_rcp_f32_e32 v79, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v25, v79, 1.0
	v_fmac_f32_e32 v79, v93, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v26, v79
	v_fma_f32 v105, -v25, v93, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v105, v79
	v_div_scale_f32 v13, null, v6, v6, v75
	v_div_scale_f32 v21, null, v6, v6, v71
	v_div_scale_f32 v7, null, v6, v6, v78
	v_rcp_f32_e32 v36, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v40, v21
	v_div_scale_f32 v9, null, v6, v6, v77
	v_div_scale_f32 v11, null, v6, v6, v76
	v_div_scale_f32 v17, null, v6, v6, v73
	v_rcp_f32_e32 v33, v7
	v_div_scale_f32 v29, null, v6, v6, v67
	v_div_scale_f32 v32, null, v6, v6, v65
	v_rcp_f32_e32 v34, v9
	v_rcp_f32_e32 v35, v11
	v_rcp_f32_e32 v38, v17
	v_fma_f32 v87, -v13, v36, 1.0
	v_fma_f32 v91, -v21, v40, 1.0
	v_div_scale_f32 v31, null, v6, v6, v66
	v_div_scale_f32 v14, s2, v75, v6, v75
	v_div_scale_f32 v15, null, v6, v6, v74
	v_div_scale_f32 v22, s6, v71, v6, v71
	v_rcp_f32_e32 v81, v29
	v_rcp_f32_e32 v83, v32
	v_fmac_f32_e32 v36, v87, v36
	v_fmac_f32_e32 v40, v91, v40
	v_rcp_f32_e32 v82, v31
	v_fma_f32 v84, -v7, v33, 1.0
	v_div_scale_f32 v19, null, v6, v6, v72
	v_div_scale_f32 v27, null, v6, v6, v68
	v_rcp_f32_e32 v37, v15
	v_fma_f32 v85, -v9, v34, 1.0
	v_fma_f32 v86, -v11, v35, 1.0
	v_fma_f32 v89, -v17, v38, 1.0
	v_mul_f32_e32 v87, v14, v36
	v_mul_f32_e32 v91, v22, v40
	v_div_scale_f32 v8, vcc_lo, v78, v6, v78
	v_fmac_f32_e32 v33, v84, v33
	v_div_scale_f32 v10, s0, v77, v6, v77
	v_div_scale_f32 v12, s1, v76, v6, v76
	v_div_scale_f32 v18, s4, v73, v6, v73
	v_rcp_f32_e32 v39, v19
	v_rcp_f32_e32 v80, v27
	v_fma_f32 v95, -v29, v81, 1.0
	v_fmac_f32_e32 v35, v86, v35
	v_fma_f32 v99, -v13, v87, v14
	v_fmac_f32_e32 v34, v85, v34
	v_fma_f32 v103, -v21, v91, v22
	v_fmac_f32_e32 v38, v89, v38
	v_fma_f32 v96, -v31, v82, 1.0
	v_mul_f32_e32 v84, v8, v33
	v_div_scale_f32 v23, null, v6, v6, v70
	v_div_scale_f32 v30, s10, v67, v6, v67
	v_fma_f32 v88, -v15, v37, 1.0
	v_dual_fmac_f32 v81, v95, v81 :: v_dual_mul_f32 v86, v12, v35
	v_fmac_f32_e32 v87, v99, v36
	v_mul_f32_e32 v85, v10, v34
	v_fmac_f32_e32 v91, v103, v40
	v_mul_f32_e32 v89, v18, v38
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v96, -v7, v84, v8
	v_div_scale_f32 v16, s3, v74, v6, v74
	v_rcp_f32_e32 v41, v23
	v_fma_f32 v90, -v19, v39, 1.0
	v_fma_f32 v94, -v27, v80, 1.0
	v_fmac_f32_e32 v37, v88, v37
	v_mul_f32_e32 v95, v30, v81
	v_fma_f32 v97, -v9, v85, v10
	v_fma_f32 v98, -v11, v86, v12
	v_fma_f32 v101, -v17, v89, v18
	v_fmac_f32_e32 v84, v96, v33
	v_div_scale_f32 v20, s5, v72, v6, v72
	v_div_scale_f32 v28, s9, v68, v6, v68
	v_dual_fmac_f32 v39, v90, v39 :: v_dual_mul_f32 v88, v16, v37
	v_fma_f32 v107, -v29, v95, v30
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_fmac_f32 v85, v97, v34
	v_dual_fmac_f32 v86, v98, v35 :: v_dual_fmac_f32 v89, v101, v38
	v_fma_f32 v7, -v7, v84, v8
	v_fma_f32 v92, -v23, v41, 1.0
	v_mul_f32_e32 v90, v20, v39
	v_fma_f32 v100, -v15, v88, v16
	v_fma_f32 v8, -v9, v85, v10
	v_fma_f32 v9, -v11, v86, v12
	v_fma_f32 v12, -v17, v89, v18
	v_fma_f32 v18, -v32, v83, 1.0
	v_dual_fmac_f32 v95, v107, v81 :: v_dual_mul_f32 v94, v28, v80
	v_div_fmas_f32 v7, v7, v33, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v24, s7, v70, v6, v70
	v_fmac_f32_e32 v41, v92, v41
	v_fma_f32 v102, -v19, v90, v20
	v_fma_f32 v106, -v27, v94, v28
	v_fmac_f32_e32 v88, v100, v37
	v_div_fmas_f32 v8, v8, v34, v85
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v83, v18, v83
	v_div_scale_f32 v18, s1, v65, v6, v65
	v_mul_f32_e32 v92, v24, v41
	v_fmac_f32_e32 v90, v102, v39
	v_fmac_f32_e32 v94, v106, v80
	v_fma_f32 v11, -v15, v88, v16
	v_fma_f32 v16, -v25, v93, v26
	v_mul_f32_e32 v25, v18, v83
	v_fma_f32 v104, -v23, v92, v24
	v_fma_f32 v10, -v13, v87, v14
	v_fma_f32 v13, -v19, v90, v20
	v_div_scale_f32 v17, s0, v66, v6, v66
	v_fma_f32 v19, -v27, v94, v28
	v_fma_f32 v27, -v32, v25, v18
	v_fmac_f32_e32 v92, v104, v41
	v_fma_f32 v14, -v21, v91, v22
	v_div_scale_f32 v21, null, v6, v6, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, v27, v83 :: v_dual_mul_f32 v20, v17, v82
	v_fma_f32 v15, -v23, v92, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v21
	v_div_scale_f32 v26, null, v6, v6, v63
	v_fma_f32 v23, -v31, v20, v17
	v_div_fmas_f32 v9, v9, v35, v86
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v22, -v29, v95, v30
	v_div_fmas_f32 v10, v10, v36, v87
	v_fmac_f32_e32 v20, v23, v82
	v_rcp_f32_e32 v23, v26
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v28, -v21, v24, 1.0
	v_div_fmas_f32 v11, v11, v37, v88
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v17, -v31, v20, v17
	v_div_fmas_f32 v12, v12, v38, v89
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v24, v28, v24
	v_div_fmas_f32 v13, v13, v39, v90
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v28, -v26, v23, 1.0
	v_div_fmas_f32 v14, v14, v40, v91
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v27, s2, v64, v6, v64
	v_div_fmas_f32 v15, v15, v41, v92
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v23, v28, v23
	v_div_fmas_f32 v16, v16, v79, v93
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v18, -v32, v25, v18
	v_div_fmas_f32 v19, v19, v80, v94
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v28, null, v5, v5, v62
	v_div_fmas_f32 v22, v22, v81, v95
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, null, v5, v5, v55
	v_div_fmas_f32 v17, v17, v82, v20
	v_mul_f32_e32 v20, v27, v24
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v29, s0, v63, v6, v63
	v_div_fmas_f32 v18, v18, v83, v25
	v_rcp_f32_e32 v25, v28
	v_fma_f32 v30, -v21, v20, v27
	v_div_scale_f32 v32, null, v5, v5, v61
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v31, v29, v23 :: v_dual_fmac_f32 v20, v30, v24
	v_rcp_f32_e32 v33, v32
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v36, null, v5, v5, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v28, v25, 1.0
	v_fma_f32 v21, -v21, v20, v27
	v_div_scale_f32 v27, null, v5, v5, v60
	v_fma_f32 v30, -v26, v31, v29
	v_fmac_f32_e32 v25, v34, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v32, v33, 1.0
	v_rcp_f32_e32 v34, v27
	v_div_fmas_f32 v20, v21, v24, v20
	v_fmac_f32_e32 v31, v30, v23
	v_div_scale_f32 v30, s1, v62, v5, v62
	v_fmac_f32_e32 v33, v35, v33
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v26, v31, v29
	v_mul_f32_e32 v24, v30, v25
	v_div_scale_f32 v26, s2, v61, v5, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v27, v34, 1.0
	v_rcp_f32_e32 v38, v36
	v_fma_f32 v35, -v28, v24, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v37, v26, v33
	v_div_fmas_f32 v21, v21, v23, v31
	v_fmac_f32_e32 v34, v29, v34
	v_div_scale_f32 v29, s3, v60, v5, v60
	v_fmac_f32_e32 v24, v35, v25
	v_fma_f32 v23, -v32, v37, v26
	v_div_fixup_f32 v7, v7, v6, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v31, v29, v34
	v_div_fixup_f32 v8, v8, v6, v77
	v_div_fixup_f32 v9, v9, v6, v76
	v_div_fixup_f32 v10, v10, v6, v75
	v_div_fixup_f32 v11, v11, v6, v74
	v_div_fixup_f32 v12, v12, v6, v73
	v_div_fixup_f32 v13, v13, v6, v72
	v_div_fixup_f32 v14, v14, v6, v71
	v_div_fixup_f32 v15, v15, v6, v70
	v_div_fixup_f32 v16, v16, v6, v69
	v_div_fixup_f32 v19, v19, v6, v68
	v_div_fixup_f32 v22, v22, v6, v67
	v_div_fixup_f32 v17, v17, v6, v66
	v_div_fixup_f32 v18, v18, v6, v65
	v_div_fixup_f32 v20, v20, v6, v64
	v_div_fixup_f32 v6, v21, v6, v63
	v_fma_f32 v21, -v28, v24, v30
	v_fmac_f32_e32 v37, v23, v33
	v_fma_f32 v23, -v27, v31, v29
	v_div_scale_f32 v30, null, v5, v5, v58
	v_fma_f32 v28, -v36, v38, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v23, v34
	v_rcp_f32_e32 v23, v30
	v_div_fmas_f32 v21, v21, v25, v24
	v_fmac_f32_e32 v38, v28, v38
	v_div_scale_f32 v25, s0, v59, v5, v59
	v_fma_f32 v24, -v32, v37, v26
	v_fma_f32 v26, -v27, v31, v29
	v_div_scale_f32 v28, null, v5, v5, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v27, v25, v38
	v_fma_f32 v29, -v30, v23, 1.0
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v33, v37
	v_fma_f32 v32, -v36, v27, v25
	v_fmac_f32_e32 v23, v29, v23
	v_div_scale_f32 v29, s1, v58, v5, v58
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v27, v32, v38
	v_div_fmas_f32 v26, v26, v34, v31
	v_mul_f32_e32 v32, v29, v23
	v_rcp_f32_e32 v31, v28
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v25, -v36, v27, v25
	v_div_scale_f32 v34, null, v5, v5, v56
	v_fma_f32 v35, -v30, v32, v29
	v_div_fixup_f32 v24, v24, v5, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v38, v27
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v32, v35, v23
	v_fma_f32 v33, -v28, v31, 1.0
	v_div_scale_f32 v35, null, v5, v5, v54
	v_div_fixup_f32 v26, v26, v5, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v30, v32, v29
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, s2, v57, v5, v57
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v29, v23, v32
	v_div_scale_f32 v29, null, v5, v5, v52
	v_mul_f32_e32 v27, v33, v31
	v_fma_f32 v37, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v23, v5, v58
	v_rcp_f32_e32 v32, v29
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v30, -v28, v27, v33
	v_fmac_f32_e32 v36, v37, v36
	v_fma_f32 v37, -v35, v38, 1.0
	v_div_scale_f32 v58, s2, v52, v5, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v30, v31
	v_div_scale_f32 v30, s0, v56, v5, v56
	v_fma_f32 v40, -v29, v32, 1.0
	v_div_fixup_f32 v25, v25, v5, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v28, v27, v33
	v_mul_f32_e32 v33, v30, v36
	v_fma_f32 v59, -v39, v41, 1.0
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v40, null, v5, v5, v53
	v_div_fmas_f32 v27, v28, v31, v27
	v_fma_f32 v28, -v34, v33, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v61, v58, v32 :: v_dual_fmac_f32 v38, v37, v38
	v_div_scale_f32 v37, s1, v54, v5, v54
	v_fmac_f32_e32 v33, v28, v36
	v_rcp_f32_e32 v60, v40
	v_fmac_f32_e32 v41, v59, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v37, v38
	v_div_scale_f32 v59, s3, v55, v5, v55
	v_fma_f32 v30, -v34, v33, v30
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v35, v31, v37
	v_div_fixup_f32 v27, v27, v5, v57
	v_mul_f32_e32 v34, v59, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v40, v60, 1.0
	v_div_fmas_f32 v30, v30, v36, v33
	v_fmac_f32_e32 v31, v28, v38
	v_fma_f32 v28, -v29, v61, v58
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v60, v57, v60
	v_div_fixup_f32 v30, v30, v5, v56
	v_fma_f32 v33, -v35, v31, v37
	v_fmac_f32_e32 v61, v28, v32
	v_fma_f32 v28, -v39, v34, v59
	v_div_scale_f32 v35, s0, v53, v5, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v33, v38, v31
	v_div_scale_f32 v33, null, v5, v5, v51
	v_fmac_f32_e32 v34, v28, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v35, v60
	v_fma_f32 v29, -v29, v61, v58
	v_rcp_f32_e32 v37, v33
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v38, null, v5, v5, v48
	v_fma_f32 v36, -v40, v28, v35
	v_div_fmas_f32 v29, v29, v32, v61
	v_fma_f32 v32, -v39, v34, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v5, v54
	v_fmac_f32_e32 v28, v36, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v33, v37, 1.0
	v_div_fmas_f32 v32, v32, v41, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v54, null, v5, v5, v42
	v_fmac_f32_e32 v37, v36, v37
	v_div_scale_f32 v36, null, v5, v5, v49
	v_fma_f32 v34, -v40, v28, v35
	v_div_scale_f32 v35, null, v5, v5, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_fixup_f32 v32, v32, v5, v55
	v_div_fmas_f32 v28, v34, v60, v28
	v_div_scale_f32 v39, vcc_lo, v51, v5, v51
	v_rcp_f32_e32 v34, v35
	v_div_fixup_f32 v29, v29, v5, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v28, v28, v5, v53
	v_mul_f32_e32 v53, v39, v37
	v_rcp_f32_e32 v52, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v36, v40, 1.0
	v_rcp_f32_e32 v56, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v57, -v33, v53, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v40, v55, v40
	v_div_scale_f32 v55, s1, v49, v5, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v57, v37
	v_fma_f32 v41, -v35, v34, 1.0
	v_fma_f32 v58, -v38, v52, 1.0
	v_mul_f32_e32 v61, v55, v40
	v_fma_f32 v60, -v54, v56, 1.0
	v_fma_f32 v33, -v33, v53, v39
	v_div_fixup_f32 v21, v21, v5, v62
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v36, v61, v55
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s0, v50, v5, v50
	v_div_fmas_f32 v33, v33, v37, v53
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v61, v39, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v59, v41, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v58, v52
	v_div_scale_f32 v58, s2, v48, v5, v48
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s3, v42, v5, v42
	v_fma_f32 v57, -v35, v59, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v62, v58, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v63, v60, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v59, v57, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v57, -v38, v62, v58
	v_fma_f32 v37, -v54, v63, v60
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v35, v59, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v62, v57, v52
	v_fmac_f32_e32 v63, v37, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v34, v35, v34, v59
	v_fma_f32 v35, -v36, v61, v55
	v_fma_f32 v36, -v38, v62, v58
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v54, v63, v60
	v_div_fixup_f32 v33, v33, v5, v51
	v_div_fmas_f32 v35, v35, v40, v61
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v34, v34, v5, v50
	v_div_fmas_f32 v36, v36, v52, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v35, v35, v5, v49
	v_div_fmas_f32 v37, v37, v56, v63
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v36, v36, v5, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v37, v5, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v37, v6
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v38, v23
	v_cvt_i32_f32_e32 v39, v31
	v_cvt_i32_f32_e32 v31, v32
	v_cvt_i32_f32_e32 v32, v28
	v_cvt_i32_f32_e32 v40, v5
	v_and_b32_e32 v5, 15, v7
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v9, 15, v11
	v_and_b32_e32 v11, 15, v13
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v15, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v37
	v_and_b32_e32 v23, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 15, v27
	v_and_b32_e32 v27, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 0x160, v0
	v_lshlrev_b32_e32 v37, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v10
	v_and_b32_e32 v10, 15, v12
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v16, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v25
	v_and_b32_e32 v25, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v38, 7, v47
	v_xor_b32_e32 v42, v46, v30
	v_lshlrev_b32_e32 v46, 7, v0
	v_and_b32_e32 v37, 0x60, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v33, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v41, 0x200, v1
	v_add3_u32 v38, 0, v28, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v32, 0x3600, v46, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v38, v41, v42
	v_xad_u32 v38, v32, v45, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[5:8]
	ds_store_b128 v37, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v38
	ds_load_b128 v[13:16], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v21
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[21:24]
	ds_store_b128 v37, v[28:31] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v38
	ds_load_b128 v[29:32], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[9:12]
	ds_store_b128 v37, v[17:20] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v38
	ds_load_b128 v[17:20], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v39
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v36
	v_and_b32_e32 v36, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[25:28]
	ds_store_b128 v37, v[33:36] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v38
	ds_load_b128 v[33:36], v38 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s29, 31
.Ltmp50:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v45
.Ltmp51:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v39
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s30, s0
	s_lshl_b32 s0, s0, 5
	v_add3_u32 v2, s2, s1, v2
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v12, v29, 4, v21
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v16
	v_add3_u32 v16, v16, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v30, 4, v22
	v_lshl_or_b32 v14, v31, 4, v23
	v_lshl_or_b32 v15, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v33, 4, v25
	v_lshl_or_b32 v18, v34, 4, v26
	v_lshl_or_b32 v19, v35, 4, v27
	v_lshl_or_b32 v20, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_or_b16 v9.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v19.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v43
	v_lshrrev_b32_e32 v4, 2, v44
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v2, 2, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s12
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s29, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	v_add3_u32 v1, 0, v1, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v21, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v16, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v3, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp52:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 136
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 136
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9940
; TotalNumSgprs: 46
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 136
; Occupancy: 10
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
