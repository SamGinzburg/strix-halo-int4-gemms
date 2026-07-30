	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[42:43], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v108, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s42, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s43, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s53, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s52, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s52, s53
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s52
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s46, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s46, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s9, s2, s4
	.loc	1 1023 39                       ; ragged.py:1023:39
	s_mul_i32 s60, s46, s42
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s9
	s_xor_b32 s10, s9, s52
	.loc	1 1025 39                       ; ragged.py:1025:39
	s_mul_i32 s61, s46, s43
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_ashr_i32 s54, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s7, s8
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s47, s46, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s64, s6, s54
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[46:47], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s8, s64, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s10, s8, s52
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s47, s8, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s9, s9, s10
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s41, s9, 8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s62, s3, 5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s4, 1
	s_mov_b32 s4, 0
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s6, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_ashr_i32 s63, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s62, s63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s8, s47, s60
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s9, s41, s61
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s4, -1
                                        ; implicit-def: $sgpr8
                                        ; implicit-def: $sgpr9
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x10
	s_load_b64 s[44:45], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v107, 0xe0, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v106, 15, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 5, v107
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_mul_i32 s53, s53, s46
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x0
	s_load_b32 s65, s[0:1], 0x38
	s_sub_i32 s46, s54, s53
	s_lshl_b32 s2, s2, 8
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 24, v2
	v_or_b32_e32 v5, 32, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_sub_i32 s46, s46, s64
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v1, 8, v2
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v11, s47, v3
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v3, s41, v3
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v12, s47, v4
	v_or_b32_e32 v13, s47, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v4, s41, v4
	v_or_b32_e32 v5, s41, v5
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s43, v3
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_mul_i32 s52, s52, s46
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s43, v4
	v_cmp_gt_i32_e64 s11, s43, v5
	v_and_b32_e32 v4, 0x7f, v0
	v_and_b32_e32 v3, 0x88, v3
	v_and_b32_e32 v5, 24, v108
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_lshl_b32 s46, s52, 8
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v9, s47, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_add_i32 s46, s46, s61
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v10, s47, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s41, v1
	v_xor_b32_e32 v3, v3, v4
	v_lshl_or_b32 v4, v106, 5, v5
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v5, s46, s2, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s42, v9
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s43, v1
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v1, 31, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s40, s42, v12
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v9, 56, v5
	v_add_nc_u32_e32 v12, 48, v5
	s_lshl_b32 s2, s64, 6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v6, 40, v2
	v_or_b32_e32 v7, 48, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 40, v5
	v_mad_u64_u32 v[66:67], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 32, v5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v8, 56, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[67:68], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 24, v5
	v_mad_u64_u32 v[68:69], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 16, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v17, s41, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[69:70], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 8, v5
	v_mad_u64_u32 v[70:71], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xf8, v5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v14, s47, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[71:72], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xf0, v5
	v_mad_u64_u32 v[72:73], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xe8, v5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v15, s47, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[73:74], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xe0, v5
	v_mad_u64_u32 v[74:75], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xd8, v5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v16, s47, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[75:76], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xd0, v5
	v_mad_u64_u32 v[76:77], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xc8, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v6, s41, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[77:78], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xc0, v5
	v_mad_u64_u32 v[78:79], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xb8, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s41, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[79:80], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xb0, v5
	v_mad_u64_u32 v[80:81], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0xa8, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s41, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[81:82], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xa0, v5
	v_mad_u64_u32 v[82:83], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0x98, v5
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s42, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[83:84], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x90, v5
	v_mad_u64_u32 v[84:85], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0x88, v5
	v_lshl_or_b32 v11, v107, 4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[85:86], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x80, v5
	v_mad_u64_u32 v[86:87], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0x78, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, 64, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[87:88], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x70, v5
	v_mad_u64_u32 v[88:89], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0x68, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v19, 0x48, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[89:90], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x60, v5
	v_mad_u64_u32 v[90:91], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v12, 0x58, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v20, 0x50, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[91:92], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x50, v5
	v_mad_u64_u32 v[92:93], null, s65, v12, v[1:2]
	v_add3_u32 v2, s60, s2, v2
	s_lshl_b32 s2, s54, 6
	v_add_nc_u32_e32 v12, 64, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, 0x58, v17
	v_or_b32_e32 v22, 0x60, v17
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[93:94], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x48, v5
	v_subrev_nc_u32_e32 v2, s2, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v23, 0x68, v17
	v_or_b32_e32 v24, 0x70, v17
	v_or_b32_e32 v25, 0x78, v17
	v_or_b32_e32 v26, 0x80, v17
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[94:95], null, s65, v9, v[1:2]
	v_mad_u64_u32 v[95:96], null, s65, v12, v[1:2]
	v_add_nc_u32_e32 v9, 56, v2
	v_mad_u64_u32 v[96:97], null, s65, v5, v[1:2]
	v_add_nc_u32_e32 v5, 48, v2
	v_add_nc_u32_e32 v12, 8, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[97:98], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 40, v2
	v_mad_u64_u32 v[98:99], null, s65, v5, v[1:2]
	v_add_nc_u32_e32 v5, 32, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v27, 0x88, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[99:100], null, s65, v9, v[1:2]
	v_add_nc_u32_e32 v9, 24, v2
	v_mad_u64_u32 v[100:101], null, s65, v5, v[1:2]
	v_add_nc_u32_e32 v5, 16, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v28, 0x90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[101:102], null, s65, v9, v[1:2]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v29, 0x98, v17
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[102:103], null, s65, v5, v[1:2]
	v_mad_u64_u32 v[103:104], null, s65, v12, v[1:2]
	v_mad_u64_u32 v[104:105], null, s65, v2, v[1:2]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v30, 0xa0, v17
	v_or_b32_e32 v31, 0xa8, v17
	v_or_b32_e32 v32, 0xb0, v17
	v_or_b32_e32 v33, 0xb8, v17
	v_or_b32_e32 v34, 0xc0, v17
	v_or_b32_e32 v35, 0xc8, v17
	v_or_b32_e32 v36, 0xd0, v17
	v_or_b32_e32 v37, 0xd8, v17
	v_or_b32_e32 v38, 0xe0, v17
	v_or_b32_e32 v39, 0xe8, v17
	v_or_b32_e32 v40, 0xf0, v17
	v_or_b32_e32 v41, 0xf8, v17
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s42, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s43, v6
	v_cmp_gt_i32_e64 s13, s43, v7
	v_cmp_gt_i32_e64 s14, s43, v8
	v_xor_b32_e32 v6, 0x110, v3
	v_xor_b32_e32 v7, 8, v4
	v_xor_b32_e32 v8, 16, v4
	v_xor_b32_e32 v10, 24, v4
	v_xor_b32_e32 v2, 8, v11
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v105, 0, v3
	v_add_nc_u32_e32 v110, 0, v4
	v_xor_b32_e32 v3, 16, v11
	v_xor_b32_e32 v4, 24, v11
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s3, s42, v13
	v_cmp_gt_i32_e64 s4, s42, v14
	v_cmp_gt_i32_e64 s5, s42, v15
	v_cmp_gt_i32_e64 s6, s42, v16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s43, v17
	v_cmp_gt_i32_e64 s15, s43, v18
	v_cmp_gt_i32_e64 s16, s43, v19
	v_cmp_gt_i32_e64 s17, s43, v20
	v_cmp_gt_i32_e64 s18, s43, v21
	v_cmp_gt_i32_e64 s19, s43, v22
	v_cmp_gt_i32_e64 s20, s43, v23
	v_cmp_gt_i32_e64 s21, s43, v24
	v_cmp_gt_i32_e64 s22, s43, v25
	v_cmp_gt_i32_e64 s23, s43, v26
	v_cmp_gt_i32_e64 s24, s43, v27
	v_cmp_gt_i32_e64 s25, s43, v28
	v_cmp_gt_i32_e64 s26, s43, v29
	v_cmp_gt_i32_e64 s27, s43, v30
	v_cmp_gt_i32_e64 s28, s43, v31
	v_cmp_gt_i32_e64 s29, s43, v32
	v_cmp_gt_i32_e64 s30, s43, v33
	v_cmp_gt_i32_e64 s31, s43, v34
	v_cmp_gt_i32_e64 s33, s43, v35
	v_cmp_gt_i32_e64 s34, s43, v36
	v_cmp_gt_i32_e64 s35, s43, v37
	v_cmp_gt_i32_e64 s36, s43, v38
	v_cmp_gt_i32_e64 s37, s43, v39
	v_cmp_gt_i32_e64 s38, s43, v40
	v_cmp_gt_i32_e64 s39, s43, v41
	v_dual_mov_b32 v52, v1 :: v_dual_add_nc_u32 v109, 0, v6
	v_dual_mov_b32 v54, v1 :: v_dual_add_nc_u32 v111, 0, v7
	v_dual_mov_b32 v37, v1 :: v_dual_add_nc_u32 v112, 0, v8
	v_dual_mov_b32 v56, v1 :: v_dual_add_nc_u32 v113, 0, v10
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v114, 0, v11
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v115, 0, v2
	v_dual_mov_b32 v41, v1 :: v_dual_add_nc_u32 v116, 0, v3
	v_dual_mov_b32 v60, v1 :: v_dual_add_nc_u32 v117, 0, v4
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_and_b32 s53, s57, 0xffff
	s_mov_b32 s52, s56
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s57, s59, 0xffff
	s_mov_b32 s56, s58
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 42                       ; ragged.py:1028:42
	v_add_nc_u32_e32 v118, s62, v104
	v_add_nc_u32_e32 v120, s62, v102
	v_add_nc_u32_e32 v122, s62, v100
	v_add_nc_u32_e32 v124, s62, v98
	v_add_nc_u32_e32 v119, s62, v103
	v_add_nc_u32_e32 v121, s62, v101
	v_add_nc_u32_e32 v123, s62, v99
	.loc	1 1028 34 is_stmt 0             ; ragged.py:1028:34
	v_add_nc_u32_e32 v125, s62, v97
	v_add_nc_u32_e32 v150, s62, v79
	v_add_nc_u32_e32 v151, s62, v78
	v_add_nc_u32_e32 v152, s62, v77
	v_add_nc_u32_e32 v153, s62, v76
	v_add_nc_u32_e32 v154, s62, v75
	v_add_nc_u32_e32 v155, s62, v74
	v_add_nc_u32_e32 v156, s62, v73
	.loc	1 1029 34 is_stmt 1             ; ragged.py:1029:34
	v_add_nc_u32_e32 v157, s62, v72
	.loc	1 1029 42 is_stmt 0             ; ragged.py:1029:42
	v_add_nc_u32_e32 v126, s62, v96
	v_add_nc_u32_e32 v127, s62, v71
	v_add_nc_u32_e32 v128, s62, v70
	v_add_nc_u32_e32 v129, s62, v69
	v_add_nc_u32_e32 v130, s62, v68
	v_add_nc_u32_e32 v131, s62, v67
	v_add_nc_u32_e32 v132, s62, v66
	v_add_nc_u32_e32 v133, s62, v65
	v_add_nc_u32_e32 v134, s62, v95
	v_add_nc_u32_e32 v135, s62, v94
	v_add_nc_u32_e32 v136, s62, v93
	v_add_nc_u32_e32 v137, s62, v92
	v_add_nc_u32_e32 v138, s62, v91
	v_add_nc_u32_e32 v139, s62, v90
	v_add_nc_u32_e32 v140, s62, v89
	v_add_nc_u32_e32 v141, s62, v88
	v_add_nc_u32_e32 v142, s62, v87
	v_add_nc_u32_e32 v143, s62, v86
	v_add_nc_u32_e32 v144, s62, v85
	v_add_nc_u32_e32 v145, s62, v84
	v_add_nc_u32_e32 v146, s62, v83
	v_add_nc_u32_e32 v147, s62, v82
	v_add_nc_u32_e32 v148, s62, v81
	v_add_nc_u32_e32 v149, s62, v80
	.loc	1 1028 34 is_stmt 1             ; ragged.py:1028:34
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	v_cndmask_b32_e64 v124, 0x80000000, v124, s5
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s40
	v_cndmask_b32_e64 v123, 0x80000000, v123, s4
	v_cndmask_b32_e64 v125, 0x80000000, v125, s6
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v150, 0x80000000, v150, s31
	v_cndmask_b32_e64 v151, 0x80000000, v151, s33
	v_cndmask_b32_e64 v152, 0x80000000, v152, s34
	v_cndmask_b32_e64 v153, 0x80000000, v153, s35
	v_cndmask_b32_e64 v154, 0x80000000, v154, s36
	v_cndmask_b32_e64 v155, 0x80000000, v155, s37
	v_cndmask_b32_e64 v156, 0x80000000, v156, s38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s39
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	v_cndmask_b32_e64 v126, 0x80000000, v126, s7
	v_cndmask_b32_e64 v127, 0x80000000, v127, s8
	v_cndmask_b32_e64 v128, 0x80000000, v128, s9
	v_cndmask_b32_e64 v129, 0x80000000, v129, s10
	v_cndmask_b32_e64 v130, 0x80000000, v130, s11
	v_cndmask_b32_e64 v131, 0x80000000, v131, s12
	v_cndmask_b32_e64 v132, 0x80000000, v132, s13
	v_cndmask_b32_e64 v133, 0x80000000, v133, s14
	v_cndmask_b32_e64 v134, 0x80000000, v134, s15
	v_cndmask_b32_e64 v135, 0x80000000, v135, s16
	v_cndmask_b32_e64 v136, 0x80000000, v136, s17
	v_cndmask_b32_e64 v137, 0x80000000, v137, s18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s19
	v_cndmask_b32_e64 v139, 0x80000000, v139, s20
	v_cndmask_b32_e64 v140, 0x80000000, v140, s21
	v_cndmask_b32_e64 v141, 0x80000000, v141, s22
	v_cndmask_b32_e64 v142, 0x80000000, v142, s23
	v_cndmask_b32_e64 v143, 0x80000000, v143, s24
	v_cndmask_b32_e64 v144, 0x80000000, v144, s25
	v_cndmask_b32_e64 v145, 0x80000000, v145, s26
	v_cndmask_b32_e64 v146, 0x80000000, v146, s27
	v_cndmask_b32_e64 v147, 0x80000000, v147, s28
	v_cndmask_b32_e64 v148, 0x80000000, v148, s29
	v_cndmask_b32_e64 v149, 0x80000000, v149, s30
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_clause 0x7
	buffer_load_u8 v118, v118, s[52:55], 0 offen
	buffer_load_u8 v120, v120, s[52:55], 0 offen
	buffer_load_u8 v122, v122, s[52:55], 0 offen
	buffer_load_u8 v124, v124, s[52:55], 0 offen
	buffer_load_u8 v125, v125, s[52:55], 0 offen
	buffer_load_u8 v123, v123, s[52:55], 0 offen
	buffer_load_u8 v121, v121, s[52:55], 0 offen
	buffer_load_u8 v119, v119, s[52:55], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0x1f
	buffer_load_u8 v158, v126, s[56:59], 0 offen
	buffer_load_u8 v159, v128, s[56:59], 0 offen
	buffer_load_u8 v160, v130, s[56:59], 0 offen
	buffer_load_u8 v161, v132, s[56:59], 0 offen
	buffer_load_u8 v162, v134, s[56:59], 0 offen
	buffer_load_u8 v163, v136, s[56:59], 0 offen
	buffer_load_u8 v164, v138, s[56:59], 0 offen
	buffer_load_u8 v165, v140, s[56:59], 0 offen
	buffer_load_u8 v166, v142, s[56:59], 0 offen
	buffer_load_u8 v167, v144, s[56:59], 0 offen
	buffer_load_u8 v168, v146, s[56:59], 0 offen
	buffer_load_u8 v169, v148, s[56:59], 0 offen
	buffer_load_u8 v150, v150, s[56:59], 0 offen
	buffer_load_u8 v152, v152, s[56:59], 0 offen
	buffer_load_u8 v154, v154, s[56:59], 0 offen
	buffer_load_u8 v156, v156, s[56:59], 0 offen
	buffer_load_u8 v170, v133, s[56:59], 0 offen
	buffer_load_u8 v171, v131, s[56:59], 0 offen
	buffer_load_u8 v172, v129, s[56:59], 0 offen
	buffer_load_u8 v173, v127, s[56:59], 0 offen
	buffer_load_u8 v174, v141, s[56:59], 0 offen
	buffer_load_u8 v175, v139, s[56:59], 0 offen
	buffer_load_u8 v176, v137, s[56:59], 0 offen
	buffer_load_u8 v177, v135, s[56:59], 0 offen
	buffer_load_u8 v178, v149, s[56:59], 0 offen
	buffer_load_u8 v179, v147, s[56:59], 0 offen
	buffer_load_u8 v180, v145, s[56:59], 0 offen
	buffer_load_u8 v181, v143, s[56:59], 0 offen
	buffer_load_u8 v157, v157, s[56:59], 0 offen
	buffer_load_u8 v155, v155, s[56:59], 0 offen
	buffer_load_u8 v153, v153, s[56:59], 0 offen
	buffer_load_u8 v151, v151, s[56:59], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s62, s62, 32
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v105, v118
	s_waitcnt vmcnt(38)
	ds_store_b8 v105, v120 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v105, v122 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v105, v124 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v109, v119
	ds_store_b8 v109, v121 offset:512
	ds_store_b8 v109, v123 offset:1024
	ds_store_b8 v109, v125 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[118:121], v110 offset1:1
	ds_load_2addr_stride64_b64 v[122:125], v110 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[126:129], v111 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v111 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[134:137], v112 offset1:1
	ds_load_2addr_stride64_b64 v[138:141], v112 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[142:145], v113 offset1:1
	ds_load_2addr_stride64_b64 v[146:149], v113 offset0:2 offset1:3
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v105, v158
	s_waitcnt vmcnt(30)
	ds_store_b8 v105, v159 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v105, v160 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v105, v161 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v105, v162 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v105, v163 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v105, v164 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v105, v165 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v105, v166 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v105, v167 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v105, v168 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v105, v169 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v105, v150 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v105, v152 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v105, v154 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v105, v156 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v109, v173
	ds_store_b8 v109, v172 offset:512
	ds_store_b8 v109, v171 offset:1024
	ds_store_b8 v109, v170 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v109, v177 offset:2048
	ds_store_b8 v109, v176 offset:2560
	ds_store_b8 v109, v175 offset:3072
	ds_store_b8 v109, v174 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v109, v181 offset:4096
	ds_store_b8 v109, v180 offset:4608
	ds_store_b8 v109, v179 offset:5120
	ds_store_b8 v109, v178 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v109, v151 offset:6144
	ds_store_b8 v109, v153 offset:6656
	ds_store_b8 v109, v155 offset:7168
	ds_store_b8 v109, v157 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[150:153], v114 offset1:8
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s62, s63
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[120:121], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[120:121], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[150:151], v[122:123], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[152:153], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[124:125], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[152:153], v[124:125], v[57:64] neg_lo:[1,1,0]
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[118:121], v115 offset1:8
	ds_load_2addr_stride64_b64 v[122:125], v116 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[118:119], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[126:127], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[128:129], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[128:129], v[25:32] neg_lo:[1,1,0]
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[126:129], v117 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[130:131], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[120:121], v[130:131], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[118:119], v[132:133], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[132:133], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[122:123], v[134:135], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[134:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[122:123], v[136:137], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[136:137], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[138:139], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[138:139], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[140:141], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[124:125], v[140:141], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[142:143], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[142:143], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[144:145], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[144:145], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[146:147], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[128:129], v[146:147], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[126:127], v[148:149], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[128:129], v[148:149], v[57:64] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v96, v1
	v_cvt_f32_i32_e32 v95, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v92, v5
	v_cvt_f32_i32_e32 v91, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v89, v8
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v87, v10
	v_cvt_f32_i32_e32 v86, v11
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v80, v17
	v_cvt_f32_i32_e32 v79, v18
	v_cvt_f32_i32_e32 v78, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_mov_b32_e32 v1, v108
	s_add_i32 s8, s47, s60
	s_add_i32 s9, s41, s61
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v34, s47, v106
	.loc	1 1098 21                       ; ragged.py:1098:21
	v_add_lshl_u32 v35, s8, v106, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s49, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v38, 16, v34
	v_or_b32_e32 v37, 32, v34
	v_or_b32_e32 v36, 48, v34
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s3, s42, v34
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v39, 32, v35
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s42, v38
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v40, 64, v35
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s42, v37
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s3
	v_add_nc_u32_e32 v35, 0x60, v35
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s42, v36
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v38, 0x80000000, v39, s1
	v_cndmask_b32_e64 v37, 0x80000000, v40, s0
	s_mov_b32 s4, s48
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v38, s[4:7], 0 offen
	buffer_load_u16 v45, v37, s[4:7], 0 offen
	buffer_load_u16 v46, v35, s[4:7], 0 offen
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v34, s41, v0
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v35, s9, v0, 1
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s4, s50
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v37, s43, v106
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s43, v34
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v1, 28, v1
	v_lshl_add_u32 v49, v36, 2, 0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s46, s6
	s_mov_b32 s47, s7
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s2
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v35, 1, v107
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s2, s8, s43
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_and_b32 s45, s45, 0xffff
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v42, s2, s41, v37
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v0, 5, v0
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v59, s43, 4, v42
	v_lshl_add_u32 v60, s43, 5, v42
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v48, v34, 1, v35
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v0, 32, v0
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v58, s41, v48
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v107, s41, v57
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v54, 8, v48
	.loc	1 1109 17 is_stmt 1             ; ragged.py:1109:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s43, v58
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v106, s41, v56
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v35, 0x8c, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v105, s41, v55
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v52, 12, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v61, s41, v34
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v121, v59, v48, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s43, v107
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v104, s41, v54
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s2
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v51, 14, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s43, v106
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v37, 0x88, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v103, s41, v53
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v41, 0x80, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v62, s41, v35
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s43, v105
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v38, 0x86, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v102, s41, v52
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s43, v61
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v40, 0x82, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s43, v104
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v39, 0x84, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v101, s41, v51
	v_or_b32_e32 v64, s41, v37
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s43, v103
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v100, s41, v41
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s43, v62
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v97, s41, v38
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s43, v102
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v99, s41, v40
	v_or_b32_e32 v98, s41, v39
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s43, v101
	v_cmp_gt_i32_e64 s7, s43, v64
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s43, v100
	v_cmp_gt_i32_e64 s8, s43, v97
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s43, v99
	v_cmp_gt_i32_e64 s9, s43, v98
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v120, v42, v35, 2
	v_add_lshl_u32 v122, v59, v57, 2
	v_add_lshl_u32 v123, v59, v56, 2
	v_add_lshl_u32 v124, v59, v55, 2
	v_add_lshl_u32 v125, v59, v54, 2
	v_add_lshl_u32 v126, v59, v53, 2
	v_add_lshl_u32 v127, v59, v52, 2
	v_add_lshl_u32 v128, v59, v51, 2
	v_add_lshl_u32 v129, v59, v41, 2
	v_add_lshl_u32 v130, v59, v40, 2
	v_add_lshl_u32 v131, v59, v39, 2
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_add_lshl_u32 v136, v60, v48, 2
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s43, 48, v[42:43]
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v76, v76, v44 :: v_dual_mul_f32 v95, v95, v43
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v50, v36, 1, 0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v36, 0x8a, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s1, s2
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v94, v94, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v63, s41, v36
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v119, v42, v36, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s43, v63
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s14
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v97, 0x80000000, v111, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s13
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v66, v66, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v98, 0x80000000, v112, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s12
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v99, 0x80000000, v113, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s11
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s10
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s9
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v77, v77, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s8
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v75, v75, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s7
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v73, v73, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s6
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v71, v71, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s18
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v72, v72, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s17
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v69, v69, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s16
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v83, v83, v43 :: v_dual_mul_f32 v70, v70, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s15
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v82, v82, v43 :: v_dual_mul_f32 v67, v67, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s14
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v43, v81, v43 :: v_dual_mul_f32 v68, v68, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s13
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v80, v80, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s12
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v79, v79, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s11
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v78, v78, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v44, v65, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v33, v33, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v32, v32, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v30, v30, v45
	v_dual_mul_f32 v65, v29, v45 :: v_dual_mul_f32 v10, v10, v46
	v_mul_f32_e32 v81, v28, v45
	v_dual_mul_f32 v121, v27, v45 :: v_dual_mul_f32 v8, v8, v46
	v_mul_f32_e32 v122, v26, v45
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v6, v6, v46
	v_mul_f32_e32 v124, v24, v45
	v_dual_mul_f32 v125, v23, v45 :: v_dual_mul_f32 v4, v4, v46
	v_dual_mul_f32 v126, v22, v45 :: v_dual_mul_f32 v11, v11, v46
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v2, v2, v46
	v_dual_mul_f32 v128, v20, v45 :: v_dual_mul_f32 v9, v9, v46
	v_mul_f32_e32 v129, v19, v45
	v_mul_f32_e32 v45, v18, v45
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v50
	ds_load_b128 v[22:25], v50 offset:16
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s10
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v115, 0x80000000, v130, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s9
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v116, 0x80000000, v131, s3
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[12:15], v50 offset:512
	ds_load_b128 v[26:29], v50 offset:528
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v134, v59, v36, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s7
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v7, v7, v46
	v_mul_f32_e32 v5, v5, v46
	v_mul_f32_e32 v3, v3, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v59, v59, v34, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v46, v96, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v50, v95, v19
	v_mul_f32_e32 v94, v94, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s1, s5
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v93, v93, v21 :: v_dual_mul_f32 v92, v92, v22
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s1, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v91, v91, v23 :: v_dual_mul_f32 v86, v86, v14
	v_dual_mul_f32 v90, v90, v24 :: v_dual_mul_f32 v89, v89, v25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v84, v84, v26
	v_dual_mul_f32 v88, v88, v12 :: v_dual_mul_f32 v87, v87, v13
	v_dual_mul_f32 v82, v82, v28 :: v_dual_mul_f32 v85, v85, v15
	v_dual_mul_f32 v80, v80, v18 :: v_dual_mul_f32 v83, v83, v27
	v_dual_mul_f32 v78, v78, v20 :: v_dual_mul_f32 v43, v43, v29
	v_dual_mul_f32 v76, v76, v22 :: v_dual_mul_f32 v79, v79, v19
	v_dual_mul_f32 v74, v74, v24 :: v_dual_mul_f32 v77, v77, v21
	v_dual_mul_f32 v72, v72, v12 :: v_dual_mul_f32 v75, v75, v23
	v_dual_mul_f32 v70, v70, v14 :: v_dual_mul_f32 v73, v73, v25
	v_dual_mul_f32 v68, v68, v26 :: v_dual_mul_f32 v71, v71, v13
	v_dual_mul_f32 v66, v66, v28 :: v_dual_mul_f32 v69, v69, v15
	v_dual_mul_f32 v44, v44, v29 :: v_dual_mul_f32 v67, v67, v27
	v_mul_f32_e32 v30, v30, v21
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[44:47], 0 offen
	buffer_store_b32 v50, v58, s[44:47], 0 offen
	buffer_store_b32 v94, v62, s[44:47], 0 offen
	buffer_store_b32 v93, v63, s[44:47], 0 offen
	buffer_store_b32 v92, v64, s[44:47], 0 offen
	buffer_store_b32 v91, v97, s[44:47], 0 offen
	buffer_store_b32 v90, v98, s[44:47], 0 offen
	buffer_store_b32 v89, v99, s[44:47], 0 offen
	buffer_store_b32 v88, v100, s[44:47], 0 offen
	buffer_store_b32 v87, v101, s[44:47], 0 offen
	buffer_store_b32 v86, v102, s[44:47], 0 offen
	buffer_store_b32 v85, v103, s[44:47], 0 offen
	buffer_store_b32 v84, v104, s[44:47], 0 offen
	buffer_store_b32 v83, v105, s[44:47], 0 offen
	buffer_store_b32 v82, v106, s[44:47], 0 offen
	buffer_store_b32 v43, v42, s[44:47], 0 offen
	buffer_store_b32 v80, v61, s[44:47], 0 offen
	buffer_store_b32 v79, v107, s[44:47], 0 offen
	buffer_store_b32 v78, v108, s[44:47], 0 offen
	buffer_store_b32 v77, v109, s[44:47], 0 offen
	buffer_store_b32 v76, v110, s[44:47], 0 offen
	buffer_store_b32 v75, v111, s[44:47], 0 offen
	buffer_store_b32 v74, v112, s[44:47], 0 offen
	buffer_store_b32 v73, v113, s[44:47], 0 offen
	buffer_store_b32 v72, v114, s[44:47], 0 offen
	buffer_store_b32 v71, v115, s[44:47], 0 offen
	buffer_store_b32 v70, v116, s[44:47], 0 offen
	buffer_store_b32 v69, v117, s[44:47], 0 offen
	buffer_store_b32 v68, v118, s[44:47], 0 offen
	buffer_store_b32 v67, v119, s[44:47], 0 offen
	buffer_store_b32 v66, v120, s[44:47], 0 offen
	v_add_lshl_u32 v1, v60, v57, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v95, v121, v24
	v_mul_f32_e32 v121, v123, v12
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v12, v60, v56, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v96, v122, v25
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v122, v124, v13
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v136, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v32, v32, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v44, v59, s[44:47], 0 offen
	buffer_store_b32 v33, v13, s[44:47], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_add_lshl_u32 v13, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v1, s[44:47], 0 offen
	buffer_store_b32 v31, v12, s[44:47], 0 offen
	v_add_lshl_u32 v1, v60, v54, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s16
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v16, v16, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v12, 0x80000000, v13, s1
	v_add_lshl_u32 v13, v60, v53, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s15
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v52, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s14
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v81, v81, v23 :: v_dual_mul_f32 v18, v47, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v30, v12, s[44:47], 0 offen
	buffer_store_b32 v65, v1, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v51, 2
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s12
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v81, v13, s[44:47], 0 offen
	buffer_store_b32 v95, v14, s[44:47], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s10
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v126, v128, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v96, v1, s[44:47], 0 offen
	buffer_store_b32 v121, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v122, v13, s[44:47], 0 offen
	buffer_store_b32 v123, v14, s[44:47], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v35, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v10, v10, v25
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v20, v130, v22
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v124, v1, s[44:47], 0 offen
	buffer_store_b32 v125, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v126, v13, s[44:47], 0 offen
	buffer_store_b32 v127, v14, s[44:47], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v45, v45, v29 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v45, v1, s[44:47], 0 offen
	buffer_store_b32 v17, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v55, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v54, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v16, v13, s[44:47], 0 offen
	buffer_store_b32 v18, v14, s[44:47], 0 offen
	v_add_lshl_u32 v13, v0, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v0, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v19, v49, v21 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v21, v131, v23 :: v_dual_mul_f32 v2, v2, v29
	v_mul_f32_e32 v11, v11, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[44:47], 0 offen
	buffer_store_b32 v20, v12, s[44:47], 0 offen
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[44:47], 0 offen
	buffer_store_b32 v11, v14, s[44:47], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v10, v1, s[44:47], 0 offen
	buffer_store_b32 v9, v11, s[44:47], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[44:47], 0 offen
	buffer_store_b32 v7, v13, s[44:47], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v7, s[44:47], 0 offen
	buffer_store_b32 v4, v8, s[44:47], 0 offen
	buffer_store_b32 v3, v9, s[44:47], 0 offen
	buffer_store_b32 v2, v0, s[44:47], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 182
		.amdhsa_next_free_sgpr 66
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 182
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7932
; TotalNumSgprs: 68
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 182
; Occupancy: 8
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
