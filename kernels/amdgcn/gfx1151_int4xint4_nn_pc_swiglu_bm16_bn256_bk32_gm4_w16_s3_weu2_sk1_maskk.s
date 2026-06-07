	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v18, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v2, v0, 4, 4
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v26, 15, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v14, v0, 7, 1
	v_and_b32_e32 v15, 0x7f, v0
	v_and_b32_e32 v20, 8, v0
	s_load_b32 s25, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 0x88, v14
	v_xor_b32_e32 v22, v14, v15
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v14, 0x1e0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v39, 1, v14
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v15, 0, v22
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_or_b32_e32 v21, v39, v26
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
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_load_b128 s[12:15], s[0:1], 0x0
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s9, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 0xf8, v18
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
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
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s25, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s8, s11, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s29, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s24, s4, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s25, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s5, s8, s29
	v_mad_u64_u32 v[4:5], null, s8, v3, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s8, s24, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s8, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s29, v3
	v_or_b32_e32 v8, s29, v26
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s2, s4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s10, s8, 8
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[5:6], null, s28, v2, v[26:27]
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v8
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v7
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s25, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s28
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	s_and_b32 s2, s22, s2
	s_cmp_gt_i32 s25, 33
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v4, s5, s10, v4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v5, s29, s4, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s29, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v7, s4, v26
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s11, v4
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v9, s4, v3
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v8, s11, 5, v4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v11, 0x80000000, v5, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v7
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v12, 16, v5
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v9
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v10, s11, v8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[4:5], v4, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v6, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v13, v11, s[12:15], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v16, 0, v18
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v12, v9, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[8:9], v8, s[16:19], 0 offen
	buffer_load_b64 v[10:11], v10, s[16:19], 0 offen
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s25, 0x41
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b8 v15, v13 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v16, v[4:5], v[6:7] offset1:16
	v_lshlrev_b32_e32 v4, 4, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v15, v12 offset:16640
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[8:9], v[10:11] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v53, v39, v26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v19, 0x70, v4
	v_and_b32_e32 v23, 8, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v41, 0x100, v53
	v_or_b32_e32 v43, 0x200, v53
	v_or_b32_e32 v44, 0x300, v53
	v_or_b32_e32 v45, 0x400, v53
	v_or_b32_e32 v46, 0x500, v53
	v_or_b32_e32 v47, 0x600, v53
	v_or_b32_e32 v48, 0x700, v53
	v_or_b32_e32 v40, 0x800, v53
	v_or_b32_e32 v42, 0x900, v53
	v_or_b32_e32 v49, 0xa00, v53
	v_or_b32_e32 v50, 0xb00, v53
	v_or_b32_e32 v51, 0xc00, v53
	v_or_b32_e32 v52, 0xd00, v53
	v_or_b32_e32 v54, 0xe00, v53
	v_or_b32_e32 v55, 0xf00, v53
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v5, 1, v3
	v_sub_nc_u32_e32 v24, s28, v3
	v_and_b32_e32 v19, 0x70, v4
	v_bfe_i32 v4, v0, 3, 1
	s_lshl_b32 s1, s24, 8
	v_lshl_or_b32 v3, s3, 5, v5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s28, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v2, s20, v2
	v_and_or_b32 v25, 0x88, v4, v19
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v5, 0x41, v3
	v_add_nc_u32_e32 v3, 64, v3
	s_lshl_b32 s2, s23, 8
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	v_sub_nc_u32_e32 v23, s28, v26
	v_mul_lo_u32 v5, s11, v5
	v_mul_lo_u32 v3, s11, v3
	s_mov_b32 s27, 1
	v_readfirstlane_b32 s0, v6
	s_lshl_b32 s26, s11, 5
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s23, 0, 0x4100
	s_add_i32 s3, 0, 0x2000
	v_add3_u32 v4, v5, s1, v1
	v_add3_u32 v1, v3, s1, v1
	s_add_i32 s1, 0, 0x3000
	s_add_i32 s29, s29, 32
	s_mov_b32 s18, s14
	v_subrev_nc_u32_e32 v28, s2, v4
	v_subrev_nc_u32_e32 v29, s2, v1
	v_mov_b32_e32 v1, 0
	v_mad_u64_u32 v[9:10], null, s28, v2, v[26:27]
	v_xor_b32_e32 v27, 8, v25
	s_add_i32 s28, s0, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	s_add_i32 s2, 0, 0x1000
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v30, s29, v9
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v24
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s29, v23
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v31, 0x80000000, v29 :: v_dual_cndmask_b32 v32, 0x80000000, v28
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	s_mov_b32 s0, s24
	s_mov_b32 s24, s23
	s_mov_b32 s23, s25
	s_mov_b32 s25, s2
	buffer_load_u8 v38, v30, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[30:31], v31, s[16:19], 0 offen
	buffer_load_b64 v[32:33], v32, s[16:19], 0 offen
	v_add_nc_u32_e32 v35, s23, v21
	s_mov_b32 s2, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v34, s0, v25
	v_add_nc_u32_e32 v36, s0, v27
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v37, s2, v21
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v40, v35 offset:1280
	ds_load_u8 v41, v35 offset:1792
	ds_load_u8 v42, v35 offset:1536
	ds_load_u8 v43, v35 offset:1024
	ds_load_u8 v44, v35 offset:256
	ds_load_u8 v45, v35 offset:768
	ds_load_u8 v46, v35 offset:512
	ds_load_u8 v47, v35
	ds_load_u8 v48, v35 offset:3328
	ds_load_u8 v49, v35 offset:3840
	ds_load_u8 v50, v35 offset:3584
	ds_load_u8 v51, v35 offset:3072
	ds_load_u8 v52, v35 offset:2304
	ds_load_u8 v53, v35 offset:2816
	ds_load_u8 v54, v35 offset:2560
	ds_load_u8 v55, v35 offset:2048
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v56, v37 offset:1280
	ds_load_u8 v57, v37 offset:1792
	ds_load_u8 v58, v37 offset:1536
	ds_load_u8 v59, v37 offset:1024
	ds_load_u8 v60, v37 offset:256
	ds_load_u8 v61, v37 offset:768
	ds_load_u8 v62, v37 offset:512
	ds_load_u8 v63, v37
	ds_load_u8 v64, v37 offset:3328
	ds_load_u8 v65, v37 offset:3840
	ds_load_u8 v66, v37 offset:3584
	ds_load_u8 v67, v37 offset:3072
	ds_load_u8 v68, v37 offset:2304
	ds_load_u8 v69, v37 offset:2560
	ds_load_u8 v70, v37 offset:2048
	ds_load_u8 v71, v37 offset:2816
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[34:35], v34
	ds_load_b64 v[36:37], v36
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v40, v43, v40, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v42, v47, v44, 0xc0c0004
	v_perm_b32 v43, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v44, v51, v48, 0xc0c0004
	v_perm_b32 v45, v50, v49, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v48, v59, v56, 0xc0c0004
	v_perm_b32 v49, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v51, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v63, v60, 0xc0c0004
	s_mov_b32 s3, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s27, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v46, v55, v52, 0xc0c0004
	v_perm_b32 v47, v54, v53, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v67, v64, 0xc0c0004
	v_perm_b32 v53, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v69, v71, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v41, v41, 16, v40
	v_lshl_or_b32 v40, v43, 16, v42
	v_lshl_or_b32 v43, v45, 16, v44
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v45, v49, 16, v48
	v_lshl_or_b32 v44, v51, 16, v50
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v42, v47, 16, v46
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s27, s1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v47, v53, 16, v52
	v_lshl_or_b32 v46, v55, 16, v54
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[40:41], v[34:35], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[34:35], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s0, s27, 8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s1, s27, 12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s0, s0, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s2, s1, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v29, s26, v29
	v_add_nc_u32_e32 v28, s26, v28
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v34, s0, v22
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[42:43], v[36:37], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[36:37], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v35, s2, v18
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s23, s0, 0x4000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s2, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s28, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v34, v38 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v35, v[30:31], v[32:33] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v41, 0x100, v21
	v_or_b32_e32 v43, 0x200, v21
	v_or_b32_e32 v44, 0x300, v21
	v_or_b32_e32 v45, 0x400, v21
	v_or_b32_e32 v46, 0x500, v21
	v_or_b32_e32 v47, 0x600, v21
	v_or_b32_e32 v48, 0x700, v21
	v_or_b32_e32 v40, 0x800, v21
	v_or_b32_e32 v42, 0x900, v21
	v_or_b32_e32 v49, 0xa00, v21
	v_or_b32_e32 v50, 0xb00, v21
	v_or_b32_e32 v51, 0xc00, v21
	v_or_b32_e32 v52, 0xd00, v21
	v_or_b32_e32 v54, 0xe00, v21
	v_or_b32_e32 v55, 0xf00, v21
	v_mov_b32_e32 v23, v20
	v_mov_b32_e32 v53, v21
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s23, 0, 0x4100
	s_add_i32 s2, 0, 0x1000
	s_add_i32 s3, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v16, v8
	s_add_i32 s1, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	v_mov_b32_e32 v25, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v9, v9, v19
	v_mov_b32_e32 v24, v16
	v_xor_b32_e32 v31, 8, v9
	v_add_nc_u32_e32 v18, s24, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v19, s24, v31
	ds_load_b64 v[29:30], v18
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[27:28], v19
	v_cndmask_b32_e64 v18, 0, 1, s22
	v_cmp_ne_u32_e64 s0, 1, v18
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v25, s18, v46
	v_add_nc_u32_e32 v32, s18, v45
	v_add_nc_u32_e32 v23, s18, v48
	v_add_nc_u32_e32 v35, s18, v41
	v_add_nc_u32_e32 v24, s18, v47
	v_add_nc_u32_e32 v33, s18, v44
	v_add_nc_u32_e32 v34, s18, v43
	v_add_nc_u32_e32 v36, s18, v53
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v25, v25
	ds_load_u8 v32, v32
	ds_load_u8 v23, v23
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v24, v24
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v20, s18, v52
	v_add_nc_u32_e32 v21, s18, v51
	v_add_nc_u32_e32 v18, s18, v55
	v_add_nc_u32_e32 v38, s18, v40
	v_add_nc_u32_e32 v22, s18, v50
	v_add_nc_u32_e32 v37, s18, v49
	v_add_nc_u32_e32 v56, s18, v42
	v_add_nc_u32_e32 v19, s18, v54
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v57, v20
	ds_load_u8 v58, v21
	ds_load_u8 v59, v18
	ds_load_u8 v38, v38
	ds_load_u8 v60, v22
	ds_load_u8 v37, v37
	ds_load_u8 v61, v19
	ds_load_u8 v56, v56
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v32, v25, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v58, v57, 0xc0c0004
	v_lshl_or_b32 v32, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v33, v19, 16, v18
	v_dual_mov_b32 v25, v17 :: v_dual_mov_b32 v24, v16
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v61, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v56, 0xc0c0004
	v_perm_b32 v37, v37, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[32:33], v[29:30], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[18:25], v[32:33], v[27:28], v[18:25] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v32, s3, v46
	v_add_nc_u32_e32 v33, s3, v45
	v_add_nc_u32_e32 v16, s3, v48
	v_add_nc_u32_e32 v36, s3, v41
	v_add_nc_u32_e32 v17, s3, v47
	v_add_nc_u32_e32 v34, s3, v44
	v_add_nc_u32_e32 v35, s3, v43
	v_add_nc_u32_e32 v37, s3, v53
	v_add_nc_u32_e32 v12, s3, v52
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v16, v16
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v17, v17
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v13, s3, v51
	v_add_nc_u32_e32 v10, s3, v55
	v_add_nc_u32_e32 v38, s3, v40
	v_add_nc_u32_e32 v14, s3, v50
	v_add_nc_u32_e32 v15, s3, v49
	v_add_nc_u32_e32 v56, s3, v42
	v_add_nc_u32_e32 v11, s3, v54
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v12, v12
	ds_load_u8 v13, v13
	ds_load_u8 v57, v10
	ds_load_u8 v38, v38
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v58, v11
	ds_load_u8 v56, v56
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v17, v16, 0xc0c0004
	v_perm_b32 v16, v37, v36, 0xc0c0004
	v_perm_b32 v17, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_lshl_or_b32 v10, v17, 16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v38, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v13, 16, v12
	v_lshl_or_b32 v10, v14, 16, v16
	v_mov_b32_e32 v16, v24
	v_mov_b32_e32 v12, v20
	v_dual_mov_b32 v14, v22 :: v_dual_mov_b32 v17, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[10:11], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v10, v18 :: v_dual_mov_b32 v13, v21
	v_mov_b32_e32 v15, v23
	v_mov_b32_e32 v11, v19
.LBB0_12:                               ; %._crit_edge55
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s23, v9
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v30, v13 :: v_dual_add_nc_u32 v27, s23, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v29, v12 :: v_dual_mov_b32 v34, v11
	ds_load_b64 v[37:38], v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[35:36], v27
	v_cndmask_b32_e64 v9, 0, 1, s21
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v9
	v_mov_b32_e32 v33, v10
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v34, s2, v46
	v_add_nc_u32_e32 v56, s2, v45
	v_add_nc_u32_e32 v32, s2, v48
	v_add_nc_u32_e32 v59, s2, v41
	v_add_nc_u32_e32 v33, s2, v47
	v_add_nc_u32_e32 v57, s2, v44
	v_add_nc_u32_e32 v58, s2, v43
	v_add_nc_u32_e32 v60, s2, v53
	v_add_nc_u32_e32 v28, s2, v52
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v34, v34
	ds_load_u8 v56, v56
	ds_load_u8 v32, v32
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	ds_load_u8 v33, v33
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v29, s2, v51
	v_add_nc_u32_e32 v9, s2, v55
	v_add_nc_u32_e32 v61, s2, v40
	v_add_nc_u32_e32 v30, s2, v50
	v_add_nc_u32_e32 v31, s2, v49
	v_add_nc_u32_e32 v62, s2, v42
	v_add_nc_u32_e32 v27, s2, v54
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v63, v28
	ds_load_u8 v29, v29
	ds_load_u8 v9, v9
	ds_load_u8 v61, v61
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v64, v27
	ds_load_u8 v62, v62
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v56, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v33, v32, 0xc0c0004
	v_perm_b32 v32, v60, v59, 0xc0c0004
	v_perm_b32 v33, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v29, v63, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	v_lshl_or_b32 v27, v33, 16, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v64, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[27:28], v[37:38], v[18:25] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v28, v9, 16, v29
	v_lshl_or_b32 v27, v30, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[27:28], v[35:36], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v30, v21
	v_mov_b32_e32 v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v19 :: v_dual_mov_b32 v27, v24
	v_mov_b32_e32 v29, v20
	v_mov_b32_e32 v31, v22
	v_mov_b32_e32 v33, v18
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v17, s1, v46
	v_add_nc_u32_e32 v18, s1, v45
	v_add_nc_u32_e32 v15, s1, v48
	v_add_nc_u32_e32 v21, s1, v41
	v_add_nc_u32_e32 v16, s1, v47
	v_add_nc_u32_e32 v19, s1, v44
	v_add_nc_u32_e32 v20, s1, v43
	v_add_nc_u32_e32 v22, s1, v53
	v_add_nc_u32_e32 v11, s1, v52
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v15, v15
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v16, v16
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v12, s1, v51
	v_add_nc_u32_e32 v9, s1, v55
	v_add_nc_u32_e32 v23, s1, v40
	v_add_nc_u32_e32 v13, s1, v50
	v_add_nc_u32_e32 v14, s1, v49
	v_add_nc_u32_e32 v24, s1, v42
	v_add_nc_u32_e32 v10, s1, v54
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v25, v9
	ds_load_u8 v23, v23
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v40, v10
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	v_perm_b32 v15, v22, v21, 0xc0c0004
	v_perm_b32 v16, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v9, v16, 16, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v40, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v23, v24, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v12, 16, v11
	v_lshl_or_b32 v9, v13, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	v_dual_mov_b32 v30, v13 :: v_dual_mov_b32 v29, v12
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	v_dual_mov_b32 v34, v11 :: v_dual_mov_b32 v33, v10
.LBB0_17:
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v10, v9, 1, v39
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s20, v26
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s10, s11
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v17, 1, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v16, 2, v10
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s10, v10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v15, 4, v10
	v_or_b32_e32 v11, 14, v10
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s10, v16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v12, 12, v10
	v_or_b32_e32 v13, 10, v10
	v_or_b32_e32 v14, 8, v10
	v_or_b32_e32 v18, 6, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v37, 0x5410 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s0, v10, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s10, v15
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v23, s10, v14
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s0, v14, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v22, s10, v18
	v_or_b32_e32 v24, s10, v13
	v_or_b32_e32 v25, s10, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v13, s0, v13, 1
	v_add_lshl_u32 v12, s0, v12, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v36.h, 0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v39.h, v36.h
	v_mov_b16_e32 v40.h, v36.h
	v_mov_b16_e32 v41.h, v36.h
	v_mov_b16_e32 v42.h, v36.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v19, 1, v19
	s_clause 0x2
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	buffer_load_u16 v26, v10, s[12:15], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s0, v16, 1
	v_add_lshl_u32 v16, s0, v18, 1
	v_add_lshl_u32 v18, s0, v11, 1
	s_clause 0x6
	buffer_load_u16 v35, v10, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v11, s10, v11
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v13
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v35, v17, v35 :: v_dual_lshlrev_b32 v10, 1, v22
	v_mul_f32_e32 v26, v17, v26
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v17, v19 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 1, v24
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v1, v26, v1
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v19, v19, v33
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v16, v17, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v24, v10, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	v_lshlrev_b32_e32 v10, 1, v25
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v2, v35, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v26, 0xbfb8aa3b, v1 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v4, v16, v4 :: v_dual_mul_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v17, v12
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v3, v15, v3 :: v_dual_mul_f32 v18, v17, v18
	v_dual_mul_f32 v7, v12, v7 :: v_dual_mul_f32 v8, v18, v8
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v17, v21
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v17, v14
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v25, v10, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v5, v14, v5 :: v_dual_and_b32 v0, 16, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v20, v17, v20
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v12, v20, v34 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v11, v17, v11 :: v_dual_lshlrev_b32 v22, 16, v22
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v20, v21, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v24, v17, v24
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v13, v17, v13
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v15, v17, v22 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v6, v13, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v17, v23
	v_mul_f32_e32 v13, v17, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v26, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v16, v32 :: v_dual_mul_f32 v13, v13, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_exp_f32_e32 v17, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v18, v24, v30 :: v_dual_mul_f32 v15, v15, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v24, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v2
	v_ldexp_f32 v17, v17, v27
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v24, 0, 0x42800000, s2
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	v_exp_f32_e32 v14, v14
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v26, v26
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v5
	v_exp_f32_e32 v22, v22
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v11, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v7
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v14, v14, v28
	v_ldexp_f32 v26, v26, v27
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v17, v17, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_ldexp_f32 v22, v22, v29
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_ldexp_f32 v21, v21, v30
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v29, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v23, v23, v32
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v24, v24, v31
	v_ldexp_f32 v25, v25, v33
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v30, null, v14, v14, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v32, null, v22, v22, v4
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v50, v30
	v_fma_f32 v55, -v27, v29, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, null, v21, v21, v3
	v_rcp_f32_e32 v51, v32
	v_div_scale_f32 v43, null, v24, v24, v6
	v_div_scale_f32 v49, null, v25, v25, v7
	v_fmac_f32_e32 v29, v55, v29
	v_div_scale_f32 v47, null, v26, v26, v8
	v_div_scale_f32 v45, null, v23, v23, v5
	v_rcp_f32_e32 v52, v34
	v_div_scale_f32 v28, vcc_lo, v1, v17, v1
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v56, v47
	v_rcp_f32_e32 v57, v49
	v_fma_f32 v55, -v30, v50, 1.0
	v_rcp_f32_e32 v54, v45
	v_fma_f32 v59, -v32, v51, 1.0
	v_div_scale_f32 v31, s0, v2, v14, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v65, v28, v29 :: v_dual_fmac_f32 v50, v55, v50
	v_div_scale_f32 v33, s1, v4, v22, v4
	v_fma_f32 v60, -v34, v52, 1.0
	v_fmac_f32_e32 v51, v59, v51
	v_fma_f32 v61, -v43, v53, 1.0
	v_fma_f32 v63, -v47, v56, 1.0
	v_fma_f32 v64, -v49, v57, 1.0
	v_fma_f32 v55, -v27, v65, v28
	v_mul_f32_e32 v59, v31, v50
	v_div_scale_f32 v35, s2, v3, v21, v3
	v_fma_f32 v62, -v45, v54, 1.0
	v_fmac_f32_e32 v52, v60, v52
	v_mul_f32_e32 v60, v33, v51
	v_div_scale_f32 v44, s3, v6, v24, v6
	v_div_scale_f32 v58, s6, v7, v25, v7
	v_dual_fmac_f32 v53, v61, v53 :: v_dual_fmac_f32 v54, v62, v54
	v_dual_fmac_f32 v56, v63, v56 :: v_dual_fmac_f32 v57, v64, v57
	v_fmac_f32_e32 v65, v55, v29
	v_fma_f32 v55, -v30, v59, v31
	v_div_scale_f32 v46, s4, v5, v23, v5
	v_dual_mul_f32 v61, v35, v52 :: v_dual_mul_f32 v62, v44, v53
	v_fma_f32 v67, -v32, v60, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v66, v58, v57 :: v_dual_fmac_f32 v59, v55, v50
	v_fma_f32 v27, -v27, v65, v28
	v_div_scale_f32 v48, s5, v8, v26, v8
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v68, -v34, v61, v35
	v_fmac_f32_e32 v60, v67, v51
	v_fma_f32 v69, -v43, v62, v44
	v_div_fmas_f32 v27, v27, v29, v65
	v_fma_f32 v28, -v30, v59, v31
	v_mul_f32_e32 v64, v48, v56
	v_fma_f32 v70, -v45, v63, v46
	v_fmac_f32_e32 v61, v68, v52
	v_fma_f32 v29, -v32, v60, v33
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v62, v69, v53 :: v_dual_fmac_f32 v63, v70, v54
	v_div_fixup_f32 v1, v27, v17, v1
	v_div_fmas_f32 v17, v28, v50, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v34, v61, v35
	v_div_fmas_f32 v27, v29, v51, v60
	v_fma_f32 v31, -v43, v62, v44
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v71, -v47, v64, v48
	v_fma_f32 v32, -v45, v63, v46
	v_div_fmas_f32 v28, v30, v52, v61
	v_div_fixup_f32 v4, v27, v22, v4
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v19, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v17, v14, v2
	v_div_fmas_f32 v14, v31, v53, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v72, -v49, v66, v58
	v_div_fmas_f32 v17, v32, v54, v63
	v_div_fixup_f32 v3, v28, v21, v3
	v_fmac_f32_e32 v64, v71, v56
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v18, v4
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v1.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v72, v57
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v12, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v17, v23, v5
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v20, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v33, -v47, v64, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v33, v56, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v1, v17, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v49, v66, v58
	v_div_fixup_f32 v6, v14, v24, v6
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v8, v12, v26, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_and_b32_e32 v12, 1, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v14, v34, v57, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v16, v6 :: v_dual_mul_f32 v5, v15, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v4.h
	v_add3_u32 v2, v2, v12, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v14, v25, v7
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v11, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v3.h
	v_cmp_o_f32_e64 s3, v6, v6
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v11, 1, v36
	v_mov_b16_e32 v36.l, v6.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v13, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v5.h
	v_and_b32_e32 v13, 1, v40
	v_cmp_o_f32_e64 s1, v4, v4
	v_and_b32_e32 v12, 1, v36
	v_mov_b16_e32 v36.l, v8.h
	v_mov_b16_e32 v42.l, v7.h
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v0, v3, v13, 0x7fff
	v_add3_u32 v6, v6, v12, 0x7fff
	v_and_b32_e32 v3, 1, v36
	v_and_b32_e32 v12, 1, v42
	v_cmp_o_f32_e64 s4, v5, v5
	v_cmp_o_f32_e64 s0, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s3
	v_and_b32_e32 v14, 1, v41
	v_cndmask_b32_e32 v6, 0x1054, v37, vcc_lo
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v38, vcc_lo
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v5, v5, v14, 0x7fff
	v_add3_u32 v3, v8, v3, 0x7fff
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v8, v11, 8, v11
	v_add3_u32 v7, v7, v12, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s4
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s3
	v_and_b32_e32 v3, 0x540054, v6
	v_dual_cndmask_b32 v5, v2, v1 :: v_dual_and_b32 v6, 0x760076, v8
	v_cndmask_b32_e32 v1, v1, v2, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, v9, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v6, 4, v6
	v_cndmask_b32_e32 v6, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v6, v6, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v8, 0xf8, v10, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s10, s14
	v_perm_b32 v0, v1, v5, v2
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v8, v7, 1
	s_mov_b32 s11, s15
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 73
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 73
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6708
; TotalNumSgprs: 32
; NumVgprs: 73
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 73
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     73
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
