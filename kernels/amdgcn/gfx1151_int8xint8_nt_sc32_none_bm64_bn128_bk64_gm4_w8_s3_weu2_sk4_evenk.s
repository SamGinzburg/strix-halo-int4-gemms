	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v46, 2, v0
	v_lshlrev_b32_e32 v47, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s4, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
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
	s_ashr_i32 s17, s9, 31
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
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s15, s16, 0xff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s20, s2, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s20, s17
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 322 13 is_stmt 0              ; generate_amdgcn.py:322:13
	s_add_i32 s4, s4, s6
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s15, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v1, 4, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow70
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v43, 0x80, v0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v45, 0x60, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v44, 1, v0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v33, 0
	s_lshl_b32 s14, s4, 6
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s2, s2, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 326 32 is_stmt 1              ; generate_amdgcn.py:326:32
	v_bfe_u32 v4, v0, 4, 1
	v_lshrrev_b32_e32 v5, 1, v45
	v_lshrrev_b32_e32 v6, 1, v0
	s_mov_b32 s36, 0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s18, s16, 31
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v2, 3, v0
.Ltmp16:
	.loc	1 326 32 is_stmt 1              ; generate_amdgcn.py:326:32
	v_bfe_i32 v3, v0, 4, 1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v10, 5, v0
	v_lshlrev_b32_e32 v11, 4, v45
	.loc	1 338 26                        ; generate_amdgcn.py:338:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s3, s18, 31
	v_or3_b32 v48, v4, v5, s2
.Ltmp19:
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	v_lshl_or_b32 v5, s20, 7, v6
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v7, 3, v43
	v_and_b32_e32 v8, 15, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s15, s15, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_lshr_b32 s0, s3, 27
	v_bfe_i32 v12, v0, 3, 1
.Ltmp22:
	.loc	1 328 19 is_stmt 1              ; generate_amdgcn.py:328:19
	v_and_b32_e32 v1, 24, v2
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_add_i32 s18, s18, s0
	v_and_b32_e32 v2, 0x778, v2
	v_and_b32_e32 v3, 0x90, v3
	v_bfe_i32 v15, v0, 2, 1
	v_and_or_b32 v10, 0x160, v10, v11
.Ltmp24:
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_lshl_b32 s0, s17, 7
	v_and_b32_e32 v14, 0x210, v46
	v_subrev_nc_u32_e32 v5, s0, v5
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v9, 2, v0
	v_and_b32_e32 v13, 0xf70, v47
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v11, 0x90, v12
	v_or3_b32 v7, v7, v8, s14
	v_xor_b32_e32 v2, v3, v2
	v_and_or_b32 v3, 0x90, v15, v10
	v_lshl_or_b32 v8, v8, 5, v14
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_mul_lo_u32 v5, s16, v5
	v_xor_b32_e32 v10, v11, v13
	v_or_b32_e32 v11, 32, v7
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v6, s14, v9
	v_xor_b32_e32 v4, 16, v3
.Ltmp25:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s3, s15, 8
.Ltmp26:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:336:26 ]
	s_ashr_i32 s15, s18, 5
	v_xor_b32_e32 v12, 16, v8
	v_mul_lo_u32 v49, v7, s15
	v_mul_lo_u32 v50, v11, s15
.Ltmp27:
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	v_mad_u64_u32 v[41:42], null, s16, v6, v[1:2]
	v_lshl_add_u32 v42, v44, 4, v5
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v66, 0, v2
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v68, 0, v8
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v70, 0, v3
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v71, 0, v4
	v_mov_b32_e32 v1, s36
	v_or_b32_e32 v51, 2, v48
	v_or_b32_e32 v52, 4, v48
	v_or_b32_e32 v53, 6, v48
	v_or_b32_e32 v54, 8, v48
	v_or_b32_e32 v55, 10, v48
	v_or_b32_e32 v56, 12, v48
	v_or_b32_e32 v57, 14, v48
	v_or_b32_e32 v58, 64, v48
	v_or_b32_e32 v59, 0x42, v48
	v_or_b32_e32 v60, 0x44, v48
	v_or_b32_e32 v61, 0x46, v48
	v_or_b32_e32 v62, 0x48, v48
	v_or_b32_e32 v63, 0x4a, v48
	v_or_b32_e32 v64, 0x4c, v48
	v_or_b32_e32 v65, 0x4e, v48
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v67, 0, v10
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v69, 0, v12
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v10, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
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
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	v_add_nc_u32_e32 v76, s1, v41
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	v_add_nc_u32_e32 v77, s1, v42
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s24, s1, 5
	.loc	1 344 34                        ; generate_amdgcn.py:344:34
	s_add_i32 s0, s1, 32
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s24, s15
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	buffer_load_b64 v[80:81], v76, s[16:19], 0 offen
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	buffer_load_b128 v[72:75], v77, s[4:7], 0 offen
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[82:83], v76, s[16:19], 0 offen offset:32
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	buffer_load_b128 v[76:79], v77, s[4:7], 0 offen offset:32
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v84, v49, s24, 1
	v_add_lshl_u32 v85, v50, s24, 1
	.loc	1 360 40                        ; generate_amdgcn.py:360:40
	s_mul_i32 s24, s24, s25
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 356 29                        ; generate_amdgcn.py:356:29
	s_ashr_i32 s0, s0, 5
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v86, v48, s24, 1
	v_add_lshl_u32 v87, v51, s24, 1
	v_add_lshl_u32 v88, v52, s24, 1
	v_add_lshl_u32 v89, v53, s24, 1
	v_add_lshl_u32 v90, v54, s24, 1
	v_add_lshl_u32 v91, v55, s24, 1
	v_add_lshl_u32 v92, v56, s24, 1
	v_add_lshl_u32 v93, v57, s24, 1
	v_add_lshl_u32 v94, v58, s24, 1
	v_add_lshl_u32 v95, v59, s24, 1
	v_add_lshl_u32 v96, v60, s24, 1
	v_add_lshl_u32 v97, v61, s24, 1
	v_add_lshl_u32 v98, v62, s24, 1
	v_add_lshl_u32 v99, v63, s24, 1
	v_add_lshl_u32 v100, v64, s24, 1
	v_add_lshl_u32 v101, v65, s24, 1
	.loc	1 360 40 is_stmt 0              ; generate_amdgcn.py:360:40
	s_mul_i32 s24, s0, s25
	.loc	1 358 22 is_stmt 1              ; generate_amdgcn.py:358:22
	v_add_lshl_u32 v102, v49, s0, 1
	v_add_lshl_u32 v103, v50, s0, 1
	v_dual_cndmask_b32 v84, 0x80000000, v84 :: v_dual_cndmask_b32 v85, 0x80000000, v85
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_add_lshl_u32 v104, v48, s24, 1
	v_add_lshl_u32 v105, v51, s24, 1
	v_add_lshl_u32 v106, v52, s24, 1
	v_add_lshl_u32 v107, v53, s24, 1
	v_add_lshl_u32 v108, v54, s24, 1
	v_add_lshl_u32 v109, v55, s24, 1
	v_add_lshl_u32 v110, v56, s24, 1
	v_add_lshl_u32 v111, v57, s24, 1
	v_add_lshl_u32 v112, v58, s24, 1
	v_add_lshl_u32 v113, v59, s24, 1
	v_add_lshl_u32 v114, v60, s24, 1
	v_add_lshl_u32 v115, v61, s24, 1
	v_add_lshl_u32 v116, v62, s24, 1
	v_add_lshl_u32 v117, v63, s24, 1
	v_add_lshl_u32 v118, v64, s24, 1
	v_add_lshl_u32 v119, v65, s24, 1
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cmp_lt_i32 s0, s15
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	.loc	1 357 34                        ; generate_amdgcn.py:357:34
	s_cselect_b32 s0, -1, 0
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s3, s3, -1
	s_addk_i32 s1, 0x100
	s_cmp_lg_u32 s3, 0
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v66, v[80:81] offset:8192
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v67, v[72:75]
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v66, v[82:83] offset:10240
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[76:79] offset:4096
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_clause 0x1
	buffer_load_u16 v176, v84, s[20:23], 0 offen
	buffer_load_u16 v177, v85, s[20:23], 0 offen
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	s_clause 0xf
	buffer_load_u16 v178, v86, s[8:11], 0 offen
	buffer_load_u16 v179, v87, s[8:11], 0 offen
	buffer_load_u16 v180, v88, s[8:11], 0 offen
	buffer_load_u16 v181, v89, s[8:11], 0 offen
	buffer_load_u16 v182, v90, s[8:11], 0 offen
	buffer_load_u16 v183, v91, s[8:11], 0 offen
	buffer_load_u16 v184, v92, s[8:11], 0 offen
	buffer_load_u16 v185, v93, s[8:11], 0 offen
	buffer_load_u16 v186, v94, s[8:11], 0 offen
	buffer_load_u16 v187, v95, s[8:11], 0 offen
	buffer_load_u16 v188, v96, s[8:11], 0 offen
	buffer_load_u16 v189, v97, s[8:11], 0 offen
	buffer_load_u16 v190, v98, s[8:11], 0 offen
	buffer_load_u16 v191, v99, s[8:11], 0 offen
	buffer_load_u16 v192, v100, s[8:11], 0 offen
	buffer_load_u16 v193, v101, s[8:11], 0 offen
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_clause 0x1
	buffer_load_u16 v194, v102, s[20:23], 0 offen
	buffer_load_u16 v195, v103, s[20:23], 0 offen
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	s_clause 0xf
	buffer_load_u16 v196, v104, s[8:11], 0 offen
	buffer_load_u16 v197, v105, s[8:11], 0 offen
	buffer_load_u16 v198, v106, s[8:11], 0 offen
	buffer_load_u16 v199, v107, s[8:11], 0 offen
	buffer_load_u16 v200, v108, s[8:11], 0 offen
	buffer_load_u16 v201, v109, s[8:11], 0 offen
	buffer_load_u16 v202, v110, s[8:11], 0 offen
	buffer_load_u16 v203, v111, s[8:11], 0 offen
	buffer_load_u16 v204, v112, s[8:11], 0 offen
	buffer_load_u16 v205, v113, s[8:11], 0 offen
	buffer_load_u16 v206, v114, s[8:11], 0 offen
	buffer_load_u16 v207, v115, s[8:11], 0 offen
	buffer_load_u16 v208, v116, s[8:11], 0 offen
	buffer_load_u16 v209, v117, s[8:11], 0 offen
	buffer_load_u16 v210, v118, s[8:11], 0 offen
	buffer_load_u16 v211, v119, s[8:11], 0 offen
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[88:91], v68 offset:8192
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[96:99], v70
	ds_load_b128 v[104:107], v70 offset:2048
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[108:111], v68 offset:9216
	ds_load_b128 v[120:123], v68 offset:10240
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[128:131], v70 offset:4096
	ds_load_b128 v[136:139], v70 offset:6144
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[140:143], v69 offset:8192
	ds_load_b128 v[144:147], v69 offset:9216
	ds_load_b128 v[148:151], v68 offset:11264
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[152:155], v71
	ds_load_b128 v[156:159], v71 offset:2048
	.loc	1 344 26                        ; generate_amdgcn.py:344:26
	ds_load_b128 v[160:163], v69 offset:10240
	ds_load_b128 v[164:167], v69 offset:11264
	.loc	1 346 26                        ; generate_amdgcn.py:346:26
	ds_load_b128 v[168:171], v71 offset:4096
	ds_load_b128 v[172:175], v71 offset:6144
	.loc	1 349 23                        ; generate_amdgcn.py:349:23
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[96:99], v[88:91], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[104:107], v[88:91], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[96:99], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[104:107], v[108:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[128:131], v[120:123], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[136:139], v[120:123], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[128:131], v[148:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[148:151], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[152:155], v[140:143], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[156:159], v[140:143], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[152:155], v[144:147], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[156:159], v[144:147], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[168:171], v[160:163], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[172:175], v[160:163], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[168:171], v[164:167], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[172:175], v[164:167], v[128:135] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
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
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
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
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 358 22                        ; generate_amdgcn.py:358:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v137, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	v_dual_mul_f32 v89, v89, v137 :: v_dual_lshlrev_b32 v136, 16, v176
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v75, v75, v136 :: v_dual_lshlrev_b32 v138, 16, v178
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v76, v76, v136 :: v_dual_lshlrev_b32 v139, 16, v179
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v78, v78, v136 :: v_dual_lshlrev_b32 v141, 16, v181
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v77, v77, v136 :: v_dual_lshlrev_b32 v142, 16, v182
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v80, v80, v136 :: v_dual_lshlrev_b32 v143, 16, v183
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v82, v82, v136 :: v_dual_lshlrev_b32 v145, 16, v185
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v79, v79, v136 :: v_dual_lshlrev_b32 v146, 16, v186
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v84, v84, v136 :: v_dual_lshlrev_b32 v147, 16, v187
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v86, v86, v136 :: v_dual_lshlrev_b32 v149, 16, v189
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v81, v81, v136 :: v_dual_lshlrev_b32 v150, 16, v190
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v83, v83, v136 :: v_dual_lshlrev_b32 v154, 16, v194
	.loc	1 360 22                        ; generate_amdgcn.py:360:22
	v_lshlrev_b32_e32 v153, 16, v193
	.loc	1 362 24                        ; generate_amdgcn.py:362:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v85, v85, v136 :: v_dual_lshlrev_b32 v158, 16, v198
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v87, v87, v136 :: v_dual_lshlrev_b32 v162, 16, v202
	v_mul_f32_e32 v72, v72, v136
	v_mul_f32_e32 v73, v73, v136
	v_mul_f32_e32 v74, v74, v136
	v_dual_mul_f32 v91, v91, v137 :: v_dual_lshlrev_b32 v140, 16, v180
	v_dual_mul_f32 v93, v93, v137 :: v_dual_lshlrev_b32 v144, 16, v184
	v_dual_mul_f32 v95, v95, v137 :: v_dual_lshlrev_b32 v148, 16, v188
	v_dual_mul_f32 v88, v88, v137 :: v_dual_lshlrev_b32 v151, 16, v191
	v_dual_mul_f32 v97, v97, v137 :: v_dual_lshlrev_b32 v152, 16, v192
	v_dual_mul_f32 v90, v90, v137 :: v_dual_lshlrev_b32 v155, 16, v195
	v_dual_mul_f32 v99, v99, v137 :: v_dual_lshlrev_b32 v156, 16, v196
	v_dual_mul_f32 v92, v92, v137 :: v_dual_lshlrev_b32 v159, 16, v199
	v_dual_mul_f32 v101, v101, v137 :: v_dual_lshlrev_b32 v160, 16, v200
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v94, v94, v137 :: v_dual_lshlrev_b32 v163, 16, v203
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v103, v103, v137 :: v_dual_lshlrev_b32 v164, 16, v204
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v96, v96, v137 :: v_dual_lshlrev_b32 v167, 16, v207
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v98, v98, v137 :: v_dual_lshlrev_b32 v171, 16, v211
	v_dual_mul_f32 v100, v100, v137 :: v_dual_mul_f32 v107, v107, v154
	v_dual_mul_f32 v102, v102, v137 :: v_dual_mul_f32 v109, v109, v154
	v_dual_mul_f32 v106, v106, v154 :: v_dual_lshlrev_b32 v157, 16, v197
	v_dual_mul_f32 v108, v108, v154 :: v_dual_lshlrev_b32 v161, 16, v201
	v_dual_mul_f32 v110, v110, v154 :: v_dual_lshlrev_b32 v165, 16, v205
	v_dual_mul_f32 v121, v121, v155 :: v_dual_lshlrev_b32 v166, 16, v206
	v_dual_mul_f32 v105, v105, v154 :: v_dual_lshlrev_b32 v168, 16, v208
	v_dual_mul_f32 v112, v112, v154 :: v_dual_lshlrev_b32 v169, 16, v209
	v_dual_mul_f32 v123, v123, v155 :: v_dual_lshlrev_b32 v170, 16, v210
	v_mul_f32_e32 v104, v104, v154
	v_dual_mul_f32 v111, v111, v154 :: v_dual_mul_f32 v120, v120, v155
	v_dual_mul_f32 v113, v113, v154 :: v_dual_mul_f32 v122, v122, v155
	v_dual_mul_f32 v114, v114, v154 :: v_dual_mul_f32 v125, v125, v155
	v_dual_mul_f32 v115, v115, v154 :: v_dual_mul_f32 v124, v124, v155
	v_dual_mul_f32 v116, v116, v154 :: v_dual_mul_f32 v127, v127, v155
	v_dual_mul_f32 v117, v117, v154 :: v_dual_mul_f32 v126, v126, v155
	v_dual_mul_f32 v118, v118, v154 :: v_dual_mul_f32 v129, v129, v155
	v_dual_mul_f32 v119, v119, v154 :: v_dual_mul_f32 v128, v128, v155
	v_dual_mul_f32 v130, v130, v155 :: v_dual_fmac_f32 v33, v72, v138
	v_dual_mul_f32 v131, v131, v155 :: v_dual_fmac_f32 v34, v88, v138
	v_dual_mul_f32 v132, v132, v155 :: v_dual_fmac_f32 v29, v74, v140
	v_dual_mul_f32 v133, v133, v155 :: v_dual_fmac_f32 v30, v90, v140
	v_dual_mul_f32 v134, v134, v155 :: v_dual_fmac_f32 v25, v75, v141
	v_dual_mul_f32 v135, v135, v155 :: v_dual_fmac_f32 v22, v92, v142
	.loc	1 362 17 is_stmt 0              ; generate_amdgcn.py:362:17
	v_dual_fmac_f32 v35, v73, v139 :: v_dual_fmac_f32 v26, v91, v141
	v_dual_fmac_f32 v21, v76, v142 :: v_dual_fmac_f32 v36, v89, v139
	v_dual_fmac_f32 v17, v77, v143 :: v_dual_fmac_f32 v14, v94, v144
	v_dual_fmac_f32 v13, v78, v144 :: v_dual_fmac_f32 v18, v93, v143
	v_dual_fmac_f32 v11, v79, v145 :: v_dual_fmac_f32 v40, v96, v146
	v_dual_fmac_f32 v39, v80, v146 :: v_dual_fmac_f32 v12, v95, v145
	v_dual_fmac_f32 v37, v81, v147 :: v_dual_fmac_f32 v32, v98, v148
	v_dual_fmac_f32 v31, v82, v148 :: v_dual_fmac_f32 v38, v97, v147
	v_dual_fmac_f32 v27, v83, v149 :: v_dual_fmac_f32 v24, v100, v150
	v_dual_fmac_f32 v23, v84, v150 :: v_dual_fmac_f32 v28, v99, v149
	v_dual_fmac_f32 v19, v85, v151 :: v_dual_fmac_f32 v16, v102, v152
	v_dual_fmac_f32 v15, v86, v152 :: v_dual_fmac_f32 v20, v101, v151
	v_dual_fmac_f32 v9, v87, v153 :: v_dual_fmac_f32 v34, v120, v156
	v_dual_fmac_f32 v10, v103, v153 :: v_dual_fmac_f32 v33, v104, v156
	v_dual_fmac_f32 v35, v105, v157 :: v_dual_fmac_f32 v30, v122, v158
	v_dual_fmac_f32 v29, v106, v158 :: v_dual_fmac_f32 v36, v121, v157
	v_dual_fmac_f32 v25, v107, v159 :: v_dual_fmac_f32 v22, v124, v160
	v_dual_fmac_f32 v21, v108, v160 :: v_dual_fmac_f32 v26, v123, v159
	v_dual_fmac_f32 v17, v109, v161 :: v_dual_fmac_f32 v14, v126, v162
	v_dual_fmac_f32 v13, v110, v162 :: v_dual_fmac_f32 v18, v125, v161
	v_dual_fmac_f32 v11, v111, v163 :: v_dual_fmac_f32 v40, v128, v164
	v_dual_fmac_f32 v39, v112, v164 :: v_dual_fmac_f32 v12, v127, v163
	v_dual_fmac_f32 v37, v113, v165 :: v_dual_fmac_f32 v32, v130, v166
	v_dual_fmac_f32 v31, v114, v166 :: v_dual_fmac_f32 v38, v129, v165
	v_dual_fmac_f32 v27, v115, v167 :: v_dual_fmac_f32 v24, v132, v168
	v_dual_fmac_f32 v23, v116, v168 :: v_dual_fmac_f32 v28, v131, v167
	v_dual_fmac_f32 v19, v117, v169 :: v_dual_fmac_f32 v16, v134, v170
	v_dual_fmac_f32 v15, v118, v170 :: v_dual_fmac_f32 v20, v133, v169
	v_fmac_f32_e32 v9, v119, v171
	v_fmac_f32_e32 v10, v135, v171
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v46 :: v_dual_mov_b32 v1, v47
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	v_and_b32_e32 v2, 0x78, v2
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v0, 14, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v3, 7, v43
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v2, v45, 3, v2
	v_cndmask_b32_e64 v5, 0x840, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	v_lshlrev_b32_e32 v6, 11, v0
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	v_mul_lo_u32 v3, s25, v3
	s_mul_i32 s3, s14, s25
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v2, v2, v5
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_add_i32 s3, s3, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v1, 0x700, v1
	v_or3_b32 v2, v2, v6, v43
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_add3_u32 v41, s3, v4, v3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s4, s25, 1
	s_lshl_b32 s5, s25, 2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v5, 0, v2
	v_xad_u32 v6, v2, 8, 0
	v_xad_u32 v3, v2, 16, 0
	v_xad_u32 v4, v2, 24, 0
	ds_store_2addr_stride64_b64 v5, v[33:34], v[39:40] offset1:2
	ds_store_2addr_stride64_b64 v6, v[35:36], v[37:38] offset1:2
	v_lshlrev_b32_e32 v5, 6, v44
	v_cndmask_b32_e64 v6, 0x840, 0, vcc_lo
	ds_store_2addr_stride64_b64 v3, v[29:30], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v4, v[25:26], v[27:28] offset1:2
	v_xad_u32 v4, v2, 32, 0
	v_lshlrev_b32_e32 v32, 2, v41
	v_add_lshl_u32 v33, v41, s4, 2
	v_xor_b32_e32 v3, v6, v5
	v_xad_u32 v5, v2, 40, 0
	v_xad_u32 v6, v2, 48, 0
	v_xad_u32 v2, v2, 56, 0
	ds_store_2addr_stride64_b64 v4, v[21:22], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v5, v[17:18], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v6, v[13:14], v[15:16] offset1:2
	ds_store_2addr_stride64_b64 v2, v[11:12], v[9:10] offset1:2
	v_or3_b32 v25, v1, v0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	v_add_nc_u32_e32 v0, 0, v25
	v_xad_u32 v4, 0x1008, v25, 0
	v_xad_u32 v8, 0x2010, v25, 0
	ds_load_2addr_b64 v[0:3], v0 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	v_xad_u32 v16, 0x4020, v25, 0
	v_xad_u32 v12, 0x3018, v25, 0
	v_xad_u32 v20, 0x5028, v25, 0
	v_xad_u32 v24, 0x6030, v25, 0
	ds_load_2addr_b64 v[8:11], v8 offset1:16
	v_xad_u32 v28, 0x7038, v25, 0
	ds_load_2addr_b64 v[16:19], v16 offset1:16
	ds_load_2addr_b64 v[20:23], v20 offset1:16
	ds_load_2addr_b64 v[24:27], v24 offset1:16
	ds_load_2addr_b64 v[12:15], v12 offset1:16
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s6, s25, 6
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_load_2addr_b64 v[28:31], v28 offset1:16
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s7, s25, 3
	s_mul_i32 s8, s25, 10
	s_mul_i32 s9, s25, 12
	s_mul_i32 s10, s25, 14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v32, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s5, 2
	v_add_lshl_u32 v4, v41, s6, 2
	v_add_lshl_u32 v32, v41, s7, 2
	v_add_lshl_u32 v33, v41, s8, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s11, s25, 4
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v34, v41, s9, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s16, s25, 18
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_atomic_add_f32 v12, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v32, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v33, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v34, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s10, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s17, s25, 20
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, v41, s11, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s18, s25, 22
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, v41, s16, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s19, s25, 24
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v12, v41, s17, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s20, s25, 26
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v16, v41, s18, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s21, s25, 28
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v28, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s19, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s22, s25, 30
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v41, s20, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_lshl_b32 s23, s25, 5
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, v41, s21, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s25, 34
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v6, v41, s22, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s25, 36
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v8, v41, s23, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s24, s25, 38
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s1, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s26, s25, 40
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v41, s0, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s27, s25, 42
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v41, s24, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s28, s25, 44
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, v41, s26, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s29, s25, 46
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v6, v41, s27, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s30, s25, 48
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s28, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s31, s25, 50
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v41, s29, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s33, s25, 52
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v41, s30, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s34, s25, 54
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v4, v41, s31, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s35, s25, 56
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v5, v41, s33, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s36, s25, 58
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, v41, s34, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s2, s25, 60
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v1, v41, s35, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s3, s25, 62
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v2, v41, s36, 2
	v_add_lshl_u32 v3, v41, s2, 2
	v_add_lshl_u32 v4, v41, s3, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v4, s[12:15], 0 offen
	.loc	1 309 1 is_stmt 1               ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 212
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4796
; TotalNumSgprs: 46
; NumVgprs: 212
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	336                             ; DW_AT_call_line
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
