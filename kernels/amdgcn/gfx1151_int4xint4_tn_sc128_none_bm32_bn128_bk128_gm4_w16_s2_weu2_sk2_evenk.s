	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v21, 7, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v23, 0x100, v0
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_lshlrev_b32_e32 v22, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v2, 4, v21
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_add_nc_u32_e32 v36, 0, v22
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s28, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s15, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s15
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s15
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s16, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s17, s16, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s16, s16, s15
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s17
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s16
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s19, s18
	s_abs_i32 s15, s2
	s_cvt_f32_u32 s12, s19
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 2, v21
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s20, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s7, 0, s19
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_mad_u64_u32 v[4:5], null, s28, v3, v[1:2]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s20
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s29, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s15, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s20, s16, s19
	s_ashr_i32 s22, s6, 31
	s_sub_i32 s15, s15, s20
	s_add_i32 s20, s16, 1
	s_sub_i32 s21, s15, s19
	s_cmp_ge_u32 s15, s19
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s20, s16
	s_cselect_b32 s15, s21, s15
	s_add_i32 s20, s16, 1
	s_cmp_ge_u32 s15, s19
	s_cselect_b32 s15, s20, s16
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s16, s14, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s23, s15, s22
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s20, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s14, 0x7f
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s14, s14, s16
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s21, s23, s22
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v6, s20, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s24, s14, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s14, s21, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s14
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v6
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 64, v6
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s17
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	s_mul_i32 s15, s28, s20
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s30, s21, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s33, s18, 7
.Ltmp21:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s31, s2, 5
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s16, s29, s20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_add3_u32 v4, s15, s31, v4
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v5, s16, s30, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s15, s3, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s15
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s14, s6
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_b32 v11, v4, s[4:7], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b128 v[7:10], v5, s[12:15], 0 offen
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v4, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v6, 1, v0
	s_mov_b32 s14, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v37, 0, v5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 4, v23
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v36, v11 offset:8192
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[7:10]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s16, s8
	s_mov_b64 s[18:19], s[6:7]
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr16_sgpr17
.LBB0_3:                                ; %Flow147
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v32, 0x70, v6
	v_or_b32_e32 v38, v5, v4
	v_bfe_u32 v33, v0, 4, 1
	v_mov_b32_e32 v26, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, 0, v4, v32
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_add_nc_u32_e32 v35, 0, v38
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_add_i32 s34, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s35, s20, 64
	v_add3_u32 v4, s31, v5, v4
	v_add_nc_u32_e32 v6, s35, v3
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 0xe0, v0
	v_sub_nc_u32_e32 v39, s24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s33, v4
	v_mul_lo_u32 v5, s29, v6
	v_mul_lo_u32 v6, s28, v6
	v_lshl_or_b32 v3, s23, 8, v7
	s_lshl_b32 s15, s23, 7
	s_lshl_b32 s14, s22, 8
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, 0
	v_subrev_nc_u32_e32 v41, s14, v3
	v_add3_u32 v2, v5, s15, v2
	v_add3_u32 v44, v6, s31, v1
	v_mov_b32_e32 v1, 0
	s_lshl_b32 s14, s22, 7
	v_lshlrev_b32_e32 v40, 1, v33
	v_lshlrev_b32_e32 v42, 1, v4
	v_subrev_nc_u32_e32 v43, s14, v2
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v25, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b64 s[16:17], s[8:9]
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_max_i32 s36, s34, 1
	s_lshl_b32 s37, s29, 1
	s_lshl_b32 s38, s29, 6
	s_lshl_b32 s28, s28, 6
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v9, v42, s[24:27], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s35, v39
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s36, s36, -1
	s_add_i32 s35, s35, 64
	v_add_nc_u32_e32 v42, 2, v42
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s36, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v9
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v9, 0x80000000, v44, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v44, s28, v44
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_b32 v46, v9, s[4:7], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v9, 0x80000000, v43, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v43, s38, v43
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b128 v[17:20], v9, s[12:15], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v9, v35 offset:8352
	ds_load_u8 v10, v35 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:8416
	ds_load_u8 v11, v35 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v10, 16, v9
	ds_load_u8 v9, v35 offset:8288
	ds_load_u8 v10, v35 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v35 offset:8192
	ds_load_u8 v11, v35 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v9, 16, v10
	ds_load_u8 v9, v34 offset:640
	ds_load_u8 v10, v34 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v34 offset:896
	ds_load_u8 v11, v34 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v10, 16, v9
	ds_load_u8 v9, v34 offset:128
	ds_load_u8 v10, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v34 offset:384
	ds_load_u8 v11, v34 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:8608
	ds_load_u8 v48, v35 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:8672
	ds_load_u8 v49, v35 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:8480
	ds_load_u8 v49, v35 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:8544
	ds_load_u8 v50, v35 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:1664
	ds_load_u8 v50, v34 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:1920
	ds_load_u8 v51, v34 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:1152
	ds_load_u8 v51, v34 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:1408
	ds_load_u8 v52, v34 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:8864
	ds_load_u8 v48, v35 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:8928
	ds_load_u8 v49, v35 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:8736
	ds_load_u8 v49, v35 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:8800
	ds_load_u8 v50, v35 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:2688
	ds_load_u8 v50, v34 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:2944
	ds_load_u8 v51, v34 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:2176
	ds_load_u8 v51, v34 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:2432
	ds_load_u8 v52, v34 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:9120
	ds_load_u8 v48, v35 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:9184
	ds_load_u8 v49, v35 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:8992
	ds_load_u8 v49, v35 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:9056
	ds_load_u8 v50, v35 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:3712
	ds_load_u8 v50, v34 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:3968
	ds_load_u8 v51, v34 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:3200
	ds_load_u8 v51, v34 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:3456
	ds_load_u8 v52, v34 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:9376
	ds_load_u8 v48, v35 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:9440
	ds_load_u8 v49, v35 offset:9408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:9248
	ds_load_u8 v49, v35 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:9312
	ds_load_u8 v50, v35 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:4736
	ds_load_u8 v50, v34 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:4992
	ds_load_u8 v51, v34 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:4224
	ds_load_u8 v51, v34 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:4480
	ds_load_u8 v52, v34 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:9632
	ds_load_u8 v48, v35 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:9696
	ds_load_u8 v49, v35 offset:9664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:9504
	ds_load_u8 v49, v35 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:9568
	ds_load_u8 v50, v35 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:5760
	ds_load_u8 v50, v34 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:6016
	ds_load_u8 v51, v34 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:5248
	ds_load_u8 v51, v34 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:5504
	ds_load_u8 v52, v34 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:9888
	ds_load_u8 v48, v35 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:9952
	ds_load_u8 v49, v35 offset:9920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:9760
	ds_load_u8 v49, v35 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:9824
	ds_load_u8 v50, v35 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:6784
	ds_load_u8 v50, v34 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:7040
	ds_load_u8 v51, v34 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:6272
	ds_load_u8 v51, v34 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:6528
	ds_load_u8 v52, v34 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v35 offset:10144
	ds_load_u8 v48, v35 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v35 offset:10208
	ds_load_u8 v49, v35 offset:10176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v35 offset:10016
	ds_load_u8 v49, v35 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v35 offset:10080
	ds_load_u8 v50, v35 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	ds_load_u8 v49, v34 offset:7808
	ds_load_u8 v50, v34 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v34 offset:8064
	ds_load_u8 v51, v34 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v34 offset:7296
	ds_load_u8 v51, v34 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v34 offset:7552
	ds_load_u8 v52, v34 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v47, v40, v41
	s_clause 0x7
	buffer_load_u16 v48, v47, s[20:23], 0 offen
	buffer_load_u16 v49, v47, s[20:23], 0 offen offset:4
	buffer_load_u16 v50, v47, s[20:23], 0 offen offset:8
	buffer_load_u16 v51, v47, s[20:23], 0 offen offset:12
	buffer_load_u16 v52, v47, s[20:23], 0 offen offset:16
	buffer_load_u16 v53, v47, s[20:23], 0 offen offset:20
	buffer_load_u16 v54, v47, s[20:23], 0 offen offset:24
	buffer_load_u16 v47, v47, s[20:23], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v9, v45, v9
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v41, s37, v41
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b32 v36, v46 offset:8192
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v37, v[17:20]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v24, v9, v48 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v12, v45, v12 :: v_dual_lshlrev_b32 v51, 16, v51
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v14, v45, v14 :: v_dual_lshlrev_b32 v53, 16, v53
	v_mul_f32_e32 v16, v45, v16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v45, v11 :: v_dual_lshlrev_b32 v54, 16, v54
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v45, v10 :: v_dual_lshlrev_b32 v47, 16, v47
	v_mul_f32_e32 v15, v45, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v13, v45, v13 :: v_dual_fmac_f32 v30, v11, v50
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v29, v12, v51
	v_dual_fmac_f32 v27, v14, v53 :: v_dual_fmac_f32 v26, v15, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v31, v10, v49 :: v_dual_fmac_f32 v28, v13, v52
	v_fmac_f32_e32 v25, v16, v47
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow148
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s33, v38
	s_mul_i32 s4, s31, s33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s34, 0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v10, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v2, s4, v2, 1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v9, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v3, v35 offset:8352
	ds_load_u8 v4, v35 offset:8416
	ds_load_u8 v5, v35 offset:8384
	ds_load_u8 v6, v35 offset:8320
	ds_load_u8 v7, v35 offset:8288
	ds_load_u8 v8, v35 offset:8256
	ds_load_u8 v9, v35 offset:8192
	ds_load_u8 v10, v35 offset:8224
	ds_load_u8 v11, v34 offset:640
	ds_load_u8 v12, v34 offset:896
	ds_load_u8 v13, v34 offset:768
	ds_load_u8 v14, v34 offset:512
	ds_load_u8 v15, v34 offset:128
	ds_load_u8 v16, v34 offset:256
	ds_load_u8 v17, v34
	ds_load_u8 v18, v34 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	v_mov_b32_e32 v7, 0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v9, v10, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v14, v11, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v6
	v_mov_b32_e32 v12, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v17, v15, 0xc0c0004
	ds_load_u8 v15, v35 offset:8608
	ds_load_u8 v17, v35 offset:8672
	ds_load_u8 v19, v35 offset:8640
	ds_load_u8 v20, v35 offset:8576
	ds_load_u8 v36, v35 offset:8480
	ds_load_u8 v37, v35 offset:8544
	ds_load_u8 v38, v35 offset:8512
	ds_load_u8 v39, v35 offset:8448
	ds_load_u8 v40, v34 offset:1664
	ds_load_u8 v41, v34 offset:1920
	ds_load_u8 v42, v34 offset:1792
	ds_load_u8 v43, v34 offset:1536
	ds_load_u8 v44, v34 offset:1152
	ds_load_u8 v45, v34 offset:1408
	ds_load_u8 v46, v34 offset:1280
	ds_load_u8 v47, v34 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v11, v16, v18, 0xc0c0004
	v_lshl_or_b32 v6, v9, 16, v8
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v13, v7
	v_lshl_or_b32 v5, v11, 16, v10
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v14, v7
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v20, v15, 0xc0c0004
	v_perm_b32 v16, v19, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v39, v36, 0xc0c0004
	v_perm_b32 v18, v38, v37, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v43, v40, 0xc0c0004
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v47, v44, 0xc0c0004
	v_lshl_or_b32 v6, v20, 16, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v37, 16, v36
	ds_load_u8 v15, v35 offset:8864
	ds_load_u8 v16, v35 offset:8928
	ds_load_u8 v17, v35 offset:8896
	ds_load_u8 v18, v35 offset:8832
	ds_load_u8 v19, v35 offset:8736
	ds_load_u8 v20, v35 offset:8800
	ds_load_u8 v36, v35 offset:8768
	ds_load_u8 v37, v35 offset:8704
	ds_load_u8 v38, v34 offset:2688
	ds_load_u8 v39, v34 offset:2944
	ds_load_u8 v40, v34 offset:2816
	ds_load_u8 v41, v34 offset:2560
	ds_load_u8 v42, v34 offset:2176
	ds_load_u8 v43, v34 offset:2432
	ds_load_u8 v44, v34 offset:2304
	ds_load_u8 v45, v34 offset:2048
	ds_load_u8 v46, v35 offset:9120
	ds_load_u8 v47, v35 offset:9184
	ds_load_u8 v48, v35 offset:9152
	ds_load_u8 v49, v35 offset:9088
	ds_load_u8 v50, v35 offset:8992
	ds_load_u8 v51, v35 offset:9056
	ds_load_u8 v52, v35 offset:9024
	ds_load_u8 v53, v35 offset:8960
	ds_load_u8 v54, v34 offset:3712
	ds_load_u8 v55, v34 offset:3968
	ds_load_u8 v56, v34 offset:3840
	ds_load_u8 v57, v34 offset:3584
	ds_load_u8 v58, v34 offset:3200
	ds_load_u8 v59, v34 offset:3456
	ds_load_u8 v60, v34 offset:3328
	ds_load_u8 v61, v34 offset:3072
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v17, v37, v19, 0xc0c0004
	v_perm_b32 v18, v36, v20, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v41, v38, 0xc0c0004
	v_perm_b32 v20, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v37, 16, v36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v49, v46, 0xc0c0004
	v_perm_b32 v16, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v53, v50, 0xc0c0004
	v_perm_b32 v18, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v57, v54, 0xc0c0004
	v_perm_b32 v20, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v61, v58, 0xc0c0004
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v37, 16, v36
	ds_load_u8 v15, v35 offset:9376
	ds_load_u8 v16, v35 offset:9440
	ds_load_u8 v17, v35 offset:9408
	ds_load_u8 v18, v35 offset:9344
	ds_load_u8 v19, v35 offset:9248
	ds_load_u8 v20, v35 offset:9312
	ds_load_u8 v36, v35 offset:9280
	ds_load_u8 v37, v35 offset:9216
	ds_load_u8 v38, v34 offset:4736
	ds_load_u8 v39, v34 offset:4992
	ds_load_u8 v40, v34 offset:4864
	ds_load_u8 v41, v34 offset:4608
	ds_load_u8 v42, v34 offset:4224
	ds_load_u8 v43, v34 offset:4480
	ds_load_u8 v44, v34 offset:4352
	ds_load_u8 v45, v34 offset:4096
	ds_load_u8 v46, v35 offset:9632
	ds_load_u8 v47, v35 offset:9696
	ds_load_u8 v48, v35 offset:9664
	ds_load_u8 v49, v35 offset:9600
	ds_load_u8 v50, v35 offset:9504
	ds_load_u8 v51, v35 offset:9568
	ds_load_u8 v52, v35 offset:9536
	ds_load_u8 v53, v35 offset:9472
	ds_load_u8 v54, v34 offset:5760
	ds_load_u8 v55, v34 offset:6016
	ds_load_u8 v56, v34 offset:5888
	ds_load_u8 v57, v34 offset:5632
	ds_load_u8 v58, v34 offset:5248
	ds_load_u8 v59, v34 offset:5504
	ds_load_u8 v60, v34 offset:5376
	ds_load_u8 v61, v34 offset:5120
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v17, v37, v19, 0xc0c0004
	v_perm_b32 v18, v36, v20, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v41, v38, 0xc0c0004
	v_perm_b32 v20, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v37, 16, v36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v49, v46, 0xc0c0004
	v_perm_b32 v16, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v53, v50, 0xc0c0004
	v_perm_b32 v18, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v57, v54, 0xc0c0004
	v_perm_b32 v20, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v61, v58, 0xc0c0004
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v37, 16, v36
	ds_load_u8 v15, v35 offset:9888
	ds_load_u8 v16, v35 offset:9952
	ds_load_u8 v17, v35 offset:9920
	ds_load_u8 v18, v35 offset:9856
	ds_load_u8 v19, v35 offset:9760
	ds_load_u8 v20, v35 offset:9824
	ds_load_u8 v36, v35 offset:9792
	ds_load_u8 v37, v35 offset:9728
	ds_load_u8 v38, v34 offset:6784
	ds_load_u8 v39, v34 offset:7040
	ds_load_u8 v40, v34 offset:6912
	ds_load_u8 v41, v34 offset:6656
	ds_load_u8 v42, v34 offset:6272
	ds_load_u8 v43, v34 offset:6528
	ds_load_u8 v44, v34 offset:6400
	ds_load_u8 v45, v34 offset:6144
	ds_load_u8 v46, v35 offset:10144
	ds_load_u8 v47, v35 offset:10208
	ds_load_u8 v48, v35 offset:10176
	ds_load_u8 v49, v35 offset:10112
	ds_load_u8 v50, v35 offset:10016
	ds_load_u8 v51, v35 offset:10080
	ds_load_u8 v52, v35 offset:10048
	ds_load_u8 v35, v35 offset:9984
	ds_load_u8 v53, v34 offset:7808
	ds_load_u8 v54, v34 offset:8064
	ds_load_u8 v55, v34 offset:7936
	ds_load_u8 v56, v34 offset:7680
	ds_load_u8 v57, v34 offset:7296
	ds_load_u8 v58, v34 offset:7552
	ds_load_u8 v59, v34 offset:7424
	ds_load_u8 v34, v34 offset:7168
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v17, v37, v19, 0xc0c0004
	v_perm_b32 v18, v36, v20, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v41, v38, 0xc0c0004
	v_perm_b32 v20, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v37, 16, v36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v49, v46, 0xc0c0004
	v_perm_b32 v16, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v35, v50, 0xc0c0004
	v_perm_b32 v18, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v56, v53, 0xc0c0004
	v_perm_b32 v20, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v34, v57, 0xc0c0004
	v_perm_b32 v35, v59, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v16, 16, v15
	v_lshl_or_b32 v3, v18, 16, v17
	v_lshl_or_b32 v6, v20, 16, v19
	v_lshl_or_b32 v5, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[7:14], v[5:6], v[3:4], v[7:14] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v3, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v5, v11
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v6, v14
.LBB0_8:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v11, v33, v32
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s3, s3, s29
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s11, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s3, s30, s3
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v11, s3, v11, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s10
	v_mov_b16_e32 v19.l, 0
	.loc	1 168 18 is_stmt 1              ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v19.h, v2.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v13, 4, v11
	v_add_nc_u32_e32 v14, 8, v11
	v_add_nc_u32_e32 v15, 12, v11
	v_cndmask_b32_e64 v12, 0x80000000, v11, s2
	v_add_nc_u32_e32 v16, 16, v11
	v_add_nc_u32_e32 v17, 20, v11
	v_add_nc_u32_e32 v18, 24, v11
	v_add_nc_u32_e32 v11, 28, v11
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x7
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v10, v10, v19 :: v_dual_lshlrev_b32 v33, 1, v0
	v_dual_mul_f32 v7, v7, v19 :: v_dual_and_b32 v2, 0x180, v0
	v_dual_mul_f32 v4, v4, v19 :: v_dual_lshlrev_b32 v35, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v9, v9, v19 :: v_dual_and_b32 v36, 0x60, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v33, 28, v33
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v3, v3, v19 :: v_dual_and_b32 v20, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_bfe_i32 v34, v0, 3, 1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v5, v5, v19 :: v_dual_lshlrev_b32 v0, 5, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshrrev_b32_e32 v2, 5, v2
	v_and_or_b32 v33, 0xf00, v35, v33
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v6, v6, v19 :: v_dual_lshlrev_b32 v1, 2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v0, 32, v0
	v_and_b32_e32 v34, 0x2040, v34
	v_xor_b32_e32 v2, v33, v2
	v_and_or_b32 v22, 0x31c, v22, v36
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v8, v8, v19 :: v_dual_lshlrev_b32 v21, 10, v21
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshrrev_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v0, v0, v1, v2
	v_xor_b32_e32 v22, v22, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s3, s31, s29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v35, 0, v0
	v_xad_u32 v36, 0x1010, v0, 0
	v_xad_u32 v37, 0x2040, v0, 0
	v_xad_u32 v38, 0x3050, v0, 0
	v_or3_b32 v19, v21, v23, v22
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v21, s29, v32
	s_add_i32 s3, s3, s30
	s_lshl_b32 s4, s29, 2
	s_mul_i32 s8, s29, 12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v1, 0, v19
	v_xad_u32 v2, v19, 4, 0
	v_xad_u32 v22, v19, 8, 0
	v_xad_u32 v23, v19, 12, 0
	v_xad_u32 v32, v19, 16, 0
	v_xad_u32 v33, v19, 20, 0
	v_xad_u32 v34, v19, 24, 0
	v_xad_u32 v19, v19, 28, 0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_lshl_b32 s5, s29, 3
	s_lshl_b32 s9, s29, 4
	s_mul_i32 s10, s29, 20
	s_mul_i32 s11, s29, 24
	s_mul_i32 s12, s29, 28
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v12
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v12, 16, v13
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v13, 16, v14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v15
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v16
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v3, v0, v24
	v_fma_f32 v3, v7, v12, v31
	v_fma_f32 v7, v8, v13, v30
	v_fma_f32 v8, v10, v14, v29
	v_fma_f32 v5, v5, v15, v28
	v_fma_f32 v4, v4, v17, v26
	v_fma_f32 v9, v9, v16, v27
	v_fma_f32 v6, v6, v11, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v24, v0, s2
	v_cndmask_b32_e64 v3, v31, v3, s2
	v_cndmask_b32_e64 v7, v30, v7, s2
	v_cndmask_b32_e64 v8, v29, v8, s2
	v_cndmask_b32_e64 v5, v28, v5, s2
	v_cndmask_b32_e64 v4, v26, v4, s2
	v_cndmask_b32_e64 v9, v27, v9, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	ds_store_b32 v1, v0
	ds_store_b32 v2, v3
	ds_store_b32 v22, v7
	ds_store_b32 v23, v8
	ds_store_b32 v32, v5
	ds_store_b32 v33, v9
	ds_store_b32 v34, v4
	ds_store_b32 v19, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[0:1], v35 offset1:32
	ds_load_2addr_b32 v[2:3], v36 offset1:32
	ds_load_2addr_b32 v[4:5], v37 offset1:32
	ds_load_2addr_b32 v[6:7], v38 offset1:32
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v8, s3, v20, v21
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v9, 2, v8
	v_add_lshl_u32 v10, v8, s4, 2
	v_add_lshl_u32 v12, v8, s8, 2
	v_add_lshl_u32 v11, v8, s5, 2
	v_add_lshl_u32 v13, v8, s9, 2
	v_add_lshl_u32 v14, v8, s10, 2
	v_add_lshl_u32 v15, v8, s11, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v9, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v2, v10, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v4, v11, s[0:3], 0 offen
	v_add_lshl_u32 v0, v8, s12, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v6, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v13, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v14, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v15, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v0, s[0:3], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 62
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_vgpr, 62
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7384
; TotalNumSgprs: 41
; NumVgprs: 62
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 62
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm32_bn128_bk128_gm4_w16_s2_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     62
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
