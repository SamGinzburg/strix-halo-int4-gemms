	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v20, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s4, s4, 2
	v_mov_b32_e32 v39, 0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v21, 0x1f0, v0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s35, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s6, s5, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s5, s4
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s8, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s5, s2
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
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s4, s13
	s_sub_i32 s4, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s4, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s4, 9
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s5, s2, s6
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s12, 0xff
.Ltmp13:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s5, 4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_i32 s2, 0x100
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s40, s3, 4
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s12, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
	v_mul_lo_u32 v8, s19, v2
.Ltmp15:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v12, s40, v2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v1, 0x1e0, v0
	v_or_b32_e32 v5, s34, v20
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v7, 0x1f0, v3
	s_add_i32 s2, s2, s0
	v_mul_lo_u32 v6, s18, v20
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v11, s40, v20
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v40, 32, v12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s42, s2, 8
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_bfe_u32 v4, v0, 4, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s41, s12, 1
	v_mul_lo_u32 v32, v5, s42
	v_bfe_i32 v5, v0, 7, 1
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v9, 0x70, v3
	v_bfe_i32 v10, v0, 3, 1
	v_add3_u32 v18, v8, v7, s33
	v_lshrrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v41, 32, v11
	v_sub_nc_u32_e32 v43, s41, v2
	v_mul_lo_u32 v2, s19, v40
	v_add3_u32 v17, v6, v4, s34
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v6, 0x7f, v0
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v5, 0x88, v5
	v_and_or_b32 v9, 0x88, v10, v9
	v_add3_u32 v37, 0, v20, v1
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 2, v21
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v8, 32, v8
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v13, 16, v11
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v11
	v_mul_lo_u32 v11, s18, v41
	s_lshl_b32 s3, s14, 9
	v_xor_b32_e32 v5, v5, v6
	v_xor_b32_e32 v6, 8, v9
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v10, 28, v10
	v_add3_u32 v1, 0, v1, v8
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v8, 1, v21
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v14, 16, v12
	v_add3_u32 v2, v2, s3, v7
	s_lshl_b32 s3, s13, 9
	v_or_b32_e32 v38, s33, v0
	v_sub_nc_u32_e32 v42, s41, v20
	v_cmp_gt_i32_e64 s0, 0x80, v12
	v_cmp_gt_i32_e64 s1, 0x80, v13
	v_cmp_gt_i32_e64 s2, 0x80, v14
	v_add3_u32 v44, v11, s34, v4
	v_subrev_nc_u32_e32 v45, s3, v2
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v46, 0, v5
	v_add_nc_u32_e32 v47, 0, v3
	v_add_nc_u32_e32 v48, 0, v9
	v_add_nc_u32_e32 v49, 0, v6
	v_add_nc_u32_e32 v50, v1, v10
	v_add_nc_u32_e32 v51, 0, v8
	v_mov_b16_e32 v89.l, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_lshl_b32 s43, s18, 4
	s_lshl_b32 s44, s19, 4
	s_lshl_b32 s45, s18, 7
	s_lshl_b32 s46, s19, 7
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s6
	s_mov_b32 s29, s7
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s10
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s7, 0
.LBB0_2:                                ; %.peel.begin
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 194 24 is_stmt 1              ; generate_amdgcn.py:194:24
	s_lshl_b32 s3, s7, 7
	s_mov_b32 s8, 0
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s5, s3, s40
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s9, s8
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[5:6], null, s5, s18, v[17:18]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v42
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[6:7], null, s5, s19, v[18:19]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v43
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s5, s5, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s10, s8
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v1, 0x80000000, v5, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s4, s0
	.loc	1 198 27 is_stmt 0              ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s5, v43
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v2, 0x80000000, v6, s3
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v42
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v7, v1, s[24:27], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[1:4], v2, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add_nc_u32_e32 v5, s43, v5
	v_dual_mov_b32 v53, v45 :: v_dual_add_nc_u32 v6, s44, v6
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v8, s7, v32, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s4, s2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v52, v8, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v46, v7 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v71, v5, s[24:27], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[1:4]
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[57:60], v6, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v37 offset:6656
	ds_load_u8 v10, v37 offset:6144
	ds_load_u8 v11, v37 offset:7680
	ds_load_u8 v12, v37 offset:7168
	ds_load_u8 v13, v37 offset:4608
	ds_load_u8 v14, v37 offset:4096
	ds_load_u8 v15, v37 offset:5632
	ds_load_u8 v16, v37 offset:5120
	ds_load_u8 v56, v37 offset:2560
	ds_load_u8 v63, v37 offset:2048
	ds_load_u8 v64, v37 offset:3584
	ds_load_u8 v65, v37 offset:3072
	ds_load_u8 v66, v37 offset:3840
	ds_load_u8 v67, v37 offset:3328
	ds_load_u8 v68, v37 offset:2816
	ds_load_u8 v69, v37 offset:2304
	ds_load_u8 v70, v37 offset:512
	ds_load_u8 v72, v37
	ds_load_u8 v73, v37 offset:1536
	ds_load_u8 v74, v37 offset:1024
	ds_load_u8 v75, v37 offset:1792
	ds_load_u8 v76, v37 offset:1280
	ds_load_u8 v77, v37 offset:768
	ds_load_u8 v78, v37 offset:256
	ds_load_u8 v79, v37 offset:7936
	ds_load_u8 v80, v37 offset:7424
	ds_load_u8 v81, v37 offset:6912
	ds_load_u8 v82, v37 offset:6400
	ds_load_u8 v83, v37 offset:5888
	ds_load_u8 v84, v37 offset:5376
	ds_load_u8 v85, v37 offset:4864
	ds_load_u8 v86, v37 offset:4352
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[54:55], v48 offset:8192
	ds_load_b64 v[61:62], v49 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v56, v63, v56, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v65, v72, v70, 0xc0c0004
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v74, v73, 0xc0c0004
	v_perm_b32 v12, v16, v15, 0xc0c0004
	v_perm_b32 v13, v69, v68, 0xc0c0004
	v_perm_b32 v14, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v15, v78, v77, 0xc0c0004
	v_perm_b32 v16, v76, v75, 0xc0c0004
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v2, s9 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v6, s13 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v8, s15 :: v_dual_mov_b32 v7, s14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v82, v81, 0xc0c0004
	v_perm_b32 v72, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v86, v85, 0xc0c0004
	v_perm_b32 v74, v84, v83, 0xc0c0004
	v_lshl_or_b32 v64, v63, 16, v56
	v_lshl_or_b32 v63, v70, 16, v65
	v_lshl_or_b32 v68, v14, 16, v13
	v_lshl_or_b32 v67, v16, 16, v15
	v_lshl_or_b32 v66, v10, 16, v9
	v_lshl_or_b32 v65, v12, 16, v11
	v_lshl_or_b32 v70, v72, 16, v69
	v_lshl_or_b32 v69, v74, 16, v73
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v54, v44
	v_dual_mov_b32 v55, v40 :: v_dual_mov_b32 v56, v41
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[61:62], v[1:8] neg_lo:[1,1,0]
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v46, v71 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[57:60]
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_add_nc_u32_e32 v57, s35, v56
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 0x80, v56
	.loc	1 198 27 is_stmt 0              ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v58, s35, v55
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s6, 0x80, v55
	.loc	1 196 13 is_stmt 1              ; generate_amdgcn.py:196:13
	v_add_nc_u32_e32 v56, 16, v56
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s3, s41, v57
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	v_add_nc_u32_e32 v55, 16, v55
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s4, s41, v58
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	s_add_i32 s8, s8, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s5
	s_and_b32 s4, s4, s6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v57, 0x80000000, v54, s3
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	v_add_nc_u32_e32 v54, s43, v54
	s_cmpk_lt_u32 s8, 0x60
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v67, v57, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v65, v37 offset:2560
	ds_load_u8 v66, v37 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v57, 0x80000000, v53, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[61:62], v48 offset:8192
	ds_load_b64 v[63:64], v49 offset:8192
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	v_add_nc_u32_e32 v53, s44, v53
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[57:60], v57, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v37 offset:3584
	ds_load_u8 v68, v37 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v37 offset:512
	ds_load_u8 v68, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v68, v65, 0xc0c0004
	ds_load_u8 v68, v37 offset:1536
	ds_load_u8 v69, v37 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v68, 16, v65
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v37 offset:6656
	ds_load_u8 v66, v37 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v37 offset:7680
	ds_load_u8 v68, v37 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v37 offset:4608
	ds_load_u8 v68, v37 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v68, v65, 0xc0c0004
	ds_load_u8 v68, v37 offset:5632
	ds_load_u8 v69, v37 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v68, 16, v65
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[63:64], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v37 offset:2816
	ds_load_u8 v66, v37 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v37 offset:3840
	ds_load_u8 v68, v37 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v37 offset:768
	ds_load_u8 v68, v37 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v68, v65, 0xc0c0004
	ds_load_u8 v68, v37 offset:1792
	ds_load_u8 v69, v37 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v68, 16, v65
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[61:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v37 offset:6912
	ds_load_u8 v62, v37 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v37 offset:7936
	ds_load_u8 v65, v37 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v37 offset:4864
	ds_load_u8 v65, v37 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v65, v61, 0xc0c0004
	ds_load_u8 v65, v37 offset:5888
	ds_load_u8 v66, v37 offset:5376
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v46, v67 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[57:60]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[63:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 196 13                        ; generate_amdgcn.py:196:13
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ; %.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s7, s19
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v53, v38, s3, 1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v56, v37 offset:6656
	ds_load_u8 v57, v37 offset:6144
	ds_load_u8 v58, v37 offset:7680
	ds_load_u8 v59, v37 offset:7168
	ds_load_u8 v60, v37 offset:4608
	ds_load_u8 v61, v37 offset:4096
	ds_load_u8 v63, v37 offset:5632
	ds_load_u8 v64, v37 offset:5120
	ds_load_u8 v65, v37 offset:2560
	ds_load_u8 v66, v37 offset:2048
	ds_load_u8 v67, v37 offset:3584
	ds_load_u8 v68, v37 offset:3072
	ds_load_u8 v69, v37 offset:3840
	ds_load_u8 v70, v37 offset:3328
	ds_load_u8 v71, v37 offset:2816
	ds_load_u8 v72, v37 offset:2304
	ds_load_u8 v73, v37 offset:512
	ds_load_u8 v74, v37
	ds_load_u8 v75, v37 offset:1536
	ds_load_u8 v76, v37 offset:1024
	ds_load_u8 v77, v37 offset:1792
	ds_load_u8 v78, v37 offset:1280
	ds_load_u8 v79, v37 offset:768
	ds_load_u8 v80, v37 offset:256
	ds_load_u8 v81, v37 offset:7936
	ds_load_u8 v82, v37 offset:7424
	ds_load_u8 v83, v37 offset:6912
	ds_load_u8 v84, v37 offset:6400
	ds_load_u8 v85, v37 offset:5888
	ds_load_u8 v86, v37 offset:5376
	ds_load_u8 v87, v37 offset:4864
	ds_load_u8 v88, v37 offset:4352
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v89.h, v52.l
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v62, v53, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[52:53], v48 offset:8192
	ds_load_b64 v[54:55], v49 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_perm_b32 v73, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v68, v76, v75, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v64, v63, 0xc0c0004
	v_perm_b32 v63, v72, v71, 0xc0c0004
	v_perm_b32 v64, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v69, v80, v79, 0xc0c0004
	v_perm_b32 v70, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v71, v84, v83, 0xc0c0004
	v_perm_b32 v72, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v86, v85, 0xc0c0004
	v_lshl_or_b32 v57, v66, 16, v65
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v88, v87, 0xc0c0004
	v_lshl_or_b32 v56, v68, 16, v67
	v_lshl_or_b32 v59, v58, 16, v73
	v_lshl_or_b32 v58, v61, 16, v60
	v_lshl_or_b32 v61, v64, 16, v63
	v_lshl_or_b32 v60, v70, 16, v69
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v57, v72, 16, v71
	v_lshl_or_b32 v56, v75, 16, v74
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt lgkmcnt(0)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[54:55], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, 1
	s_addk_i32 s35, 0x80
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[54:55], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v52, v1
	v_cvt_f32_i32_e32 v53, v2
	v_cvt_f32_i32_e32 v54, v3
	v_cvt_f32_i32_e32 v55, v4
	v_cvt_f32_i32_e32 v56, v5
	v_cvt_f32_i32_e32 v57, v6
	v_cvt_f32_i32_e32 v58, v7
	v_cvt_f32_i32_e32 v59, v8
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_dual_mul_f32 v61, v89, v10 :: v_dual_add_nc_u32 v44, s45, v44
	v_dual_mul_f32 v52, v89, v52 :: v_dual_add_nc_u32 v45, s46, v45
	v_mul_f32_e32 v56, v89, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s7, s42
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v60, v89, v9 :: v_dual_lshlrev_b32 v1, 16, v62
	ds_store_b32 v50, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v51
	ds_load_b128 v[5:8], v51 offset:16
	v_mul_f32_e32 v63, v89, v12
	v_mul_f32_e32 v67, v89, v16
	v_mul_f32_e32 v64, v89, v13
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v34, v60, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v62, v89, v11 :: v_dual_fmac_f32 v35, v63, v4
	v_mul_f32_e32 v65, v89, v14
	ds_load_b128 v[9:12], v51 offset:1024
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v29, v67, v8 :: v_dual_mul_f32 v66, v89, v15
	v_fmac_f32_e32 v33, v64, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	ds_load_b128 v[13:16], v51 offset:1040
	v_mul_f32_e32 v55, v89, v55
	v_mul_f32_e32 v59, v89, v59
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v39, v61, v2 :: v_dual_fmac_f32 v36, v62, v3
	v_dual_fmac_f32 v31, v65, v6 :: v_dual_fmac_f32 v30, v66, v7
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v28, v52, v9
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v54, v89, v54 :: v_dual_fmac_f32 v25, v55, v12
	v_mul_f32_e32 v53, v89, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v24, v56, v13
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v58, v89, v58 :: v_dual_fmac_f32 v19, v59, v16
	v_dual_mul_f32 v57, v89, v57 :: v_dual_fmac_f32 v26, v54, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v27, v53, v10 :: v_dual_fmac_f32 v22, v58, v15
	v_fmac_f32_e32 v23, v57, v14
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_bfe_u32 v1, v34, 16, 1
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v2, s19, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_bfe_u32 v3, v39, 16, 1
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s34, s34, s19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v1, v34, v1, 0x7fff
	v_bfe_u32 v4, v36, 16, 1
	v_bfe_u32 v5, v35, 16, 1
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v9, s34, s33, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v39, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v3, v36, v4, 0x7fff
	v_add3_u32 v4, v35, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_bfe_u32 v5, v31, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v33, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s1
	v_bfe_u32 v4, v30, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v2, v33, v2, 0x7fff
	v_add3_u32 v5, v31, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_add3_u32 v4, v30, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v7, v27, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s0
	v_bfe_u32 v5, v28, 16, 1
	v_bfe_u32 v6, v29, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s1
	v_cmp_o_f32_e64 s0, v28, v28
	v_add3_u32 v7, v27, v7, 0x7fff
	v_add3_u32 v5, v28, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v6, v29, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_bfe_u32 v10, v25, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v24, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v26, 16, 1
	v_cmp_o_f32_e64 s1, v24, v24
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v0, 16, v0
	v_add3_u32 v7, v24, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, v26, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v10, v25, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_bfe_u32 v11, v23, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v10.h, s0
	v_bfe_u32 v10, v22, 16, 1
	v_add3_u32 v11, v23, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_bfe_u32 v12, v19, 16, 1
	v_cndmask_b32_e64 v0, 0x1054, v0, s1
	v_cndmask_b32_e64 v13, 0x3276, v13, s1
	v_add3_u32 v10, v22, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v12, v19, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v19, v19
	v_cndmask_b16 v7.h, 0x7fff, v11.h, vcc_lo
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v11, v13, 8, v13
	v_cndmask_b32_e64 v14, v2, v1, s1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_cndmask_b32_e64 v1, v1, v2, s1
	v_cndmask_b32_e64 v12, v4, v3, s1
	v_cndmask_b32_e64 v2, v3, v4, s1
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v3, 0x760076, v11
	v_cndmask_b32_e64 v11, v7, v5, s1
	v_cndmask_b32_e64 v4, v5, v7, s1
	v_cndmask_b32_e64 v5, v6, v10, s1
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v3, v3, 4, v3
	s_mov_b32 s0, 0x76543210
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v8, 1, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e64 v7, v10, v6, s1
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x5040504, v0
	v_and_b32_e32 v10, 0x7060706, v3
	v_permlanex16_b32 v3, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v14, v6
	v_perm_b32 v1, v1, v14, v10
	v_perm_b32 v2, v3, v12, v6
	v_perm_b32 v3, v3, v12, v10
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v8, v9, v8, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_perm_b32 v4, v13, v11, v6
	v_perm_b32 v5, v13, v11, v10
	v_perm_b32 v6, v15, v7, v6
	v_perm_b32 v7, v15, v7, v10
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v8, s[16:19], 0 offen offset:512
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 90
		.amdhsa_next_free_sgpr 47
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 90
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4720
; TotalNumSgprs: 49
; NumVgprs: 90
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 90
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     90
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
