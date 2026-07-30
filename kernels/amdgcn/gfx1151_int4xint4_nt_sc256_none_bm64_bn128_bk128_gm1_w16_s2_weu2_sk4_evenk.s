	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v10, 3, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v11, 0x70, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v3, 64, v2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshrrev_b32_e32 v12, 1, v11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s34, 63
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
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s12, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s16
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s12, s16, s12
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s17, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s15, s17
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s12
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s13, s15
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 56, v10
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v10, v10, v12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s27, s7
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v34, 0, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v10, 0x100, v0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s13
	s_sub_i32 s13, 0, s15
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s6
	s_mul_hi_u32 s12, s6, s13
	s_xor_b32 s13, s2, s17
	s_add_i32 s12, s6, s12
	s_ashr_i32 s13, s13, 31
	s_mul_hi_u32 s12, s18, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s15
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s26, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s18, s15
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s15, s19, s12
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s18, s14, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s15, s15, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s14, 0xff
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s14, s14, s18
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s18, s15, s13
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s12, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s17, s18, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s14, s14, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s17
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v6, s12, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s18, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[4:5], null, s14, v2, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mul_lo_u32 v5, s14, v3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s34, s18, 8
.Ltmp21:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s2, 6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v6
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 0x80, v6
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	s_mul_i32 s16, s33, s14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s19, 0x100
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s17, s22, s14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s23, -1, 0
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_add_i32 s16, s16, s12
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s12, s17, v4
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s17, s3, vcc_lo
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v4, s16, v4
	v_add3_u32 v5, v5, v1, s16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s17
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s5, s5, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v4
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v8, 0x80000000, v5, vcc_lo
	s_and_b32 s25, s25, 0xffff
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b64 v[4:5], v6, s[4:7], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[24:27], 0 offen
	buffer_load_b64 v[8:9], v8, s[24:27], 0 offen
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0x1ff
	s_mov_b32 s16, -1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v34, v[4:5] offset:8192
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[6:7], v[8:9] offset1:8
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_mov_b64 s[30:31], s[6:7]
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow68
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v32, 15, v0
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v9, 0xe0, v0
	v_lshrrev_b32_e32 v33, 4, v10
	v_bfe_u32 v28, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v30, 6, v32
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v29, 2, v0
	v_dual_mov_b32 v18, 0 :: v_dual_lshlrev_b32 v31, 5, v9
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v25, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s1, s15, 7
	v_lshl_or_b32 v12, s15, 8, v9
	v_or_b32_e32 v3, s1, v3
	v_or_b32_e32 v26, s1, v2
	v_and_or_b32 v6, 0x438, v4, v30
	v_and_b32_e32 v4, 56, v4
	s_lshl_b32 s1, s13, 7
	s_lshl_b32 s15, s13, 8
	v_subrev_nc_u32_e32 v3, s1, v3
	v_subrev_nc_u32_e32 v37, s15, v12
	v_or3_b32 v14, v31, v4, v30
	v_add3_u32 v4, s22, v33, v32
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_mov_b32_e32 v12, 0
	v_xor_b32_e32 v13, 24, v6
	v_add_nc_u32_e32 v5, 32, v4
	v_mul_lo_u32 v39, s34, v4
	v_subrev_nc_u32_e32 v4, s1, v26
	v_xor_b32_e32 v15, 32, v6
	v_xor_b32_e32 v16, 40, v6
	v_mul_lo_u32 v27, s34, v5
	v_add_nc_u32_e32 v5, s22, v2
	v_mad_u64_u32 v[2:3], null, s14, v3, s[12:13]
	v_mad_u64_u32 v[3:4], null, s14, v4, s[12:13]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s14, v5, s[12:13]
	v_xor_b32_e32 v17, 48, v6
	v_xor_b32_e32 v18, 56, v6
	v_xor_b32_e32 v19, 8, v14
	v_xor_b32_e32 v20, 16, v14
	v_xor_b32_e32 v21, 24, v14
	v_xor_b32_e32 v22, 32, v14
	v_xor_b32_e32 v23, 40, v14
	v_xor_b32_e32 v24, 48, v14
	v_xor_b32_e32 v25, 56, v14
	s_max_i32 s16, s0, 1
	s_add_i32 s45, s12, 0x80
	s_mov_b32 s12, 0
	v_sub_nc_u32_e32 v35, s14, v1
	s_lshl_b32 s44, s16, 7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v36, 1, v28
	v_add3_u32 v40, v2, v1, 0x80
	v_add3_u32 v41, v3, v1, 0x80
	v_add3_u32 v42, v4, v1, 0x80
	v_add_nc_u32_e32 v43, 0, v6
	v_add_nc_u32_e32 v44, 0, v7
	v_add_nc_u32_e32 v45, 0, v8
	v_dual_mov_b32 v1, s12 :: v_dual_lshlrev_b32 v38, 1, v27
	v_mov_b32_e32 v7, s18
	v_dual_mov_b32 v4, s15 :: v_dual_lshlrev_b32 v39, 1, v39
	v_add_nc_u32_e32 v46, 0, v13
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v47, 0, v15
	v_add_nc_u32_e32 v48, 0, v16
	v_add_nc_u32_e32 v49, 0, v17
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v50, 0, v18
	v_add_nc_u32_e32 v51, 0, v14
	v_add_nc_u32_e32 v52, 0, v19
	v_mov_b32_e32 v19, 0
	v_add_nc_u32_e32 v53, 0, v20
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v54, 0, v21
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v55, 0, v22
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v56, 0, v23
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v57, 0, v24
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v58, 0, v25
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v14, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s1, s35, 1
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v93, v39, s[40:43], 0 offen
	buffer_load_u16 v94, v38, s[40:43], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_add_i32 s8, s45, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v59, s12, v42
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s8, v35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v38, 2, v38
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	buffer_load_b64 v[85:86], v59, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[73:76], v43 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[87:88], v51
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[77:80], v44 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[89:90], v52
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[81:84], v45 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[91:92], v53
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[73:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[89:90], v[77:78], v[59:66] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[75:78], v46 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[87:88], v54
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[67:74], v[89:90], v[79:80], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[91:92], v[81:82], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[91:92], v[83:84], v[67:74] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[79:82], v47 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[83:84], v55
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[77:78], v[67:74] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[87:88], v56
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[75:78], v48 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[79:80], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[83:84], v[81:82], v[67:74] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[83:84], v57
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[79:82], v49 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[77:78], v[67:74] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[87:88], v58
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[75:78], v50 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[83:84], v[79:80], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[83:84], v[81:82], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[87:88], v[75:76], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[87:88], v[77:78], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v78, v62
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v77, v61
	v_cvt_f32_i32_e32 v76, v60
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v88, 16, v93
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v95, s12, v41
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v90, 16, v94
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v97, v36, v37
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v78, v88, v78 :: v_dual_add_nc_u32 v39, 2, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v59, 0x80000000, v95 :: v_dual_mul_f32 v68, v90, v68
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v89, v97, s[36:39], 0 offen
	buffer_load_u16 v79, v97, s[36:39], 0 offen offset:4
	buffer_load_u16 v80, v97, s[36:39], 0 offen offset:8
	buffer_load_u16 v81, v97, s[36:39], 0 offen offset:12
	buffer_load_u16 v82, v97, s[36:39], 0 offen offset:16
	buffer_load_u16 v83, v97, s[36:39], 0 offen offset:20
	buffer_load_u16 v84, v97, s[36:39], 0 offen offset:24
	buffer_load_u16 v87, v97, s[36:39], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v67, v90, v67 :: v_dual_add_nc_u32 v96, s12, v40
	v_mul_f32_e32 v75, v88, v75
	v_dual_mul_f32 v64, v88, v64 :: v_dual_add_nc_u32 v37, s1, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v66, v88, v66 :: v_dual_cndmask_b32 v61, 0x80000000, v96
	v_mul_f32_e32 v76, v88, v76
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b64 v[59:60], v59, s[24:27], 0 offen
	buffer_load_b64 v[61:62], v61, s[24:27], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v77, v88, v77 :: v_dual_mul_f32 v72, v90, v72
	v_dual_mul_f32 v63, v88, v63 :: v_dual_mul_f32 v74, v90, v74
	v_mul_f32_e32 v65, v88, v65
	v_mul_f32_e32 v71, v90, v71
	v_mul_f32_e32 v69, v90, v69
	v_mul_f32_e32 v70, v90, v70
	v_mul_f32_e32 v73, v90, v73
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_addk_i32 s12, 0x80
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s44, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b64 v34, v[85:86] offset:8192
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[59:60], v[61:62] offset1:8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v88, 16, v89
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v12, v75, v88 :: v_dual_lshlrev_b32 v87, 16, v87
	v_dual_fmac_f32 v26, v76, v79 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v83, 16, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v21, v65, v84 :: v_dual_fmac_f32 v16, v71, v82
	v_dual_fmac_f32 v24, v78, v81 :: v_dual_fmac_f32 v25, v77, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v22, v64, v83 :: v_dual_fmac_f32 v27, v67, v88
	v_dual_fmac_f32 v19, v68, v79 :: v_dual_fmac_f32 v14, v73, v84
	v_dual_fmac_f32 v18, v69, v80 :: v_dual_fmac_f32 v23, v63, v82
	v_fmac_f32_e32 v20, v66, v87
	v_fmac_f32_e32 v17, v70, v81
	v_fmac_f32_e32 v15, v72, v83
	v_fmac_f32_e32 v13, v74, v87
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v33, v32
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s1, s22, s34
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s0, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s23
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s1, s1, s0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, 32, v1
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_i32_i24_e32 v1, s34, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_i32_i24_e32 v2, s34, v2
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, s1, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v34, v1, s[28:31], 0 offen
	buffer_load_u16 v36, v2, s[28:31], 0 offen
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	v_and_b32_e32 v2, 14, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ; %._crit_edge._crit_edge
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshlrev_b32_e32 v44, 2, v0
	s_branch .LBB0_9
.LBB0_8:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr44
.LBB0_9:                                ; %Flow
	v_dual_mov_b32 v4, 0 :: v_dual_lshlrev_b32 v1, 2, v2
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	v_or3_b32 v35, v30, v31, v1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_or_b32 v67, 0x438, v29, v30
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s13, s12
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v3, v35, 24, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v30, 0, v67
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v4, v35, 16, 0
	v_xad_u32 v5, v35, 8, 0
	v_add_nc_u32_e32 v6, 0, v35
	ds_load_b64 v[7:8], v3
	ds_load_b64 v[69:70], v4
	ds_load_b64 v[71:72], v5
	ds_load_b64 v[65:66], v6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[3:6], v30 offset0:16 offset1:20
	v_xad_u32 v31, v67, 8, 0
	v_xad_u32 v37, v67, 16, 0
	ds_load_2addr_stride64_b64 v[30:33], v31 offset0:16 offset1:20
	ds_load_2addr_stride64_b64 v[53:56], v37 offset0:16 offset1:20
	v_xad_u32 v47, v67, 24, 0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v45, v35, 40, 0
	v_xad_u32 v46, v35, 32, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v44, s19 :: v_dual_mov_b32 v39, s14
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v61, v67, 32, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v43, s18 :: v_dual_mov_b32 v42, s17
	v_mov_b32_e32 v37, s12
	v_dual_mov_b32 v41, s16 :: v_dual_mov_b32 v40, s15
	v_mov_b32_e32 v38, s13
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[57:60], v47 offset0:16 offset1:20
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[73:74], v45
	ds_load_b64 v[75:76], v46
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[61:64], v61 offset0:16 offset1:20
	v_xad_u32 v68, v67, 48, 0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v77, v35, 56, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[65:66], v[3:4], v[37:44] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v3, v67, 40, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[37:44], v[65:66], v[5:6], v[37:44] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v35, v35, 48, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[71:72], v[30:31], v[45:52] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v30, v67, 56, 0
	ds_load_2addr_stride64_b64 v[3:6], v3 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[37:44], v[71:72], v[32:33], v[37:44] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[65:68], v68 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[69:70], v[53:54], v[45:52] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[53:54], v35
	ds_load_b64 v[71:72], v77
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[30:33], v30 offset0:16 offset1:20
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[37:44], v[69:70], v[55:56], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[7:8], v[57:58], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[7:8], v[59:60], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[75:76], v[61:62], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[75:76], v[63:64], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[73:74], v[3:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[73:74], v[5:6], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[53:54], v[65:66], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[53:54], v[67:68], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[45:52], v[71:72], v[30:31], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[37:44], v[71:72], v[32:33], v[37:44] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v3, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v46
	v_cvt_f32_i32_e32 v5, v47
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v8, v50
	v_cvt_f32_i32_e32 v32, v51
	v_cvt_f32_i32_e32 v33, v52
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_mov_b32_e32 v44, v29
.LBB0_11:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v29, 1, v9
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s35
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s11, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v28, v28, v29
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s10
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshrrev_b32_e32 v53, 1, v10
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v28, s0, v28, 1
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s22, s35
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, 0x1008, 0, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v30, 4, v28
	v_add_nc_u32_e32 v31, 8, v28
	v_add_nc_u32_e32 v45, 12, v28
	v_add_nc_u32_e32 v46, 16, v28
	v_add_nc_u32_e32 v47, 20, v28
	v_add_nc_u32_e32 v48, 24, v28
	v_cndmask_b32_e64 v29, 0x80000000, v28, s2
	v_add_nc_u32_e32 v28, 28, v28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x7
	buffer_load_u16 v49, v29, s[4:7], 0 offen
	buffer_load_u16 v50, v30, s[4:7], 0 offen
	buffer_load_u16 v51, v31, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v52, v28, s[4:7], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v29.h, v34.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_and_b32_e32 v34, 0x78, v44
	v_bfe_i32 v44, v0, 0, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v28.h, v36.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v30, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v31, 7, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v9, v9, 3, v34
	v_and_b32_e32 v44, 0x840, v44
	v_and_b32_e32 v36, 1, v0
	v_bfe_i32 v0, v0, 7, 1
	v_mov_b16_e32 v28.l, 0
	v_lshlrev_b32_e32 v2, 11, v2
	v_xor_b32_e32 v9, v9, v44
	v_lshlrev_b32_e32 v34, 6, v36
	v_and_b32_e32 v0, 0x840, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v38, v38, v28 :: v_dual_lshlrev_b32 v11, 4, v11
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v29.l, v28.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v35, v35, v28
	v_mul_f32_e32 v37, v37, v28
	v_mul_f32_e32 v40, v40, v28
	v_mul_f32_e32 v41, v41, v28
	v_mul_f32_e32 v42, v42, v28
	v_mul_f32_e32 v43, v43, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v2, v2, v53, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v39, v39, v28
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v28, s35, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v34
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v36, s0, s33, v30
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v4, v4, v29
	v_mul_f32_e32 v5, v5, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v0, v0, v11, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v62, v32, v29
	v_mul_f32_e32 v33, v33, v29
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[29:30], null, s35, 24, v[28:29]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v54, 60, v31
	v_or_b32_e32 v55, 52, v31
	v_or_b32_e32 v56, 44, v31
	v_or_b32_e32 v57, 36, v31
	v_or_b32_e32 v58, 28, v31
	v_or_b32_e32 v59, 20, v31
	v_or_b32_e32 v60, 12, v31
	v_or_b32_e32 v61, 4, v31
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[30:31], null, s35, 40, v[28:29]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v70, 0, v0
	v_xad_u32 v71, 0x2010, v0, 0
	v_xad_u32 v72, 0x4020, v0, 0
	v_xad_u32 v73, 0x6030, v0, 0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[31:32], null, s35, 48, v[28:29]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v32, 0, v2
	v_xad_u32 v53, v2, 8, 0
	v_xad_u32 v64, v2, 16, 0
	v_xad_u32 v65, v2, 24, 0
	v_xad_u32 v66, v2, 32, 0
	v_xad_u32 v67, v2, 40, 0
	v_xad_u32 v68, v2, 48, 0
	v_xad_u32 v69, v2, 56, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v34, s35, v61
	v_mul_lo_u32 v44, s35, v60
	v_mul_lo_u32 v59, s35, v59
	v_mul_lo_u32 v58, s35, v58
	v_mul_lo_u32 v57, s35, v57
	v_lshl_add_u32 v60, s35, 3, v28
	v_mul_lo_u32 v56, s35, v56
	v_lshl_add_u32 v61, s35, 4, v28
	v_mul_lo_u32 v55, s35, v55
	v_lshl_add_u32 v63, s35, 5, v28
	v_mul_lo_u32 v54, s35, v54
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s23, s7
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v49
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v1, 16, v50
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v2, 16, v51
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v45
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v46
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v47
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v48
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v52
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v3, v0, v12
	v_fma_f32 v35, v35, v0, v27
	v_fma_f32 v4, v4, v1, v26
	v_fma_f32 v37, v37, v1, v19
	v_fma_f32 v5, v5, v2, v25
	v_fma_f32 v38, v38, v2, v18
	v_fma_f32 v6, v6, v9, v24
	v_fma_f32 v7, v7, v10, v23
	v_fma_f32 v9, v39, v9, v17
	v_fma_f32 v47, v8, v11, v22
	v_fma_f32 v33, v33, v46, v20
	v_fma_f32 v39, v40, v10, v16
	v_fma_f32 v11, v41, v11, v15
	v_fma_f32 v41, v43, v46, v13
	v_fma_f32 v48, v62, v45, v21
	v_fma_f32 v40, v42, v45, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v12, v3, s2
	v_cndmask_b32_e64 v1, v27, v35, s2
	v_cndmask_b32_e64 v2, v26, v4, s2
	v_cndmask_b32_e64 v3, v19, v37, s2
	v_cndmask_b32_e64 v4, v25, v5, s2
	v_cndmask_b32_e64 v5, v18, v38, s2
	v_cndmask_b32_e64 v6, v24, v6, s2
	v_cndmask_b32_e64 v8, v23, v7, s2
	v_cndmask_b32_e64 v7, v17, v9, s2
	v_cndmask_b32_e64 v10, v22, v47, s2
	v_cndmask_b32_e64 v12, v20, v33, s2
	v_cndmask_b32_e64 v9, v16, v39, s2
	v_cndmask_b32_e64 v11, v15, v11, s2
	v_cndmask_b32_e64 v13, v13, v41, s2
	v_cndmask_b32_e64 v21, v21, v48, s2
	v_cndmask_b32_e64 v22, v14, v40, s2
	ds_store_b64 v32, v[0:1]
	ds_store_b64 v53, v[2:3]
	ds_store_b64 v64, v[4:5]
	ds_store_b64 v65, v[6:7]
	ds_store_b64 v66, v[8:9]
	ds_store_b64 v67, v[10:11]
	ds_store_b64 v68, v[21:22]
	ds_store_b64 v69, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v70 offset1:16
	ds_load_2addr_b64 v[4:7], v71 offset1:16
	ds_load_2addr_b64 v[8:11], v72 offset1:16
	ds_load_2addr_b64 v[12:15], v73 offset1:16
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[16:17], null, s35, 56, v[28:29]
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v17, v36, v28, 2
	v_add_lshl_u32 v18, v36, v34, 2
	v_add_lshl_u32 v19, v36, v60, 2
	v_add_lshl_u32 v20, v36, v44, 2
	v_add_lshl_u32 v21, v36, v61, 2
	v_add_lshl_u32 v22, v36, v59, 2
	v_add_lshl_u32 v23, v36, v58, 2
	v_add_lshl_u32 v24, v36, v63, 2
	v_add_lshl_u32 v25, v36, v57, 2
	v_add_lshl_u32 v28, v36, v29, 2
	v_add_lshl_u32 v29, v36, v30, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v17, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v18, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v8, v19, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x7
	buffer_atomic_add_f32 v12, v20, s[20:23], 0 offen
	buffer_atomic_add_f32 v2, v21, s[20:23], 0 offen
	buffer_atomic_add_f32 v6, v22, s[20:23], 0 offen
	buffer_atomic_add_f32 v10, v28, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v23, s[20:23], 0 offen
	buffer_atomic_add_f32 v1, v24, s[20:23], 0 offen
	buffer_atomic_add_f32 v5, v25, s[20:23], 0 offen
	buffer_atomic_add_f32 v9, v29, s[20:23], 0 offen
	v_add_lshl_u32 v26, v36, v56, 2
	v_add_lshl_u32 v30, v36, v31, 2
	v_add_lshl_u32 v27, v36, v55, 2
	v_add_lshl_u32 v16, v36, v16, 2
	v_add_lshl_u32 v0, v36, v54, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v26, s[20:23], 0 offen
	buffer_atomic_add_f32 v3, v30, s[20:23], 0 offen
	buffer_atomic_add_f32 v7, v27, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v16, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v0, s[20:23], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 98
		.amdhsa_next_free_sgpr 46
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
		.amdhsa_inst_pref_size 35
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_vgpr, 98
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4412
; TotalNumSgprs: 48
; NumVgprs: 98
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 98
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     98
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
