	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_and_b32_e32 v15, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s24, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s17, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s17, s16
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s20, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v14, 15, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v13, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v70, 0
	s_lshl_b32 s14, s4, 6
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_bfe_i32 v7, v0, 2, 1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v11, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v1, 3, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s20, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s24, 31
	v_bfe_i32 v10, v0, 4, 1
	v_bfe_i32 v12, v0, 3, 1
	v_and_b32_e32 v6, 0x160, v6
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v7, 0x90, v7
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v16, 0xf70, v11
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v11, 0xe00, v11
	v_or_b32_e32 v18, s14, v14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s22, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s20, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s22, 27
.Ltmp20:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_and_b32_e32 v8, 24, v1
	v_and_b32_e32 v1, 0x778, v1
	v_and_b32_e32 v10, 0x90, v10
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v12, 0x90, v12
	v_or_b32_e32 v17, v7, v6
	v_or3_b32 v6, v6, v11, v7
	v_or_b32_e32 v11, 32, v18
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s1, s0
.Ltmp22:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s25, s0, 5
	v_xor_b32_e32 v1, v10, v1
	v_xor_b32_e32 v16, v12, v16
	v_or_b32_e32 v10, 16, v18
	v_or_b32_e32 v12, 48, v18
	v_mul_lo_u32 v32, v11, s25
	v_lshrrev_b32_e32 v11, 6, v0
	v_mul_lo_u32 v5, s24, v3
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v3, s17, 8, v3
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v2, 1, v0
	v_mul_lo_u32 v31, v10, s25
	v_mul_lo_u32 v34, v12, s25
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v11, 2, v11
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v12, 1, v13
	s_lshl_b32 s0, s16, 8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_or_b32_e32 v44, s2, v0
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v3, s0, v3
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v9, 4, v2
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v10, 0x1c0, v10
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v11, 0, v11
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v55, 0, v12
	v_mul_lo_u32 v30, v18, s25
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v18, 28, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v0, 0x80, v3
	v_add3_u32 v20, v11, v10, v2
	v_add3_u32 v21, v55, v12, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v2, s14, v4
	v_xor_b32_e32 v7, 16, v17
	v_xor_b32_e32 v19, 16, v6
	v_mad_u64_u32 v[10:11], null, s24, v0, v[9:10]
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s21, s2, s24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mad_u64_u32 v[11:12], null, s24, v2, v[8:9]
	v_add3_u32 v60, v5, v9, s21
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v71, 0, v1
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v76, 0, v7
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v77, 0, v6
	v_dual_mov_b32 v0, s36 :: v_dual_add_nc_u32 v73, 0, v16
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v75, 0, v17
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v83, 0, v19
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v1, s37
	v_dual_mov_b32 v2, s38 :: v_dual_mov_b32 v3, s39
	v_dual_mov_b32 v4, s40 :: v_dual_mov_b32 v5, s41
	v_dual_mov_b32 v6, s42 :: v_dual_mov_b32 v7, s43
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v90, v20, v18
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v92, v21, v18
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v12, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s20, 6
.Ltmp26:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v104, s3, v8
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v105, s3, v9
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v106, s3, v11
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v107, s3, v60
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v108, s3, v10
	.loc	1 313 27 is_stmt 1              ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v104
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s24, v105
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s26, s3, 32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v94, 0x80000000, v106, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v98, 0x80000000, v108, s0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[102:103], v94, s[16:19], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v94, 0x80000000, v107, s0
	s_clause 0x1
	buffer_load_b128 v[98:101], v98, s[4:7], 0 offen
	buffer_load_b128 v[94:97], v94, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v71, v[102:103] offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[94:97]
	ds_store_b128 v73, v[98:101] offset:4096
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v94, 32, v104
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v95, 32, v105
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v98, 32, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v94
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v94, 32, v106
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s24, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[102:103], v94, s[16:19], 0 offen
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v94, 32, v107
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	buffer_load_b128 v[98:101], v98, s[4:7], 0 offen
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s25
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[94:97], v94, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v71, v[102:103] offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[94:97] offset:8192
	ds_store_b128 v73, v[98:101] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v75 offset:16384
	ds_load_b128 v[126:129], v75 offset:16896
	ds_load_b128 v[142:145], v75 offset:17408
	ds_load_b128 v[158:161], v75 offset:17920
	ds_load_b128 v[114:117], v76 offset:16384
	ds_load_b128 v[130:133], v76 offset:16896
	ds_load_b128 v[146:149], v76 offset:17408
	ds_load_b128 v[162:165], v76 offset:17920
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[150:153], v77
	ds_load_b128 v[166:169], v77 offset:4096
	ds_load_b128 v[154:157], v83
	ds_load_b128 v[170:173], v83 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[150:153], v[110:113], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[166:169], v[110:113], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[126:129], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[154:157], v[114:117], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[170:173], v[114:117], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[150:153], v[126:129], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[170:173], v[130:133], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[166:169], v[142:145], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[154:157], v[130:133], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[142:145], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[170:173], v[146:149], v[134:141] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v113
	v_wmma_i32_16x16x16_iu8 v[126:133], v[154:157], v[146:149], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[158:161], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[154:157], v[162:165], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[166:169], v[158:161], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v158, v94
	v_cvt_f32_i32_e32 v159, v95
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v94, v30, s0, 1
	v_add_lshl_u32 v95, v31, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v160, v96
	v_cvt_f32_i32_e32 v161, v97
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v96, v32, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_add_lshl_u32 v97, v34, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s15
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	s_clause 0x1
	buffer_load_u16 v94, v94, s[20:23], 0 offen
	buffer_load_u16 v95, v95, s[20:23], 0 offen
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[150:157], v[170:173], v[162:165], v[150:157] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v96, v96, s[20:23], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v162, v98
	v_cvt_f32_i32_e32 v163, v99
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v97, v97, s[20:23], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v164, v100
	v_cvt_f32_i32_e32 v165, v101
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v167, 16, v95
	v_lshlrev_b32_e32 v166, 16, v94
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v94, v44, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s26, 5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v113, v113, v167 :: v_dual_lshlrev_b32 v168, 16, v96
	v_mul_f32_e32 v103, v103, v166
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_lshlrev_b32 v169, 16, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v158, v158, v166
	v_mul_f32_e32 v159, v159, v166
	v_mul_f32_e32 v160, v160, v166
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v161, v161, v166
	v_mul_f32_e32 v163, v163, v166
	v_dual_mul_f32 v165, v165, v166 :: v_dual_mul_f32 v110, v110, v167
	v_mul_f32_e32 v127, v127, v168
	v_mul_f32_e32 v111, v111, v167
	v_dual_mul_f32 v112, v112, v167 :: v_dual_mul_f32 v129, v129, v168
	v_dual_mul_f32 v114, v114, v167 :: v_dual_mul_f32 v131, v131, v168
	v_dual_mul_f32 v116, v116, v167 :: v_dual_mul_f32 v133, v133, v168
	v_dual_mul_f32 v120, v120, v167 :: v_dual_mul_f32 v137, v137, v168
	v_dual_mul_f32 v125, v125, v167 :: v_dual_mul_f32 v126, v126, v168
	v_dual_mul_f32 v128, v128, v168 :: v_dual_mul_f32 v143, v143, v169
	v_dual_mul_f32 v130, v130, v168 :: v_dual_mul_f32 v145, v145, v169
	v_dual_mul_f32 v132, v132, v168 :: v_dual_mul_f32 v147, v147, v169
	v_dual_mul_f32 v134, v134, v168 :: v_dual_mul_f32 v149, v149, v169
	v_dual_mul_f32 v136, v136, v168 :: v_dual_mul_f32 v151, v151, v169
	v_dual_mul_f32 v138, v138, v168 :: v_dual_mul_f32 v153, v153, v169
	v_dual_mul_f32 v140, v140, v168 :: v_dual_mul_f32 v155, v155, v169
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v118, v167 :: v_dual_mul_f32 v135, v135, v168
	v_dual_mul_f32 v122, v122, v167 :: v_dual_mul_f32 v139, v139, v168
	v_dual_mul_f32 v124, v124, v167 :: v_dual_mul_f32 v141, v141, v168
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v104, v104, v166
	v_mul_f32_e32 v105, v105, v166
	v_mul_f32_e32 v109, v109, v166
	v_dual_mul_f32 v115, v115, v167 :: v_dual_mul_f32 v102, v102, v166
	v_dual_mul_f32 v119, v119, v167 :: v_dual_mul_f32 v162, v162, v166
	v_mul_f32_e32 v164, v164, v166
	v_dual_mul_f32 v106, v106, v166 :: v_dual_mul_f32 v117, v117, v167
	v_mul_f32_e32 v121, v121, v167
	v_mul_f32_e32 v107, v107, v166
	v_dual_mul_f32 v108, v108, v166 :: v_dual_mul_f32 v123, v123, v167
	s_waitcnt vmcnt(0)
	ds_store_b16 v90, v94 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[94:97], v55 offset:20480
	ds_load_b128 v[98:101], v55 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v170, 16, v94
	v_lshlrev_b32_e32 v171, 16, v95
	v_lshlrev_b32_e32 v172, 16, v96
	v_lshlrev_b32_e32 v173, 16, v97
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v174, 16, v98
	v_lshlrev_b32_e32 v175, 16, v99
	v_lshlrev_b32_e32 v176, 16, v100
	v_lshlrev_b32_e32 v177, 16, v101
	v_and_b32_e32 v94, 0xffff0000, v94
	v_and_b32_e32 v95, 0xffff0000, v95
	v_and_b32_e32 v96, 0xffff0000, v96
	v_and_b32_e32 v97, 0xffff0000, v97
	v_and_b32_e32 v98, 0xffff0000, v98
	v_and_b32_e32 v99, 0xffff0000, v99
	v_and_b32_e32 v100, 0xffff0000, v100
	v_and_b32_e32 v101, 0xffff0000, v101
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v142, v142, v169 :: v_dual_fmac_f32 v93, v159, v171
	v_dual_mul_f32 v144, v144, v169 :: v_dual_fmac_f32 v63, v158, v170
	v_dual_mul_f32 v146, v146, v169 :: v_dual_fmac_f32 v91, v160, v172
	v_dual_mul_f32 v148, v148, v169 :: v_dual_fmac_f32 v87, v163, v175
	v_dual_mul_f32 v150, v150, v169 :: v_dual_fmac_f32 v81, v104, v96
	v_dual_mul_f32 v152, v152, v169 :: v_dual_fmac_f32 v79, v106, v98
	v_dual_mul_f32 v154, v154, v169 :: v_dual_fmac_f32 v69, v111, v171
	v_dual_mul_f32 v156, v156, v169 :: v_dual_fmac_f32 v65, v115, v175
	v_dual_mul_f32 v157, v157, v169 :: v_dual_fmac_f32 v88, v162, v174
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v161, v173 :: v_dual_fmac_f32 v86, v164, v176
	v_dual_fmac_f32 v85, v165, v177 :: v_dual_fmac_f32 v84, v102, v94
	v_dual_fmac_f32 v82, v103, v95 :: v_dual_fmac_f32 v67, v113, v173
	v_dual_fmac_f32 v70, v110, v170 :: v_dual_fmac_f32 v49, v128, v172
	v_dual_fmac_f32 v68, v112, v172 :: v_dual_fmac_f32 v51, v126, v170
	v_dual_fmac_f32 v66, v114, v174 :: v_dual_fmac_f32 v45, v132, v176
	v_dual_fmac_f32 v64, v116, v176 :: v_dual_fmac_f32 v47, v130, v174
	v_dual_fmac_f32 v62, v117, v177 :: v_dual_fmac_f32 v41, v135, v95
	v_dual_fmac_f32 v58, v120, v96 :: v_dual_fmac_f32 v43, v133, v177
	v_dual_fmac_f32 v50, v127, v171 :: v_dual_fmac_f32 v33, v142, v170
	v_dual_fmac_f32 v48, v129, v173 :: v_dual_fmac_f32 v29, v143, v171
	v_dual_fmac_f32 v46, v131, v175 :: v_dual_fmac_f32 v27, v145, v173
	v_dual_fmac_f32 v42, v134, v94 :: v_dual_fmac_f32 v25, v147, v175
	v_dual_fmac_f32 v40, v136, v96 :: v_dual_fmac_f32 v23, v149, v177
	v_dual_fmac_f32 v38, v138, v98 :: v_dual_fmac_f32 v21, v151, v95
	v_dual_fmac_f32 v36, v140, v100 :: v_dual_fmac_f32 v19, v153, v97
	v_dual_fmac_f32 v28, v144, v172 :: v_dual_fmac_f32 v17, v155, v99
	v_fmac_f32_e32 v26, v146, v174
	v_fmac_f32_e32 v24, v148, v176
	v_fmac_f32_e32 v22, v150, v94
	v_fmac_f32_e32 v20, v152, v96
	v_fmac_f32_e32 v18, v154, v98
	v_fmac_f32_e32 v16, v156, v100
	v_fmac_f32_e32 v12, v157, v101
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	ds_load_b128 v[110:113], v75 offset:18432
	ds_load_b128 v[126:129], v75 offset:18944
	ds_load_b128 v[142:145], v75 offset:19456
	ds_load_b128 v[158:161], v75 offset:19968
	ds_load_b128 v[114:117], v76 offset:18432
	ds_load_b128 v[130:133], v76 offset:18944
	ds_load_b128 v[146:149], v76 offset:19456
	ds_load_b128 v[162:165], v76 offset:19968
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[150:153], v77 offset:8192
	ds_load_b128 v[166:169], v77 offset:12288
	ds_load_b128 v[154:157], v83 offset:8192
	ds_load_b128 v[170:173], v83 offset:12288
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v80, v105, v97 :: v_dual_fmac_f32 v61, v118, v94
	v_dual_fmac_f32 v78, v107, v99 :: v_dual_fmac_f32 v57, v121, v97
	v_dual_fmac_f32 v74, v108, v100 :: v_dual_fmac_f32 v59, v119, v95
	v_dual_fmac_f32 v72, v109, v101 :: v_dual_fmac_f32 v53, v124, v100
	v_dual_fmac_f32 v56, v122, v98 :: v_dual_fmac_f32 v39, v137, v97
	v_dual_fmac_f32 v54, v123, v99 :: v_dual_fmac_f32 v35, v141, v101
	v_dual_fmac_f32 v52, v125, v101 :: v_dual_fmac_f32 v37, v139, v99
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[150:153], v[110:113], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[166:169], v[110:113], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[126:129], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[154:157], v[114:117], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[170:173], v[114:117], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[150:153], v[126:129], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[170:173], v[130:133], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[166:169], v[142:145], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[154:157], v[130:133], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[142:145], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[170:173], v[146:149], v[134:141] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v113
	v_wmma_i32_16x16x16_iu8 v[126:133], v[154:157], v[146:149], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[158:161], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[154:157], v[162:165], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[166:169], v[158:161], v[0:7] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v158, v30, s0, 1
	v_add_lshl_u32 v159, v31, s0, 1
	v_add_lshl_u32 v160, v32, s0, 1
	v_add_lshl_u32 v161, v34, s0, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s0, s0, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v158, 0x80000000, v158 :: v_dual_cndmask_b32 v159, 0x80000000, v159
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[150:157], v[170:173], v[162:165], v[150:157] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v160, 0x80000000, v160 :: v_dual_cndmask_b32 v161, 0x80000000, v161
	s_clause 0x1
	buffer_load_u16 v158, v158, s[20:23], 0 offen
	buffer_load_u16 v159, v159, s[20:23], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v162, v44, s0, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v160, v160, s[20:23], 0 offen
	buffer_load_u16 v161, v161, s[20:23], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v161, 16, v161
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v117, v117, v159
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v115, v115, v159 :: v_dual_lshlrev_b32 v160, 16, v160
	v_mul_f32_e32 v169, v100, v158
	v_mul_f32_e32 v163, v94, v158
	v_dual_mul_f32 v164, v95, v158 :: v_dual_mul_f32 v121, v121, v159
	v_mul_f32_e32 v165, v96, v158
	v_dual_mul_f32 v166, v97, v158 :: v_dual_mul_f32 v123, v123, v159
	v_mul_f32_e32 v167, v98, v158
	v_dual_mul_f32 v168, v99, v158 :: v_dual_mul_f32 v125, v125, v159
	v_dual_mul_f32 v170, v101, v158 :: v_dual_mul_f32 v127, v127, v160
	v_dual_mul_f32 v171, v102, v158 :: v_dual_mul_f32 v112, v112, v159
	v_dual_mul_f32 v172, v103, v158 :: v_dual_mul_f32 v129, v129, v160
	v_dual_mul_f32 v173, v104, v158 :: v_dual_mul_f32 v110, v110, v159
	v_dual_mul_f32 v174, v105, v158 :: v_dual_mul_f32 v131, v131, v160
	v_dual_mul_f32 v175, v106, v158 :: v_dual_mul_f32 v116, v116, v159
	v_dual_mul_f32 v176, v107, v158 :: v_dual_mul_f32 v133, v133, v160
	v_dual_mul_f32 v177, v108, v158 :: v_dual_mul_f32 v114, v114, v159
	v_dual_mul_f32 v158, v109, v158 :: v_dual_mul_f32 v135, v135, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v111, v111, v159
	v_mul_f32_e32 v113, v113, v159
	v_dual_mul_f32 v118, v118, v159 :: v_dual_mul_f32 v137, v137, v160
	v_dual_mul_f32 v120, v120, v159 :: v_dual_mul_f32 v139, v139, v160
	v_dual_mul_f32 v122, v122, v159 :: v_dual_mul_f32 v141, v141, v160
	v_dual_mul_f32 v124, v124, v159 :: v_dual_mul_f32 v143, v143, v161
	v_dual_mul_f32 v126, v126, v160 :: v_dual_mul_f32 v145, v145, v161
	v_dual_mul_f32 v128, v128, v160 :: v_dual_mul_f32 v147, v147, v161
	v_dual_mul_f32 v130, v130, v160 :: v_dual_mul_f32 v149, v149, v161
	v_dual_mul_f32 v132, v132, v160 :: v_dual_mul_f32 v151, v151, v161
	v_dual_mul_f32 v134, v134, v160 :: v_dual_mul_f32 v153, v153, v161
	v_dual_mul_f32 v136, v136, v160 :: v_dual_mul_f32 v155, v155, v161
	v_dual_mul_f32 v138, v138, v160 :: v_dual_mul_f32 v157, v157, v161
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v119, v119, v159 :: v_dual_lshlrev_b32 v162, 16, v162
	ds_store_b32 v92, v162 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v55 offset:20480
	ds_load_b128 v[98:101], v55 offset:20496
	ds_load_b128 v[102:105], v55 offset:20992
	ds_load_b128 v[106:109], v55 offset:21008
	v_mul_f32_e32 v140, v140, v160
	v_mul_f32_e32 v142, v142, v161
	v_mul_f32_e32 v144, v144, v161
	v_mul_f32_e32 v146, v146, v161
	v_mul_f32_e32 v148, v148, v161
	v_mul_f32_e32 v150, v150, v161
	v_mul_f32_e32 v152, v152, v161
	v_mul_f32_e32 v154, v154, v161
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v156, v156, v161 :: v_dual_fmac_f32 v63, v163, v94
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v93, v164, v95
	v_fmac_f32_e32 v91, v165, v96
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v89, v166, v97 :: v_dual_fmac_f32 v88, v167, v98
	v_dual_fmac_f32 v87, v168, v99 :: v_dual_fmac_f32 v86, v169, v100
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v85, v170, v101 :: v_dual_fmac_f32 v84, v171, v102
	v_dual_fmac_f32 v67, v113, v97 :: v_dual_fmac_f32 v82, v172, v103
	v_fmac_f32_e32 v57, v121, v105
	v_dual_fmac_f32 v81, v173, v104 :: v_dual_fmac_f32 v80, v174, v105
	v_fmac_f32_e32 v59, v119, v103
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v79, v175, v106 :: v_dual_fmac_f32 v78, v176, v107
	v_dual_fmac_f32 v51, v126, v94 :: v_dual_fmac_f32 v74, v177, v108
	v_fmac_f32_e32 v47, v130, v98
	v_dual_fmac_f32 v72, v158, v109 :: v_dual_fmac_f32 v53, v124, v108
	v_dual_fmac_f32 v70, v110, v94 :: v_dual_fmac_f32 v49, v128, v96
	v_dual_fmac_f32 v69, v111, v95 :: v_dual_fmac_f32 v68, v112, v96
	v_dual_fmac_f32 v43, v133, v101 :: v_dual_fmac_f32 v66, v114, v98
	v_fmac_f32_e32 v45, v132, v100
	v_dual_fmac_f32 v65, v115, v99 :: v_dual_fmac_f32 v64, v116, v100
	v_dual_fmac_f32 v41, v135, v103 :: v_dual_fmac_f32 v62, v117, v101
	v_fmac_f32_e32 v37, v139, v107
	v_dual_fmac_f32 v61, v118, v102 :: v_dual_fmac_f32 v58, v120, v104
	v_dual_fmac_f32 v39, v137, v105 :: v_dual_fmac_f32 v56, v122, v106
	v_dual_fmac_f32 v35, v141, v109 :: v_dual_fmac_f32 v54, v123, v107
	v_dual_fmac_f32 v33, v142, v94 :: v_dual_fmac_f32 v52, v125, v109
	v_fmac_f32_e32 v29, v143, v95
	v_dual_fmac_f32 v50, v127, v95 :: v_dual_fmac_f32 v27, v145, v97
	v_dual_fmac_f32 v48, v129, v97 :: v_dual_fmac_f32 v25, v147, v99
	v_dual_fmac_f32 v46, v131, v99 :: v_dual_fmac_f32 v23, v149, v101
	v_dual_fmac_f32 v42, v134, v102 :: v_dual_fmac_f32 v21, v151, v103
	v_dual_fmac_f32 v40, v136, v104 :: v_dual_fmac_f32 v19, v153, v105
	v_dual_fmac_f32 v38, v138, v106 :: v_dual_fmac_f32 v17, v155, v107
	v_fmac_f32_e32 v36, v140, v108
	v_fmac_f32_e32 v28, v144, v96
	v_fmac_f32_e32 v26, v146, v98
	v_fmac_f32_e32 v24, v148, v100
	v_fmac_f32_e32 v22, v150, v102
	v_fmac_f32_e32 v20, v152, v104
	v_fmac_f32_e32 v18, v154, v106
	v_fmac_f32_e32 v16, v156, v108
	v_fmac_f32_e32 v12, v157, v109
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v0, v63, v63 :: v_dual_max_f32 v1, v93, v93
	v_dual_max_f32 v60, v68, v68 :: v_dual_max_f32 v63, v65, v65
	v_max_f32_e32 v44, v70, v70
	v_dual_max_f32 v4, v88, v88 :: v_dual_max_f32 v5, v87, v87
	v_dual_max_f32 v6, v86, v86 :: v_dual_max_f32 v7, v85, v85
	v_max_f32_e32 v8, v84, v84
	v_dual_max_f32 v32, v74, v74 :: v_dual_max_f32 v55, v69, v69
	v_max_f32_e32 v73, 0, v60
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v59, v59, v59
	v_dual_max_f32 v60, v66, v66 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v2, v91, v91 :: v_dual_max_f32 v3, v89, v89
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v11, v80, v80
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, v82, v82
	v_max_f32_e32 v34, v72, v72
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v72, 0, v55
	v_max_f32_e32 v55, v67, v67
	v_dual_max_f32 v76, 0, v63 :: v_dual_max_f32 v53, v53, v53
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v80, 0, v59 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v82, 0, v57 :: v_dual_max_f32 v47, v47, v47
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v50, v50, v50
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v97, 0, v40
	v_dual_max_f32 v98, 0, v39 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v102, 0, v33 :: v_dual_max_f32 v23, v23, v23
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v24, v24, v24
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v10, v81, v81 :: v_dual_max_f32 v31, v78, v78
	v_dual_max_f32 v30, v79, v79 :: v_dual_max_f32 v9, 0, v9
	v_max_f32_e32 v32, 0, v32
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v85, 0, v53
	v_dual_max_f32 v74, 0, v55 :: v_dual_max_f32 v55, v61, v61
	v_dual_max_f32 v83, 0, v56 :: v_dual_max_f32 v78, 0, v62
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v54, v54, v54
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v89, 0, v49 :: v_dual_max_f32 v86, 0, v52
	v_max_f32_e32 v43, v43, v43
	v_dual_max_f32 v91, 0, v47 :: v_dual_max_f32 v88, 0, v50
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v92, 0, v46
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v42, v42, v42
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v38, v38, v38
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v103, 0, v29 :: v_dual_max_f32 v106, 0, v26
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v109, 0, v23 :: v_dual_max_f32 v108, 0, v24
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v16, v16, v16
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v69, v2, v2 :: v_dual_max_f32 v12, v12, v12
	v_mul_f32_e32 v65, v6, v6
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v75, 0, v60
	v_max_f32_e32 v79, 0, v55
	v_max_f32_e32 v77, 0, v64
	v_max_f32_e32 v81, 0, v58
	v_dual_max_f32 v84, 0, v54 :: v_dual_max_f32 v93, 0, v45
	v_dual_max_f32 v87, 0, v51 :: v_dual_max_f32 v90, 0, v48
	v_dual_max_f32 v95, 0, v42 :: v_dual_max_f32 v96, 0, v41
	v_dual_max_f32 v101, 0, v36 :: v_dual_max_f32 v100, 0, v37
	v_max_f32_e32 v105, 0, v27
	v_max_f32_e32 v35, 0, v35
	v_dual_max_f32 v94, 0, v43 :: v_dual_max_f32 v99, 0, v38
	v_dual_max_f32 v104, 0, v28 :: v_dual_max_f32 v107, 0, v25
	v_dual_max_f32 v111, 0, v21 :: v_dual_max_f32 v110, 0, v22
	v_dual_max_f32 v113, 0, v19 :: v_dual_max_f32 v112, 0, v20
	v_dual_max_f32 v115, 0, v17 :: v_dual_max_f32 v116, 0, v16
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v61, v10, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v117, 0, v12 :: v_dual_max_f32 v114, 0, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v71, v0, v0 :: v_dual_mul_f32 v70, v1, v1
	v_dual_mul_f32 v67, v4, v4 :: v_dual_mul_f32 v68, v3, v3
	v_dual_mul_f32 v63, v8, v8 :: v_dual_mul_f32 v66, v5, v5
	v_dual_mul_f32 v59, v30, v30 :: v_dual_mul_f32 v64, v7, v7
	v_dual_mul_f32 v57, v32, v32 :: v_dual_mul_f32 v62, v9, v9
	v_dual_mul_f32 v55, v44, v44 :: v_dual_mul_f32 v60, v11, v11
	v_dual_mul_f32 v53, v73, v73 :: v_dual_mul_f32 v58, v31, v31
	v_dual_mul_f32 v49, v77, v77 :: v_dual_mul_f32 v56, v34, v34
	v_dual_mul_f32 v51, v75, v75 :: v_dual_mul_f32 v54, v72, v72
	v_dual_mul_f32 v47, v79, v79 :: v_dual_mul_f32 v52, v74, v74
	v_dual_mul_f32 v45, v81, v81 :: v_dual_mul_f32 v50, v76, v76
	v_dual_mul_f32 v43, v83, v83 :: v_dual_mul_f32 v48, v78, v78
	v_dual_mul_f32 v41, v85, v85 :: v_dual_mul_f32 v46, v80, v80
	v_dual_mul_f32 v39, v87, v87 :: v_dual_mul_f32 v44, v82, v82
	v_dual_mul_f32 v37, v89, v89 :: v_dual_mul_f32 v42, v84, v84
	v_mul_f32_e32 v31, v94, v94
	v_dual_mul_f32 v40, v86, v86 :: v_dual_mul_f32 v33, v92, v92
	v_dual_mul_f32 v38, v88, v88 :: v_dual_mul_f32 v27, v98, v98
	v_dual_mul_f32 v36, v90, v90 :: v_dual_mul_f32 v29, v96, v96
	v_dual_mul_f32 v34, v91, v91 :: v_dual_mul_f32 v25, v100, v100
	v_dual_mul_f32 v32, v93, v93 :: v_dual_mul_f32 v23, v35, v35
	v_dual_mul_f32 v30, v95, v95 :: v_dual_mul_f32 v19, v106, v106
	v_dual_mul_f32 v28, v97, v97 :: v_dual_mul_f32 v21, v103, v103
	v_dual_mul_f32 v26, v99, v99 :: v_dual_mul_f32 v11, v110, v110
	v_dual_mul_f32 v24, v101, v101 :: v_dual_mul_f32 v17, v107, v107
	v_dual_mul_f32 v22, v102, v102 :: v_dual_mul_f32 v5, v115, v115
	v_dual_mul_f32 v20, v104, v104 :: v_dual_mul_f32 v7, v114, v114
	v_dual_mul_f32 v18, v105, v105 :: v_dual_mov_b32 v9, v15
	v_dual_mul_f32 v16, v108, v108 :: v_dual_mul_f32 v3, v117, v117
	v_mul_f32_e32 v12, v109, v109
	v_mul_f32_e32 v10, v111, v111
	v_mul_f32_e32 v8, v112, v112
	v_mul_f32_e32 v6, v113, v113
	v_mul_f32_e32 v4, v116, v116
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v70.h
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	v_mov_b16_e32 v74.l, v69.h
	v_mov_b16_e32 v72.h, v35.h
	v_and_b32_e32 v73, 1, v35
	v_mov_b16_e32 v35.l, v68.h
	v_mov_b16_e32 v74.h, v35.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v2, s15, v14
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v70, v73, 0x7fff
	v_and_b32_e32 v72, 1, v72
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v14, 1, v13
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s14, s14, s15
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_add3_u32 v71, v71, v72, 0x7fff
	v_and_b32_e32 v72, 1, v35
	v_mov_b16_e32 v35.l, v66.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[0:1], null, s15, 48, v[2:3]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v71.h
	v_add3_u32 v68, v68, v72, 0x7fff
	v_and_b32_e32 v73, 1, v74
	v_mov_b16_e32 v74.l, v67.h
	v_and_b32_e32 v71, 1, v35
	v_mov_b16_e32 v35.l, v64.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v1, s14, s2, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v69, v73, 0x7fff
	v_and_b32_e32 v72, 1, v74
	v_mov_b16_e32 v73.l, v65.h
	v_mov_b16_e32 v73.h, v35.h
	v_add3_u32 v66, v66, v71, 0x7fff
	v_mov_b16_e32 v68.l, v69.h
	v_add3_u32 v67, v67, v72, 0x7fff
	v_and_b32_e32 v69, 1, v35
	v_and_b32_e32 v71, 1, v73
	v_mov_b16_e32 v35.l, v62.h
	v_mov_b16_e32 v72.l, v63.h
	v_mov_b16_e32 v72.h, v35.h
	v_mov_b16_e32 v66.l, v67.h
	v_add3_u32 v65, v65, v71, 0x7fff
	v_add3_u32 v64, v64, v69, 0x7fff
	v_and_b32_e32 v67, 1, v35
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v35.l, v60.h
	v_mov_b16_e32 v71.l, v61.h
	v_mov_b16_e32 v71.h, v35.h
	v_mov_b16_e32 v64.l, v65.h
	v_add3_u32 v63, v63, v69, 0x7fff
	v_add3_u32 v62, v62, v67, 0x7fff
	v_and_b32_e32 v65, 1, v35
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v35.l, v58.h
	v_mov_b16_e32 v69.l, v59.h
	v_mov_b16_e32 v69.h, v35.h
	v_mov_b16_e32 v62.l, v63.h
	v_add3_u32 v61, v61, v67, 0x7fff
	v_add3_u32 v60, v60, v65, 0x7fff
	v_and_b32_e32 v63, 1, v35
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v67.h, v35.h
	v_mov_b16_e32 v60.l, v61.h
	v_add3_u32 v59, v59, v65, 0x7fff
	v_add3_u32 v58, v58, v63, 0x7fff
	v_and_b32_e32 v61, 1, v35
	v_and_b32_e32 v63, 1, v67
	v_mov_b16_e32 v35.l, v54.h
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v58.l, v59.h
	v_add3_u32 v57, v57, v63, 0x7fff
	v_add3_u32 v56, v56, v61, 0x7fff
	v_and_b32_e32 v59, 1, v35
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_add3_u32 v55, v55, v61, 0x7fff
	v_add3_u32 v54, v54, v59, 0x7fff
	v_and_b32_e32 v57, 1, v35
	v_and_b32_e32 v59, 1, v63
	v_mov_b16_e32 v35.l, v50.h
	v_mov_b16_e32 v61.l, v51.h
	v_mov_b16_e32 v61.h, v35.h
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v53, v53, v59, 0x7fff
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v55, 1, v35
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v35.l, v48.h
	v_mov_b16_e32 v59.l, v49.h
	v_mov_b16_e32 v59.h, v35.h
	v_mov_b16_e32 v52.l, v53.h
	v_add3_u32 v51, v51, v57, 0x7fff
	v_add3_u32 v50, v50, v55, 0x7fff
	v_and_b32_e32 v53, 1, v35
	v_and_b32_e32 v55, 1, v59
	v_mov_b16_e32 v35.l, v46.h
	v_mov_b16_e32 v57.l, v47.h
	v_mov_b16_e32 v57.h, v35.h
	v_mov_b16_e32 v50.l, v51.h
	v_add3_u32 v49, v49, v55, 0x7fff
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v51, 1, v35
	v_and_b32_e32 v53, 1, v57
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b16_e32 v55.l, v45.h
	v_mov_b16_e32 v55.h, v35.h
	v_mov_b16_e32 v48.l, v49.h
	v_add3_u32 v47, v47, v53, 0x7fff
	v_add3_u32 v46, v46, v51, 0x7fff
	v_and_b32_e32 v49, 1, v35
	v_and_b32_e32 v51, 1, v55
	v_mov_b16_e32 v35.l, v42.h
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v35.h
	v_mov_b16_e32 v46.l, v47.h
	v_add3_u32 v45, v45, v51, 0x7fff
	v_add3_u32 v44, v44, v49, 0x7fff
	v_and_b32_e32 v47, 1, v35
	v_and_b32_e32 v49, 1, v53
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v35.h
	v_mov_b16_e32 v44.l, v45.h
	v_add3_u32 v43, v43, v49, 0x7fff
	v_add3_u32 v42, v42, v47, 0x7fff
	v_and_b32_e32 v45, 1, v35
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v35.l, v38.h
	v_mov_b16_e32 v49.l, v39.h
	v_mov_b16_e32 v49.h, v35.h
	v_mov_b16_e32 v42.l, v43.h
	v_add3_u32 v41, v41, v47, 0x7fff
	v_add3_u32 v40, v40, v45, 0x7fff
	v_and_b32_e32 v43, 1, v35
	v_and_b32_e32 v45, 1, v49
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v47.l, v37.h
	v_mov_b16_e32 v47.h, v35.h
	v_mov_b16_e32 v40.l, v41.h
	v_add3_u32 v39, v39, v45, 0x7fff
	v_add3_u32 v38, v38, v43, 0x7fff
	v_and_b32_e32 v41, 1, v35
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v35.h
	v_mov_b16_e32 v38.l, v39.h
	v_add3_u32 v37, v37, v43, 0x7fff
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v39, 1, v35
	v_and_b32_e32 v41, 1, v45
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e32 v43.h, v35.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v34, v34, v41, 0x7fff
	v_add3_u32 v33, v33, v39, 0x7fff
	v_and_b32_e32 v37, 1, v35
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v41.l, v30.h
	v_mov_b16_e32 v41.h, v35.h
	v_mov_b16_e32 v33.l, v34.h
	v_add3_u32 v32, v32, v39, 0x7fff
	v_add3_u32 v31, v31, v37, 0x7fff
	v_and_b32_e32 v34, 1, v35
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_mov_b16_e32 v31.l, v32.h
	v_add3_u32 v30, v30, v37, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v35.l, v25.h
	v_add3_u32 v29, v29, v34, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v29.l, v30.h
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_and_b32_e32 v32, 1, v37
	v_cndmask_b32_e32 v37, v33, v38, vcc_lo
	v_add3_u32 v25, v25, v30, 0x7fff
	v_dual_cndmask_b32 v33, v38, v33 :: v_dual_and_b32 v30, 1, v35
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v23, v30, 0x7fff
	v_cndmask_b32_e32 v38, v31, v36, vcc_lo
	v_mov_b16_e32 v27.l, v28.h
	v_dual_cndmask_b32 v31, v36, v31 :: v_dual_and_b32 v28, 1, v34
	v_add3_u32 v26, v26, v32, 0x7fff
	v_mov_b16_e32 v32.l, v22.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v35.l, v21.h
	v_add3_u32 v24, v24, v28, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v35.h
	v_cndmask_b32_e32 v30, v42, v46, vcc_lo
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v26, 1, v32
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v35.l, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v32, v46, v42 :: v_dual_cndmask_b32 v39, v23, v27
	v_cndmask_b32_e32 v23, v27, v23, vcc_lo
	v_add3_u32 v22, v22, v26, 0x7fff
	v_and_b32_e32 v26, 1, v28
	v_add3_u32 v21, v21, v24, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v35.l, v17.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_add3_u32 v18, v18, v24, 0x7fff
	v_and_b32_e32 v26, 1, v28
	v_mov_b16_e32 v22.l, v16.h
	v_mov_b16_e32 v18.l, v20.h
	v_and_b32_e32 v20, 1, v35
	v_mov_b16_e32 v22.h, v35.h
	v_mov_b16_e32 v35.l, v12.h
	v_mov_b16_e32 v24.l, v11.h
	v_mov_b16_e32 v24.h, v35.h
	v_add3_u32 v19, v19, v26, 0x7fff
	v_add3_u32 v17, v17, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v22, 1, v35
	v_mov_b16_e32 v35.l, v10.h
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v17.l, v19.h
	v_add3_u32 v16, v16, v20, 0x7fff
	v_mov_b16_e32 v20.l, v8.h
	v_and_b32_e32 v19, 1, v35
	v_add3_u32 v11, v11, v24, 0x7fff
	v_mov_b16_e32 v35.l, v6.h
	v_mov_b16_e32 v20.h, v35.h
	v_add3_u32 v12, v12, v22, 0x7fff
	v_add3_u32 v10, v10, v19, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v35.h
	v_mov_b16_e32 v12.l, v16.h
	v_mov_b16_e32 v10.l, v11.h
	v_and_b32_e32 v11, 1, v35
	v_and_b32_e32 v16, 1, v20
	v_mov_b16_e32 v35.l, v5.h
	v_mov_b16_e32 v20.l, v4.h
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v6, v6, v11, 0x7fff
	v_add3_u32 v8, v8, v16, 0x7fff
	v_and_b32_e32 v16, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_add3_u32 v5, v5, v16, 0x7fff
	v_and_b32_e32 v8, 1, v35
	v_add3_u32 v4, v4, v20, 0x7fff
	v_mov_b16_e32 v5.l, v7.h
	v_cndmask_b32_e32 v7, v70, v66, vcc_lo
	v_cndmask_b32_e32 v41, v12, v18, vcc_lo
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v12, v18, v12, vcc_lo
	v_dual_cndmask_b32 v42, v5, v10 :: v_dual_cndmask_b32 v5, v10, v5
	v_mov_b32_e32 v10, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v43, v3, v6
	v_cndmask_b32_e32 v3, v6, v3, vcc_lo
	v_permlanex16_b32 v6, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, 0x3276, v18, vcc_lo
	v_dual_cndmask_b32 v9, v68, v64 :: v_dual_add_nc_u32 v14, 0x80, v1
	v_cndmask_b32_e32 v16, v62, v58, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v20, v60, v56, vcc_lo
	v_cndmask_b32_e32 v24, v54, v50, vcc_lo
	v_dual_cndmask_b32 v28, v52, v48 :: v_dual_and_b32 v7, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v4, v66, v70, vcc_lo
	v_cndmask_b32_e32 v8, v64, v68, vcc_lo
	v_cndmask_b32_e32 v34, v40, v44, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v35, v44, v40, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v11, v58, v62 :: v_dual_and_b32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v10
	v_cndmask_b32_e32 v19, v56, v60, vcc_lo
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v20, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v15, s15, 4, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v22, v50, v54, vcc_lo
	v_cndmask_b32_e32 v26, v48, v52, vcc_lo
	v_cndmask_b32_e32 v36, v25, v29, vcc_lo
	v_cndmask_b32_e32 v25, v29, v25, vcc_lo
	v_cndmask_b32_e32 v40, v17, v21, vcc_lo
	v_cndmask_b32_e32 v17, v21, v17, vcc_lo
	v_permlanex16_b32 v20, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v28, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v13, s15, 5, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v24, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v4, v44
	v_perm_b32 v4, v6, v4, v45
	v_perm_b32 v5, v9, v8, v44
	v_perm_b32 v6, v9, v8, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v28, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v16, v11, v44
	v_perm_b32 v8, v16, v11, v45
	v_perm_b32 v9, v18, v19, v44
	v_perm_b32 v10, v18, v19, v45
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v20, v22, v44
	v_perm_b32 v17, v20, v22, v45
	v_perm_b32 v18, v21, v26, v44
	v_perm_b32 v19, v21, v26, v45
	v_add_lshl_u32 v11, v1, v15, 1
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_perm_b32 v20, v24, v30, v44
	v_perm_b32 v21, v24, v30, v45
	v_perm_b32 v22, v27, v34, v44
	v_perm_b32 v23, v27, v34, v45
	s_clause 0x2
	buffer_store_b128 v[3:6], v2, s[12:15], 0 offen
	buffer_store_b128 v[7:10], v2, s[12:15], 0 offen offset:256
	buffer_store_b128 v[16:19], v11, s[12:15], 0 offen
	v_add_lshl_u32 v2, v14, v15, 1
	v_perm_b32 v24, v28, v37, v44
	v_perm_b32 v25, v28, v37, v45
	v_perm_b32 v26, v29, v38, v44
	v_perm_b32 v27, v29, v38, v45
	v_add_lshl_u32 v3, v1, v13, 1
	v_perm_b32 v28, v31, v36, v44
	v_perm_b32 v29, v31, v36, v45
	v_perm_b32 v30, v32, v39, v44
	v_perm_b32 v31, v32, v39, v45
	v_add_lshl_u32 v4, v14, v13, 1
	v_perm_b32 v32, v33, v40, v44
	v_perm_b32 v33, v33, v40, v45
	v_perm_b32 v34, v12, v41, v44
	v_perm_b32 v35, v12, v41, v45
	v_add_lshl_u32 v1, v1, v0, 1
	v_perm_b32 v36, v46, v42, v44
	v_perm_b32 v37, v46, v42, v45
	v_perm_b32 v38, v47, v43, v44
	v_perm_b32 v39, v47, v43, v45
	v_add_lshl_u32 v0, v14, v0, 1
	s_clause 0x4
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	buffer_store_b128 v[32:35], v1, s[12:15], 0 offen
	buffer_store_b128 v[36:39], v0, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 241
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 178
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7648
; TotalNumSgprs: 46
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 241
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
