	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v46, 0, v0
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v27, 0x70, v9
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v47, 0, v10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s11, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s13, s11, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s13, s13, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s11, s11, s13
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s11, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s12, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s9
	s_mul_hi_u32 s12, s9, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s12
	s_xor_b32 s12, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s9, s8
	s_sub_i32 s10, s10, s13
	s_add_i32 s13, s9, 1
	s_sub_i32 s14, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s10, s14, s10
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s13, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s12
	s_sub_i32 s16, s8, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s8, s11, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s17, s8, 1
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s19, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s19
	v_readfirstlane_b32 s19, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s11, 0, s18
	s_mul_f32 s19, s19, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s19
	s_abs_i32 s19, s2
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s5
	s_mul_hi_u32 s5, s19, s10
	s_xor_b32 s10, s2, s17
	s_mul_i32 s22, s5, s18
	s_ashr_i32 s30, s10, 31
	s_sub_i32 s19, s19, s22
	s_add_i32 s22, s5, 1
	s_sub_i32 s23, s19, s18
	s_cmp_ge_u32 s19, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s22, s5
	s_cselect_b32 s19, s23, s19
	s_add_i32 s23, s5, 1
	s_cmp_ge_u32 s19, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s22, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s23, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s24, s4, 31
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s31, s5, s30
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s34, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s24, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s18, s31, s30
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s34, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s35, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s18, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s17, s24, s4
.Ltmp19:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s5
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 16, v7
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s19, s7, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s18, s18, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s33, s17, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s5, s2, 5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s24, 31
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s25, s19, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s23, s6, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 31, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s24, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 2, v1
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s6, v3, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s19, v3, v[2:3]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s23, s5, v4
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s23, s11
	.loc	1 166 34 is_stmt 0              ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s18, s25, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v6, s7, v5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v7, v5, s[20:23], 0 offen
	buffer_load_b32 v8, v6, s[20:23], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 15, v0
	v_lshrrev_b32_e32 v6, 4, v0
	s_mov_b32 s22, -1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v44, v27, v5
	v_and_b32_e32 v6, 16, v6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v46, v4 offset:4096
                                        ; implicit-def: $vgpr4
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v47, v7, v8 offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v4, v27, v5
	s_mov_b32 s22, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v29, 0x80, v4
	v_or_b32_e32 v30, 0x100, v4
	v_or_b32_e32 v31, 0x180, v4
	v_or_b32_e32 v32, 0x200, v4
	v_or_b32_e32 v33, 0x280, v4
	v_or_b32_e32 v34, 0x300, v4
	v_or_b32_e32 v35, 0x380, v4
	v_or_b32_e32 v36, 0x400, v4
	v_or_b32_e32 v37, 0x480, v4
	v_or_b32_e32 v38, 0x500, v4
	v_or_b32_e32 v39, 0x580, v4
	v_or_b32_e32 v40, 0x600, v4
	v_or_b32_e32 v41, 0x680, v4
	v_or_b32_e32 v42, 0x700, v4
	v_or_b32_e32 v43, 0x780, v4
.LBB0_2:                                ; %Flow219
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v26, v6, v5
	v_bfe_u32 v28, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v45, 0, v26
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_add_i32 s1, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	s_mov_b32 s36, 0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_and_b32_e32 v7, 0xe0, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v4, 1, v3
	v_sub_nc_u32_e32 v48, s35, v3
	v_add3_u32 v5, s5, v6, v5
	v_lshl_or_b32 v7, s31, 8, v7
	s_lshl_b32 s23, s31, 7
	v_lshl_or_b32 v4, s3, 5, v4
	s_add_i32 s3, s34, 16
	v_mul_lo_u32 v5, s33, v5
	v_add_nc_u32_e32 v3, s3, v3
	v_add_nc_u32_e32 v10, s19, v7
	v_add_nc_u32_e32 v8, 33, v4
	v_add_nc_u32_e32 v4, 32, v4
	s_lshl_b32 s22, s30, 8
	v_mul_lo_u32 v3, s6, v3
	v_subrev_nc_u32_e32 v50, s22, v10
	v_mul_lo_u32 v6, s7, v8
	v_mul_lo_u32 v4, s7, v4
	v_subrev_nc_u32_e32 v51, s22, v7
	s_lshl_b32 s22, s30, 7
	v_dual_mov_b32 v23, 0 :: v_dual_lshlrev_b32 v52, 1, v5
	v_add3_u32 v55, v3, s5, v1
	v_or_b32_e32 v29, 0x80, v44
	v_add3_u32 v6, v6, s23, v2
	v_add3_u32 v2, v4, s23, v2
	v_or_b32_e32 v30, 0x100, v44
	v_or_b32_e32 v31, 0x180, v44
	v_or_b32_e32 v32, 0x200, v44
	v_subrev_nc_u32_e32 v53, s22, v6
	v_subrev_nc_u32_e32 v54, s22, v2
	v_mov_b32_e32 v1, s36
	v_or_b32_e32 v33, 0x280, v44
	v_or_b32_e32 v34, 0x300, v44
	v_or_b32_e32 v35, 0x380, v44
	v_or_b32_e32 v36, 0x400, v44
	v_or_b32_e32 v37, 0x480, v44
	v_or_b32_e32 v38, 0x500, v44
	v_or_b32_e32 v39, 0x580, v44
	v_or_b32_e32 v40, 0x600, v44
	v_or_b32_e32 v41, 0x680, v44
	v_or_b32_e32 v42, 0x700, v44
	v_or_b32_e32 v43, 0x780, v44
	v_dual_mov_b32 v2, s37 :: v_dual_lshlrev_b32 v49, 1, v28
	v_mov_b32_e32 v10, 0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v56, 0, v44
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_mov_b32_e32 v15, 0
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s34, s7, 2
	s_lshl_b32 s35, s7, 5
	s_lshl_b32 s6, s6, 4
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s3, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	s_add_i32 s3, s3, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s0, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v57, 0x80000000, v55, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v55, s6, v55
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v79, v57, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v57, 0x80000000, v54, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v54, s35, v54
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v80, v57, s[20:23], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v57, v45 offset:4256
	ds_load_u8 v58, v45 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v45 offset:4320
	ds_load_u8 v59, v45 offset:4288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v58, 16, v57
	ds_load_u8 v57, v45 offset:4192
	ds_load_u8 v58, v45 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v45 offset:4096
	ds_load_u8 v59, v45 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v57, 16, v58
	ds_load_u8 v57, v56 offset:640
	ds_load_u8 v58, v56 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v56 offset:896
	ds_load_u8 v59, v56 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v58, 16, v57
	ds_load_u8 v57, v56 offset:128
	ds_load_u8 v58, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v56 offset:384
	ds_load_u8 v59, v56 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v45 offset:4512
	ds_load_u8 v66, v45 offset:4480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v45 offset:4576
	ds_load_u8 v67, v45 offset:4544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v66, 16, v65
	ds_load_u8 v65, v45 offset:4384
	ds_load_u8 v66, v45 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v45 offset:4448
	ds_load_u8 v67, v45 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v66, 16, v65
	ds_load_u8 v65, v56 offset:1664
	ds_load_u8 v66, v56 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v56 offset:1920
	ds_load_u8 v67, v56 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v56 offset:1152
	ds_load_u8 v67, v56 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v56 offset:1408
	ds_load_u8 v68, v56 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v65, 0x80000000, v53, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b32 v81, v65, s[20:23], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v65, v56 offset:2688
	ds_load_u8 v66, v56 offset:2560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v53, s35, v53
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v56 offset:2944
	ds_load_u8 v67, v56 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v66, 16, v65
	ds_load_u8 v65, v56 offset:2176
	ds_load_u8 v66, v56 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v56 offset:2432
	ds_load_u8 v67, v56 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v66, 16, v65
	v_wmma_i32_16x16x16_iu4 v[65:72], v[77:78], v[73:74], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v56 offset:3712
	ds_load_u8 v74, v56 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v56 offset:3968
	ds_load_u8 v77, v56 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v77, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v56 offset:3200
	ds_load_u8 v77, v56 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	ds_load_u8 v77, v56 offset:3456
	ds_load_u8 v78, v56 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v77, 16, v73
	v_wmma_i32_16x16x16_iu4 v[65:72], v[73:74], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v73, v52, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v74, v49, v51
	s_clause 0x7
	buffer_load_u16 v75, v74, s[28:31], 0 offen
	buffer_load_u16 v76, v74, s[28:31], 0 offen offset:4
	buffer_load_u16 v77, v74, s[28:31], 0 offen offset:8
	buffer_load_u16 v78, v74, s[28:31], 0 offen offset:12
	buffer_load_u16 v82, v74, s[28:31], 0 offen offset:16
	buffer_load_u16 v83, v74, s[28:31], 0 offen offset:20
	buffer_load_u16 v84, v74, s[28:31], 0 offen offset:24
	buffer_load_u16 v74, v74, s[28:31], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v51, s34, v51
	v_add_nc_u32_e32 v52, 2, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v57, v73, v57 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v24, v57, v75 :: v_dual_lshlrev_b32 v75, 16, v78
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v60, v73, v60
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v85, v49, v50
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v58, v73, v58
	v_mul_f32_e32 v59, v73, v59
	v_mul_f32_e32 v62, v73, v62
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v22, v60, v75
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v86, v85, s[28:31], 0 offen
	buffer_load_u16 v87, v85, s[28:31], 0 offen offset:4
	buffer_load_u16 v88, v85, s[28:31], 0 offen offset:8
	buffer_load_u16 v89, v85, s[28:31], 0 offen offset:12
	buffer_load_u16 v90, v85, s[28:31], 0 offen offset:16
	buffer_load_u16 v91, v85, s[28:31], 0 offen offset:20
	buffer_load_u16 v92, v85, s[28:31], 0 offen offset:24
	buffer_load_u16 v85, v85, s[28:31], 0 offen offset:28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v25, v58, v76 :: v_dual_lshlrev_b32 v76, 16, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v65, v73, v65
	v_dual_mul_f32 v70, v73, v70 :: v_dual_lshlrev_b32 v75, 16, v83
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v73, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v21, v59, v76 :: v_dual_lshlrev_b32 v76, 16, v82
	v_fmac_f32_e32 v18, v62, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v73, v64
	v_mul_f32_e32 v63, v73, v63
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v66, v73, v66
	v_mul_f32_e32 v68, v73, v68
	v_mul_f32_e32 v67, v73, v67
	v_mul_f32_e32 v69, v73, v69
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v11, v64, v74 :: v_dual_mul_f32 v72, v73, v72
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v71, v73, v71 :: v_dual_add_nc_u32 v50, s34, v50
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v46, v79 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v47, v80, v81 offset1:8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v58, 16, v86
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v57, 16, v87
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v60, 16, v88
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v89
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v10, v65, v58 :: v_dual_lshlrev_b32 v75, 16, v84
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v17, v61, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v91
	v_lshlrev_b32_e32 v62, 16, v90
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v23, v66, v57 :: v_dual_lshlrev_b32 v64, 16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v19, v67, v60 :: v_dual_fmac_f32 v16, v70, v61
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v14, v63, v75 :: v_dual_lshlrev_b32 v63, 16, v85
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v20, v68, v59 :: v_dual_fmac_f32 v15, v69, v62
	v_dual_fmac_f32 v12, v71, v64 :: v_dual_fmac_f32 v13, v72, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v4, v44
.LBB0_6:                                ; %._crit_edge
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v53, v45 offset:4096
	ds_load_u8_d16 v54, v45 offset:4128
	ds_load_u8_d16 v55, v45 offset:4160
	ds_load_u8_d16 v56, v45 offset:4192
	ds_load_u8_d16 v57, v45 offset:4224
	ds_load_u8_d16 v58, v45 offset:4256
	ds_load_u8_d16 v59, v45 offset:4288
	ds_load_u8_d16 v60, v45 offset:4320
	ds_load_u8_d16 v44, v45 offset:4352
	ds_load_u8_d16 v46, v45 offset:4384
	ds_load_u8_d16 v47, v45 offset:4416
	ds_load_u8_d16 v48, v45 offset:4448
	ds_load_u8_d16 v49, v45 offset:4480
	ds_load_u8_d16 v50, v45 offset:4512
	ds_load_u8_d16 v51, v45 offset:4544
	ds_load_u8_d16 v45, v45 offset:4576
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v43
	v_dual_mov_b32 v6, 0 :: v_dual_add_nc_u32 v41, 0, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v52, 0, v40
	v_add_nc_u32_e32 v39, 0, v39
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v38, 0, v38
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v37, 0, v37
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v40, 0, v36
	v_add_nc_u32_e32 v65, 0, v35
	v_add_nc_u32_e32 v61, 0, v34
	v_add_nc_u32_e32 v67, 0, v33
	v_add_nc_u32_e32 v68, 0, v32
	v_add_nc_u32_e32 v63, 0, v31
	v_add_nc_u32_e32 v64, 0, v30
	v_add_nc_u32_e32 v62, 0, v29
	v_add_nc_u32_e32 v66, 0, v4
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v4, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v2, v67
	ds_load_u8 v3, v68
	ds_load_u8 v4, v65
	ds_load_u8 v5, v66
	ds_load_u8 v6, v63
	ds_load_u8 v7, v64
	ds_load_u8 v8, v61
	ds_load_u8 v29, v62
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v30, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v31, v59, v60, 0xc0c0004
	v_perm_b32 v32, v53, v54, 0xc0c0004
	v_perm_b32 v33, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v76, v44, v46, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v77, v47, v48, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v3, v2, 0xc0c0004
	v_lshl_or_b32 v3, v31, 16, v30
	v_lshl_or_b32 v2, v33, 16, v32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v8, v4, 0xc0c0004
	ds_load_u8 v8, v41
	ds_load_u8 v69, v52
	ds_load_u8 v70, v43
	ds_load_u8 v71, v37
	ds_load_u8 v72, v40
	ds_load_u8 v73, v39
	ds_load_u8 v74, v38
	ds_load_u8 v75, v42
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v5, v29, 0xc0c0004
	v_mov_b32_e32 v29, 0
	v_perm_b32 v7, v51, v45, 0xc0c0004
	v_lshl_or_b32 v5, v4, 16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v6, 16, v35
	v_mov_b32_e32 v30, v29
	v_mov_b32_e32 v31, v29
	v_mov_b32_e32 v32, v29
	v_mov_b32_e32 v33, v29
	v_mov_b32_e32 v34, v29
	v_mov_b32_e32 v35, v29
	v_mov_b32_e32 v36, v29
	v_perm_b32 v6, v49, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v69, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[4:5], v[2:3], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v7, 16, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v75, v70, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v71, v74, v73, 0xc0c0004
	v_lshl_or_b32 v2, v77, 16, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v69, 16, v8
	v_lshl_or_b32 v4, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[4:5], v[2:3], v[29:36] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v30
	v_cvt_f32_i32_e32 v6, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v2, v33
	v_cvt_f32_i32_e32 v5, v34
	v_cvt_f32_i32_e32 v4, v35
	v_cvt_f32_i32_e32 v8, v36
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v36, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v1, v67 offset:2048
	ds_load_u8 v30, v68 offset:2048
	ds_load_u8 v31, v65 offset:2048
	ds_load_u8 v32, v66 offset:2048
	ds_load_u8 v33, v63 offset:2048
	ds_load_u8 v34, v64 offset:2048
	ds_load_u8 v35, v61 offset:2048
	ds_load_u8 v36, v62 offset:2048
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v59, v60, 0xc0c0004
	v_perm_b32 v53, v53, v54, 0xc0c0004
	v_perm_b32 v54, v55, v56, 0xc0c0004
	ds_load_u8 v55, v41 offset:2048
	ds_load_u8 v52, v52 offset:2048
	ds_load_u8 v43, v43 offset:2048
	ds_load_u8 v56, v37 offset:2048
	ds_load_u8 v59, v40 offset:2048
	ds_load_u8 v60, v39 offset:2048
	ds_load_u8 v61, v38 offset:2048
	ds_load_u8 v62, v42 offset:2048
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v44, v44, v46, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v30, v1, 0xc0c0004
	v_lshl_or_b32 v30, v54, 16, v53
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v35, v31, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v32, v36, 0xc0c0004
	v_mov_b32_e32 v33, 0
	v_lshl_or_b32 v31, v58, 16, v57
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v52, v55, 0xc0c0004
	v_lshl_or_b32 v42, v35, 16, v1
	v_lshl_or_b32 v41, v34, 16, v32
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_perm_b32 v1, v49, v50, 0xc0c0004
	v_perm_b32 v32, v51, v45, 0xc0c0004
	v_perm_b32 v45, v47, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v62, v43, 0xc0c0004
	v_perm_b32 v47, v59, v56, 0xc0c0004
	v_perm_b32 v48, v61, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[30:31], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v31, v32, 16, v1
	v_lshl_or_b32 v30, v45, 16, v44
	v_lshl_or_b32 v42, v43, 16, v46
	v_lshl_or_b32 v41, v48, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[30:31], v[33:40] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v35, v40
.LBB0_10:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v27, v28, v27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v28, s33, v26
	s_mul_i32 s0, s5, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s19
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v37, 2, v27
	v_or_b32_e32 v38, 4, v27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v28, s0, v28, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s18, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v39, 6, v27
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v40, 8, v27
	v_or_b32_e32 v41, 10, v27
	v_or_b32_e32 v42, 12, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v43, s0, v27, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v44, 14, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v27, s1, v27, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v45, s0, v37, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v37, s1, v37, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s0, v38, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v38, s1, v38, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v47, s0, v39, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v39, s1, v39, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v49, s0, v41, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_add_lshl_u32 v41, s1, v41, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v48, s0, v40, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_add_lshl_u32 v40, s1, v40, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_add_lshl_u32 v51, s0, v44, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v50, s0, v42, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x3
	buffer_load_u16 v52, v27, s[8:11], 0 offen
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	v_add_lshl_u32 v27, s1, v42, 1
	v_add_lshl_u32 v42, s1, v44, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v51, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x5
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v51, v27, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_clause 0x5
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v26, s5, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s8, 0x76543210
	s_and_b32 s17, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v55.h, v27.h
	v_mov_b16_e32 v56.h, v27.h
	v_mov_b16_e32 v57.h, v27.h
	v_mov_b16_e32 v58.h, v27.h
	s_mov_b32 s19, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v52, 16, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v1, v1, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v35, v28
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v1, v52, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v35, v35, v42, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v44, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v11, v8, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v11, v13, v35, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v13, 0xbfb8aa3b, v1 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v30, v30, v28 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v28 :: v_dual_lshlrev_b32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v45, v25
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v34, v34, v28 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v36, v36, v28 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v25, v7, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v11
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v30, v40, v15
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v46, v21
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v28 :: v_dual_lshlrev_b32 v39, 16, v39
	v_dual_mul_f32 v3, v3, v28 :: v_dual_lshlrev_b32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v15, v30, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v21, v6, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v32, v28 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v29, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v33, v33, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v28
	v_mul_f32_e32 v4, v4, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v48, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v43, v24
	v_fma_f32 v4, v4, v50, v14
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v31, v28
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v34, v37, v23
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v29, v47, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v36, v39, v20
	v_fma_f32 v32, v32, v41, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v31, s2
	v_cndmask_b32_e64 v2, v17, v2, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v28, v51, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v33, v38, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v24, v3, s2
	v_cndmask_b32_e64 v10, v22, v29, s2
	v_cndmask_b32_e64 v20, v20, v34, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v19, v33, s2
	v_cndmask_b32_e64 v16, v16, v32, s2
	v_cndmask_b32_e64 v12, v12, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v49, v18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v14, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v18, v5, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v17
	v_dual_mul_f32 v18, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v11
	v_ldexp_f32 v13, v13, v29
	v_mul_f32_e32 v22, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v14, v28
	v_exp_f32_e32 v25, v25
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v22
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v22, 0, 0x42800000, s3
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v14, v14, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v21, v21, v33
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v20
	v_ldexp_f32 v25, v25, v34
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v17, v17, v31
	v_mul_f32_e32 v24, 0xbfb8aa3b, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v18, v18
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v17, v17, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v28, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v18, v18, v30
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v12
	v_ldexp_f32 v22, v22, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v13, v13, v1
	v_fmac_f32_e32 v43, v52, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v25, v25, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v30
	v_fma_f32 v61, -v34, v46, 1.0
	v_rcp_f32_e32 v49, v40
	v_div_scale_f32 v29, vcc_lo, v23, v14, v23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, s0, v1, v13, v1
	v_div_scale_f32 v35, s2, v19, v17, v19
	v_div_scale_f32 v36, null, v22, v22, v16
	v_fmac_f32_e32 v46, v61, v46
	v_fma_f32 v59, -v30, v44, 1.0
	v_mul_f32_e32 v52, v29, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v36
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v61, v35, v46
	v_fma_f32 v64, -v40, v49, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v28, v52, v29
	v_div_scale_f32 v32, null, v18, v18, v20
	v_fma_f32 v69, -v34, v61, v35
	v_dual_fmac_f32 v44, v59, v44 :: v_dual_fmac_f32 v49, v64, v49
	v_div_scale_f32 v42, null, v24, v24, v12
	v_fma_f32 v62, -v36, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v69, v46
	v_mul_f32_e32 v59, v31, v44
	v_rcp_f32_e32 v45, v32
	v_rcp_f32_e32 v50, v42
	v_fmac_f32_e32 v47, v62, v47
	v_div_scale_f32 v37, s3, v16, v22, v16
	v_fma_f32 v67, -v30, v59, v31
	v_fmac_f32_e32 v52, v66, v43
	v_div_scale_f32 v38, null, v21, v21, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v62, v37, v47 :: v_dual_fmac_f32 v59, v67, v44
	v_fma_f32 v28, -v28, v52, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v38
	v_fma_f32 v60, -v32, v45, 1.0
	v_fma_f32 v65, -v42, v50, 1.0
	v_fma_f32 v29, -v30, v59, v31
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, s4, v15, v21, v15
	v_div_scale_f32 v51, s6, v12, v24, v12
	v_fmac_f32_e32 v45, v60, v45
	v_div_scale_f32 v33, s1, v20, v18, v20
	v_fmac_f32_e32 v50, v65, v50
	v_div_fmas_f32 v29, v29, v44, v59
	v_fma_f32 v63, -v38, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v60, v33, v45
	v_fma_f32 v70, -v36, v62, v37
	v_mul_f32_e32 v65, v51, v50
	v_div_fixup_f32 v1, v29, v13, v1
	v_div_scale_f32 v41, s5, v11, v25, v11
	v_fma_f32 v68, -v32, v60, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v42, v65, v51
	v_fmac_f32_e32 v48, v63, v48
	v_dual_fmac_f32 v62, v70, v47 :: v_dual_mul_f32 v1, v3, v1
	v_fma_f32 v31, -v34, v61, v35
	v_fmac_f32_e32 v65, v73, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v63, v39, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v1.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v60, v68, v45
	v_div_fixup_f32 v14, v28, v14, v23
	v_fma_f32 v71, -v38, v63, v39
	v_mul_f32_e32 v64, v41, v49
	v_fma_f32 v35, -v42, v65, v51
	v_fma_f32 v30, -v32, v60, v33
	v_fma_f32 v32, -v36, v62, v37
	v_fmac_f32_e32 v63, v71, v48
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v72, -v40, v64, v41
	v_div_fmas_f32 v30, v30, v45, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v33, -v38, v63, v39
	v_div_fmas_f32 v23, v31, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v30, v18, v20
	v_div_fmas_f32 v13, v32, v47, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v23, v17, v19
	v_div_fmas_f32 v14, v33, v48, v63
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v13, v13, v22, v16
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v10, v18
	v_mul_f32_e32 v6, v6, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v14, v21, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v55
	v_mov_b16_e32 v56.l, v6.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v64, v72, v49
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v2, v2, v14
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v7.h
	v_add3_u32 v1, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v40, v64, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v2.h
	v_cmp_o_f32_e64 s3, v5, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v3, v34, v49, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v16, v35, v50, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v2, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v3, v25, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v2, v2, v13, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v16, v24, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v8, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_and_b32_e32 v12, 1, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v10.h
	v_and_b32_e32 v11, 1, v56
	v_cmp_o_f32_e64 s5, v3, v3
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v58.l, v4.h
	v_and_b32_e32 v8, 1, v27
	v_cndmask_b16 v7.l, 0x7fff, v1.h, s0
	v_mov_b16_e32 v27.l, v5.h
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v2, 1, v58
	v_cmp_o_f32_e64 s6, v4, v4
	v_add3_u32 v8, v10, v8, 0x7fff
	v_add3_u32 v0, v6, v11, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v54, vcc_lo
	v_add3_u32 v2, v4, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_and_b32_e32 v12, 1, v27
	v_mov_b16_e32 v27.l, v3.h
	v_cndmask_b32_e32 v6, 0x1054, v53, vcc_lo
	v_add3_u32 v5, v5, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v11, 1, v27
	v_lshl_or_b32 v4, v6, 8, v6
	v_lshl_or_b32 v6, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s3
	v_add3_u32 v3, v3, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x540054, v4
	v_and_b32_e32 v4, 0x760076, v6
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, v26, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v5, v1, v7, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_cndmask_b32_e32 v1, v7, v1, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, v8, v0, vcc_lo
	v_cndmask_b32_e32 v7, v0, v8, vcc_lo
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v8, 0x78, v9, s18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s18, s10
	v_perm_b32 v0, v1, v5, v2
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v2, v4, v7, v2
	v_perm_b32 v3, v4, v7, v3
	v_add_lshl_u32 v4, v8, v6, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 93
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7180
; TotalNumSgprs: 46
; NumVgprs: 93
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 93
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     93
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
