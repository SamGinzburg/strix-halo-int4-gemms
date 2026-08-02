	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s31, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s31, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s31, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v5, s2, s24, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v6, null, s25, 0, s2
	v_add_nc_u32_e32 v65, s24, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[5:6]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v107, 15, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v110, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s35, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s36, s[0:1], 0x58
	s_load_b32 s37, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s24, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s25, 0, s0
	v_dual_mov_b32 v186, 0 :: v_dual_lshlrev_b32 v35, 1, v0
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s2, s4
	s_addc_u32 s7, s3, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[6:7], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[3:4]
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v3, s24, v107
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[5:6]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v5, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v4, 16, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[9:10]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s3
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s31, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v104, v4, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, s3, v5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s2, s4, s6
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s36, s33
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v103, v3, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v37, 8, v4
	v_or_b32_e32 v34, 16, v4
	v_or_b32_e32 v33, 24, v4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s34, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v32, 32, v4
	v_or_b32_e32 v31, 40, v4
	v_mad_u64_u32 v[66:67], null, v4, s36, s[34:35]
	v_or_b32_e32 v30, 48, v4
	v_mad_u64_u32 v[67:68], null, v37, s36, s[34:35]
	v_or_b32_e32 v29, 56, v4
	v_mad_u64_u32 v[68:69], null, v34, s36, s[34:35]
	v_or_b32_e32 v28, 64, v4
	v_mad_u64_u32 v[69:70], null, v33, s36, s[34:35]
	v_or_b32_e32 v27, 0x48, v4
	v_mad_u64_u32 v[70:71], null, v32, s36, s[34:35]
	v_or_b32_e32 v26, 0x50, v4
	v_mad_u64_u32 v[71:72], null, v31, s36, s[34:35]
	v_or_b32_e32 v25, 0x58, v4
	v_mad_u64_u32 v[72:73], null, v30, s36, s[34:35]
	v_or_b32_e32 v24, 0x60, v4
	v_mad_u64_u32 v[73:74], null, v29, s36, s[34:35]
	v_or_b32_e32 v23, 0x68, v4
	v_mad_u64_u32 v[74:75], null, v28, s36, s[34:35]
	v_or_b32_e32 v22, 0x70, v4
	v_mad_u64_u32 v[75:76], null, v27, s36, s[34:35]
	v_or_b32_e32 v21, 0x78, v4
	v_mad_u64_u32 v[76:77], null, v26, s36, s[34:35]
	v_or_b32_e32 v20, 0x80, v4
	v_mad_u64_u32 v[77:78], null, v25, s36, s[34:35]
	v_or_b32_e32 v19, 0x88, v4
	v_mad_u64_u32 v[78:79], null, v24, s36, s[34:35]
	v_or_b32_e32 v18, 0x90, v4
	v_mad_u64_u32 v[79:80], null, v23, s36, s[34:35]
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v6, 32, v3
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v3, 48, v3
	v_or_b32_e32 v17, 0x98, v4
	v_dual_mov_b32 v187, 0 :: v_dual_and_b32 v38, 24, v35
	v_bfe_i32 v39, v0, 7, 1
	v_mad_u64_u32 v[80:81], null, v22, s36, s[34:35]
	v_or_b32_e32 v16, 0xa0, v4
	v_mad_u64_u32 v[81:82], null, v21, s36, s[34:35]
	v_or_b32_e32 v15, 0xa8, v4
	v_mad_u64_u32 v[82:83], null, v20, s36, s[34:35]
	v_or_b32_e32 v14, 0xb0, v4
	v_mad_u64_u32 v[83:84], null, v19, s36, s[34:35]
	v_or_b32_e32 v13, 0xb8, v4
	v_mad_u64_u32 v[84:85], null, v18, s36, s[34:35]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v106, v3, s30
	v_dual_mov_b32 v188, 0 :: v_dual_and_b32 v3, 0xe0, v0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, 0xc0, v4
	v_lshrrev_b32_e32 v36, 1, v0
	v_lshl_or_b32 v107, v107, 5, v38
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v43, 0x7f, v0
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v39, 0x88, v39
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v51, 5, v0
	v_mad_u64_u32 v[85:86], null, v17, s36, s[34:35]
	v_or_b32_e32 v11, 0xc8, v4
	v_mad_u64_u32 v[86:87], null, v16, s36, s[34:35]
	v_or_b32_e32 v10, 0xd0, v4
	v_mad_u64_u32 v[87:88], null, v15, s36, s[34:35]
	v_or_b32_e32 v9, 0xd8, v4
	v_mad_u64_u32 v[88:89], null, v14, s36, s[34:35]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xe0, v4
	v_mad_u64_u32 v[89:90], null, v13, s36, s[34:35]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v102, 24, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v7, 0xe8, v4
	v_xor3_b32 v1, v35, v36, v1
	v_xor_b32_e32 v108, v39, v43
	v_lshl_or_b32 v109, v3, 4, v107
	v_dual_mov_b32 v174, 0 :: v_dual_lshlrev_b32 v53, 2, v110
	v_dual_mov_b32 v172, 0 :: v_dual_and_b32 v51, 32, v51
	v_mad_u64_u32 v[90:91], null, v12, s36, s[34:35]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v105, v6, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xf0, v4
	v_mad_u64_u32 v[91:92], null, v11, s36, s[34:35]
	v_or_b32_e32 v5, 0xf8, v4
	v_mad_u64_u32 v[92:93], null, v10, s36, s[34:35]
	v_mad_u64_u32 v[93:94], null, v9, s36, s[34:35]
	v_mad_u64_u32 v[94:95], null, v8, s36, s[34:35]
	v_dual_mov_b32 v184, 0 :: v_dual_and_b32 v1, 24, v1
	v_lshl_add_u32 v2, v2, 5, 0
	v_xor_b32_e32 v36, 8, v107
	v_xor_b32_e32 v38, 16, v107
	v_xor_b32_e32 v40, 24, v107
	v_xor_b32_e32 v41, 0x208, v107
	v_xor_b32_e32 v42, 0x218, v107
	v_xor_b32_e32 v44, 0x210, v107
	v_xor_b32_e32 v45, 0x410, v107
	v_xor_b32_e32 v46, 0x418, v107
	v_xor_b32_e32 v47, 0x408, v107
	v_xor_b32_e32 v3, 0x618, v107
	v_xor_b32_e32 v39, 0x610, v107
	v_xor_b32_e32 v43, 0x608, v107
	v_xor_b32_e32 v48, 0x110, v108
	v_xor_b32_e32 v49, 8, v109
	v_xor_b32_e32 v50, 16, v109
	v_xor_b32_e32 v52, 24, v109
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v35, 28, v35
	v_add3_u32 v51, 0, v53, v51
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v53, 1, v110
	v_mad_u64_u32 v[95:96], null, v7, s36, s[34:35]
	v_mad_u64_u32 v[96:97], null, v6, s36, s[34:35]
	v_mad_u64_u32 v[97:98], null, v5, s36, s[34:35]
	v_or_b32_e32 v123, s3, v0
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v145, v2, v1
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v156, v51, v35
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v157, 0, v36
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v159, 0, v38
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v161, 0, v40
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v163, 0, v41
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v165, 0, v42
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v167, 0, v44
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v168, 0, v45
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v169, 0, v46
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v170, 0, v47
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v171, 0, v3
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v173, 0, v39
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v175, 0, v43
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v177, 0, v48
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v179, 0, v49
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v181, 0, v50
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v182, 0, v52
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v183, 0, v53
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v111, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s38, s30, s7
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_mov_b32 s39, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v101
	v_mov_b32_e32 v3, v101
	v_dual_mov_b32 v4, v101 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v101
	v_dual_mov_b32 v6, v101 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v101
	v_dual_mov_b32 v8, v101 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v101 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v101
	v_dual_mov_b32 v12, v101 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v101
	v_dual_mov_b32 v14, v101 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v101
	v_dual_mov_b32 v16, v101 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v101
	v_mov_b32_e32 v19, v101
	v_mov_b32_e32 v20, v101
	v_mov_b32_e32 v21, v101
	v_mov_b32_e32 v22, v101
	v_mov_b32_e32 v23, v101
	v_mov_b32_e32 v24, v101
	v_mov_b32_e32 v26, v101
	v_mov_b32_e32 v27, v101
	v_mov_b32_e32 v28, v101
	v_mov_b32_e32 v29, v101
	v_mov_b32_e32 v30, v101
	v_mov_b32_e32 v31, v101
	v_mov_b32_e32 v32, v101
	v_mov_b32_e32 v34, v101
	v_mov_b32_e32 v35, v101
	v_mov_b32_e32 v36, v101
	v_mov_b32_e32 v37, v101
	v_mov_b32_e32 v38, v101
	v_mov_b32_e32 v39, v101
	v_mov_b32_e32 v40, v101
	v_mov_b32_e32 v42, v101
	v_mov_b32_e32 v43, v101
	v_mov_b32_e32 v44, v101
	v_mov_b32_e32 v45, v101
	v_mov_b32_e32 v46, v101
	v_mov_b32_e32 v47, v101
	v_mov_b32_e32 v48, v101
	v_mov_b32_e32 v50, v101
	v_mov_b32_e32 v51, v101
	v_mov_b32_e32 v52, v101
	v_mov_b32_e32 v53, v101
	v_mov_b32_e32 v54, v101
	v_mov_b32_e32 v55, v101
	v_mov_b32_e32 v56, v101
	v_mov_b32_e32 v58, v101
	v_mov_b32_e32 v59, v101
	v_mov_b32_e32 v60, v101
	v_mov_b32_e32 v61, v101
	v_mov_b32_e32 v62, v101
	v_mov_b32_e32 v63, v101
	v_mov_b32_e32 v64, v101
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s39, 7
	s_mov_b32 s15, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s34, s15, s14
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v99, 0, v108
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v197, s34, v102
	v_or_b32_e32 v193, 7, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[193:194], null, v193, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v195, 0x80000000, v193, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v193, 5, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[193:194], null, v193, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v196, 0x80000000, v193, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v193, 4, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[193:194], null, v193, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v198, 0x80000000, v193, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v193, 6, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[193:194], null, v193, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v199, 0x80000000, v193, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v193, 3, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[193:194], null, v193, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v193, 0x80000000, v193, s3
	s_clause 0x4
	buffer_load_u8 v194, v195, s[20:23], 0 offen
	buffer_load_u8 v195, v196, s[20:23], 0 offen
	buffer_load_u8 v196, v199, s[20:23], 0 offen
	buffer_load_u8 v198, v198, s[20:23], 0 offen
	buffer_load_u8 v199, v193, s[20:23], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v193.l, 8, v194.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v193.h, 8, v195.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v194.h, v196.l, v193.l
	s_waitcnt vmcnt(1)
	v_or_b16 v194.l, v198.l, v193.h
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v193, 2, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[195:196], null, v193, s37, v[65:66]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v193
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v193, 0x80000000, v195, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v195, 1, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v195
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[195:196], null, v195, s37, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	s_clause 0x1
	buffer_load_u8 v196, v193, s[20:23], 0 offen
	buffer_load_u8 v198, v195, s[20:23], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v193.l, 8, v199.l
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v197
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s35, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	s_waitcnt vmcnt(1)
	v_or_b16 v193.h, v196.l, v193.l
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[195:196], null, v197, s37, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v193.l, 8, v198.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	buffer_load_u8 v195, v195, s[20:23], 0 offen
	s_waitcnt vmcnt(0)
	v_or_b16 v193.l, v195.l, v193.l
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_and_b32_e32 v195, 31, v0
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v195, s34, v195
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v196, v66, v195
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s36, v195
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v198, v68, v195
	v_add_nc_u32_e32 v200, v70, v195
	v_add_nc_u32_e32 v202, v72, v195
	v_add_nc_u32_e32 v201, v71, v195
	v_add_nc_u32_e32 v203, v73, v195
	v_add_nc_u32_e32 v204, v74, v195
	v_add_nc_u32_e32 v197, v67, v195
	v_add_nc_u32_e32 v199, v69, v195
	v_add_nc_u32_e32 v205, v75, v195
	v_add_nc_u32_e32 v206, v76, v195
	v_add_nc_u32_e32 v207, v77, v195
	v_add_nc_u32_e32 v208, v78, v195
	v_add_nc_u32_e32 v209, v79, v195
	v_add_nc_u32_e32 v210, v80, v195
	v_add_nc_u32_e32 v211, v81, v195
	v_add_nc_u32_e32 v212, v82, v195
	v_add_nc_u32_e32 v213, v83, v195
	v_add_nc_u32_e32 v214, v84, v195
	v_add_nc_u32_e32 v215, v85, v195
	v_add_nc_u32_e32 v216, v86, v195
	v_add_nc_u32_e32 v217, v87, v195
	v_add_nc_u32_e32 v218, v88, v195
	v_add_nc_u32_e32 v219, v89, v195
	v_add_nc_u32_e32 v220, v90, v195
	v_add_nc_u32_e32 v221, v91, v195
	v_add_nc_u32_e32 v222, v92, v195
	v_add_nc_u32_e32 v223, v93, v195
	v_add_nc_u32_e32 v224, v94, v195
	v_add_nc_u32_e32 v225, v95, v195
	v_add_nc_u32_e32 v226, v96, v195
	v_add_nc_u32_e32 v195, v97, v195
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v196, 0x80000000, v196, s3
	v_cndmask_b32_e64 v198, 0x80000000, v198, s3
	v_cndmask_b32_e64 v200, 0x80000000, v200, s3
	v_cndmask_b32_e64 v202, 0x80000000, v202, s3
	v_cndmask_b32_e64 v201, 0x80000000, v201, s3
	v_cndmask_b32_e64 v203, 0x80000000, v203, s3
	v_cndmask_b32_e64 v204, 0x80000000, v204, s3
	v_cndmask_b32_e64 v197, 0x80000000, v197, s3
	v_cndmask_b32_e64 v199, 0x80000000, v199, s3
	v_cndmask_b32_e64 v205, 0x80000000, v205, s3
	v_cndmask_b32_e64 v206, 0x80000000, v206, s3
	v_cndmask_b32_e64 v207, 0x80000000, v207, s3
	v_cndmask_b32_e64 v208, 0x80000000, v208, s3
	v_cndmask_b32_e64 v209, 0x80000000, v209, s3
	v_cndmask_b32_e64 v210, 0x80000000, v210, s3
	v_cndmask_b32_e64 v211, 0x80000000, v211, s3
	v_cndmask_b32_e64 v212, 0x80000000, v212, s3
	v_cndmask_b32_e64 v213, 0x80000000, v213, s3
	v_cndmask_b32_e64 v214, 0x80000000, v214, s3
	v_cndmask_b32_e64 v215, 0x80000000, v215, s3
	v_cndmask_b32_e64 v216, 0x80000000, v216, s3
	v_cndmask_b32_e64 v217, 0x80000000, v217, s3
	v_cndmask_b32_e64 v218, 0x80000000, v218, s3
	v_cndmask_b32_e64 v219, 0x80000000, v219, s3
	v_cndmask_b32_e64 v220, 0x80000000, v220, s3
	v_cndmask_b32_e64 v221, 0x80000000, v221, s3
	v_cndmask_b32_e64 v222, 0x80000000, v222, s3
	v_cndmask_b32_e64 v223, 0x80000000, v223, s3
	v_cndmask_b32_e64 v224, 0x80000000, v224, s3
	v_cndmask_b32_e64 v225, 0x80000000, v225, s3
	v_cndmask_b32_e64 v226, 0x80000000, v226, s3
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	s_clause 0x1f
	buffer_load_u8 v229, v196, s[8:11], 0 offen
	buffer_load_u8 v230, v198, s[8:11], 0 offen
	buffer_load_u8 v231, v200, s[8:11], 0 offen
	buffer_load_u8 v202, v202, s[8:11], 0 offen
	buffer_load_u8 v204, v204, s[8:11], 0 offen
	buffer_load_u8 v232, v206, s[8:11], 0 offen
	buffer_load_u8 v233, v208, s[8:11], 0 offen
	buffer_load_u8 v234, v210, s[8:11], 0 offen
	buffer_load_u8 v235, v212, s[8:11], 0 offen
	buffer_load_u8 v236, v214, s[8:11], 0 offen
	buffer_load_u8 v237, v216, s[8:11], 0 offen
	buffer_load_u8 v238, v218, s[8:11], 0 offen
	buffer_load_u8 v239, v220, s[8:11], 0 offen
	buffer_load_u8 v240, v222, s[8:11], 0 offen
	buffer_load_u8 v241, v224, s[8:11], 0 offen
	buffer_load_u8 v242, v226, s[8:11], 0 offen
	buffer_load_u8 v203, v203, s[8:11], 0 offen
	buffer_load_u8 v201, v201, s[8:11], 0 offen
	buffer_load_u8 v243, v199, s[8:11], 0 offen
	buffer_load_u8 v244, v197, s[8:11], 0 offen
	buffer_load_u8 v245, v211, s[8:11], 0 offen
	buffer_load_u8 v246, v209, s[8:11], 0 offen
	buffer_load_u8 v247, v207, s[8:11], 0 offen
	buffer_load_u8 v248, v205, s[8:11], 0 offen
	buffer_load_u8 v249, v219, s[8:11], 0 offen
	buffer_load_u8 v250, v217, s[8:11], 0 offen
	buffer_load_u8 v251, v215, s[8:11], 0 offen
	buffer_load_u8 v252, v213, s[8:11], 0 offen
	buffer_load_u8 v253, v195, s[8:11], 0 offen
	buffer_load_u8 v254, v225, s[8:11], 0 offen
	buffer_load_u8 v255, v223, s[8:11], 0 offen
	buffer_load_u8 v100, v221, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v197, 0, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v145, v[193:194]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[205:206], v157
	ds_load_b64 v[207:208], v159
	ds_load_b64 v[209:210], v161
	ds_load_b64 v[211:212], v163
	ds_load_b64 v[213:214], v165
	ds_load_b64 v[215:216], v167
	ds_load_b64 v[217:218], v168
	ds_load_b64 v[219:220], v169
	ds_load_b64 v[221:222], v170
	ds_load_b64 v[223:224], v171
	ds_load_b64 v[225:226], v173
	ds_load_b64 v[227:228], v175
	ds_load_2addr_stride64_b64 v[193:196], v197 offset1:1
	ds_load_2addr_stride64_b64 v[197:200], v197 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(31)
	ds_store_b8 v99, v229
	s_waitcnt vmcnt(30)
	ds_store_b8 v99, v230 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v99, v231 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v99, v202 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v99, v204 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v99, v232 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v99, v233 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v99, v234 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v99, v235 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v99, v236 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v99, v237 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v99, v238 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v99, v239 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v99, v240 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v99, v241 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v99, v242 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v177, v244
	ds_store_b8 v177, v243 offset:512
	ds_store_b8 v177, v201 offset:1024
	ds_store_b8 v177, v203 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v177, v248 offset:2048
	ds_store_b8 v177, v247 offset:2560
	ds_store_b8 v177, v246 offset:3072
	ds_store_b8 v177, v245 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v177, v252 offset:4096
	ds_store_b8 v177, v251 offset:4608
	ds_store_b8 v177, v250 offset:5120
	ds_store_b8 v177, v249 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v177, v100 offset:6144
	ds_store_b8 v177, v255 offset:6656
	ds_store_b8 v177, v254 offset:7168
	ds_store_b8 v177, v253 offset:7680
	v_add_nc_u32_e32 v99, 0, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[201:204], v99 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[211:212], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[211:212], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[201:202], v[217:218], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[203:204], v[217:218], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[201:202], v[223:224], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[203:204], v[223:224], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[201:202], v[193:194], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[203:204], v[193:194], v[9:16] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[201:204], v179 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[195:196], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[195:196], v[25:32] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[193:196], v181 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[201:202], v[205:206], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[203:204], v[205:206], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[201:202], v[219:220], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[203:204], v[219:220], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[201:202], v[225:226], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[203:204], v[225:226], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[193:194], v[207:208], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[207:208], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[193:194], v[213:214], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[213:214], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[193:194], v[227:228], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[195:196], v[227:228], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[197:198], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[195:196], v[197:198], v[41:48] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[193:196], v182 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[193:194], v[199:200], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[195:196], v[199:200], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[193:194], v[209:210], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[209:210], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[193:194], v[215:216], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[215:216], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[221:222], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[195:196], v[221:222], v[41:48] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v99, s39, v103, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s39, s38
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v100, s39, v104, 1
	v_add_lshl_u32 v193, s39, v105, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v194, s39, v106, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v195, v123, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v193, 0x80000000, v193, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v195, v195, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v197, v2
	v_cvt_f32_i32_e32 v198, v3
	v_cvt_f32_i32_e32 v199, v4
	v_cvt_f32_i32_e32 v200, v5
	v_cvt_f32_i32_e32 v201, v6
	v_cvt_f32_i32_e32 v202, v7
	v_cvt_f32_i32_e32 v203, v8
	v_cvt_f32_i32_e32 v204, v9
	v_cvt_f32_i32_e32 v205, v10
	v_cvt_f32_i32_e32 v206, v11
	v_cvt_f32_i32_e32 v207, v12
	v_cvt_f32_i32_e32 v208, v13
	v_cvt_f32_i32_e32 v209, v14
	v_cvt_f32_i32_e32 v210, v15
	v_cvt_f32_i32_e32 v211, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s39, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s39, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v195
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v20, v20, v100 :: v_dual_lshlrev_b32 v99, 16, v99
	v_mul_f32_e32 v18, v18, v100
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v156, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v183
	ds_load_b128 v[5:8], v183 offset:16
	ds_load_b128 v[9:12], v183 offset:512
	ds_load_b128 v[13:16], v183 offset:528
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v195, v196, v99 :: v_dual_lshlrev_b32 v194, 16, v194
	v_mul_f32_e32 v196, v197, v99
	v_dual_mul_f32 v197, v198, v99 :: v_dual_mul_f32 v24, v24, v100
	v_dual_mul_f32 v198, v199, v99 :: v_dual_mul_f32 v17, v17, v100
	v_dual_mul_f32 v199, v200, v99 :: v_dual_mul_f32 v22, v22, v100
	v_dual_mul_f32 v200, v201, v99 :: v_dual_mul_f32 v19, v19, v100
	v_dual_mul_f32 v201, v202, v99 :: v_dual_mul_f32 v28, v28, v100
	v_dual_mul_f32 v202, v203, v99 :: v_dual_mul_f32 v21, v21, v100
	v_dual_mul_f32 v203, v204, v99 :: v_dual_mul_f32 v26, v26, v100
	v_dual_mul_f32 v204, v205, v99 :: v_dual_mul_f32 v23, v23, v100
	v_dual_mul_f32 v205, v206, v99 :: v_dual_mul_f32 v32, v32, v100
	v_dual_mul_f32 v206, v207, v99 :: v_dual_mul_f32 v25, v25, v100
	v_dual_mul_f32 v207, v208, v99 :: v_dual_mul_f32 v30, v30, v100
	v_dual_mul_f32 v208, v209, v99 :: v_dual_mul_f32 v27, v27, v100
	v_dual_mul_f32 v209, v210, v99 :: v_dual_mul_f32 v36, v36, v193
	v_dual_mul_f32 v99, v211, v99 :: v_dual_mul_f32 v34, v34, v193
	v_dual_mul_f32 v29, v29, v100 :: v_dual_mul_f32 v38, v38, v193
	v_dual_mul_f32 v31, v31, v100 :: v_dual_mul_f32 v40, v40, v193
	v_dual_mul_f32 v33, v33, v193 :: v_dual_mul_f32 v50, v50, v194
	v_dual_mul_f32 v35, v35, v193 :: v_dual_mul_f32 v52, v52, v194
	v_dual_mul_f32 v37, v37, v193 :: v_dual_mul_f32 v54, v54, v194
	v_dual_mul_f32 v39, v39, v193 :: v_dual_mul_f32 v56, v56, v194
	v_dual_mul_f32 v41, v41, v193 :: v_dual_mul_f32 v58, v58, v194
	v_dual_mul_f32 v42, v42, v193 :: v_dual_mul_f32 v49, v49, v194
	v_dual_mul_f32 v43, v43, v193 :: v_dual_mul_f32 v60, v60, v194
	v_dual_mul_f32 v44, v44, v193 :: v_dual_mul_f32 v51, v51, v194
	v_dual_mul_f32 v45, v45, v193 :: v_dual_mul_f32 v62, v62, v194
	v_dual_mul_f32 v46, v46, v193 :: v_dual_mul_f32 v53, v53, v194
	v_dual_mul_f32 v47, v47, v193 :: v_dual_mul_f32 v64, v64, v194
	v_dual_mul_f32 v48, v48, v193 :: v_dual_mul_f32 v55, v55, v194
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v57, v57, v194 :: v_dual_fmac_f32 v192, v195, v1
	v_dual_mul_f32 v59, v59, v194 :: v_dual_fmac_f32 v190, v197, v3
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v61, v61, v194 :: v_dual_fmac_f32 v188, v199, v5
	v_dual_mul_f32 v63, v63, v194 :: v_dual_fmac_f32 v186, v201, v7
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v191, v196, v2 :: v_dual_fmac_f32 v184, v203, v9
	v_dual_fmac_f32 v189, v198, v4 :: v_dual_fmac_f32 v180, v204, v10
	v_dual_fmac_f32 v187, v200, v6 :: v_dual_fmac_f32 v178, v205, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v185, v202, v8 :: v_dual_fmac_f32 v174, v207, v13
	v_dual_fmac_f32 v176, v206, v12 :: v_dual_fmac_f32 v143, v31, v15
	v_dual_fmac_f32 v172, v208, v14 :: v_dual_fmac_f32 v141, v33, v1
	v_dual_fmac_f32 v166, v209, v15 :: v_dual_fmac_f32 v155, v20, v4
	v_dual_fmac_f32 v164, v99, v16 :: v_dual_fmac_f32 v153, v22, v6
	v_dual_fmac_f32 v162, v17, v1 :: v_dual_fmac_f32 v151, v24, v8
	v_dual_fmac_f32 v160, v18, v2 :: v_dual_fmac_f32 v147, v28, v12
	v_dual_fmac_f32 v158, v19, v3 :: v_dual_fmac_f32 v149, v26, v10
	v_dual_fmac_f32 v154, v21, v5 :: v_dual_fmac_f32 v139, v35, v3
	v_dual_fmac_f32 v152, v23, v7 :: v_dual_fmac_f32 v137, v37, v5
	v_dual_fmac_f32 v150, v25, v9 :: v_dual_fmac_f32 v135, v39, v7
	v_dual_fmac_f32 v148, v27, v11 :: v_dual_fmac_f32 v133, v41, v9
	v_dual_fmac_f32 v146, v29, v13 :: v_dual_fmac_f32 v131, v43, v11
	v_dual_fmac_f32 v144, v30, v14 :: v_dual_fmac_f32 v129, v45, v13
	v_dual_fmac_f32 v142, v32, v16 :: v_dual_fmac_f32 v127, v47, v15
	v_dual_fmac_f32 v140, v34, v2 :: v_dual_fmac_f32 v125, v49, v1
	v_dual_fmac_f32 v138, v36, v4 :: v_dual_fmac_f32 v119, v54, v6
	v_dual_fmac_f32 v136, v38, v6 :: v_dual_fmac_f32 v121, v52, v4
	v_dual_fmac_f32 v134, v40, v8 :: v_dual_fmac_f32 v115, v58, v10
	v_dual_fmac_f32 v132, v42, v10 :: v_dual_fmac_f32 v117, v56, v8
	v_dual_fmac_f32 v130, v44, v12 :: v_dual_fmac_f32 v111, v62, v14
	v_dual_fmac_f32 v128, v46, v14 :: v_dual_fmac_f32 v113, v60, v12
	v_fmac_f32_e32 v126, v48, v16
	v_fmac_f32_e32 v124, v50, v2
	v_fmac_f32_e32 v122, v51, v3
	v_fmac_f32_e32 v120, v53, v5
	v_fmac_f32_e32 v118, v55, v7
	v_fmac_f32_e32 v116, v57, v9
	v_fmac_f32_e32 v114, v59, v11
	v_fmac_f32_e32 v112, v61, v13
	v_fmac_f32_e32 v110, v63, v15
	v_fmac_f32_e32 v98, v64, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v139, v139 :: v_dual_max_f32 v36, v138, v138
	v_dual_max_f32 v37, v137, v137 :: v_dual_max_f32 v38, v136, v136
	v_max_f32_e32 v39, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v44, 0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v69, 0, v39 :: v_dual_max_f32 v40, v132, v132
	v_dual_max_f32 v38, v134, v134 :: v_dual_max_f32 v39, v133, v133
	v_dual_max_f32 v42, v130, v130 :: v_dual_max_f32 v41, v131, v131
	v_dual_max_f32 v1, v192, v192 :: v_dual_max_f32 v2, v191, v191
	v_dual_max_f32 v77, 0, v38 :: v_dual_max_f32 v78, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v81, 0, v42 :: v_dual_max_f32 v38, v129, v129
	v_dual_max_f32 v79, 0, v40 :: v_dual_max_f32 v80, 0, v41
	v_dual_max_f32 v39, v128, v128 :: v_dual_max_f32 v42, v125, v125
	v_dual_max_f32 v40, v127, v127 :: v_dual_max_f32 v41, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v82, 0, v38 :: v_dual_max_f32 v83, 0, v39
	v_max_f32_e32 v86, 0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v84, 0, v40 :: v_dual_max_f32 v85, 0, v41
	v_dual_max_f32 v38, v124, v124 :: v_dual_max_f32 v39, v122, v122
	v_dual_max_f32 v40, v121, v121 :: v_dual_max_f32 v41, v120, v120
	v_dual_max_f32 v42, v119, v119 :: v_dual_max_f32 v87, 0, v38
	v_dual_max_f32 v5, v188, v188 :: v_dual_max_f32 v6, v187, v187
	v_dual_max_f32 v7, v186, v186 :: v_dual_max_f32 v8, v185, v185
	v_max_f32_e32 v9, v184, v184
	v_dual_max_f32 v15, v166, v166 :: v_dual_max_f32 v16, v164, v164
	v_dual_max_f32 v17, v162, v162 :: v_dual_max_f32 v18, v160, v160
	v_max_f32_e32 v19, v158, v158
	v_dual_max_f32 v27, v148, v148 :: v_dual_max_f32 v28, v147, v147
	v_dual_max_f32 v29, v146, v146 :: v_dual_max_f32 v88, 0, v39
	v_dual_max_f32 v89, 0, v40 :: v_dual_max_f32 v90, 0, v41
	v_max_f32_e32 v91, 0, v42
	v_dual_max_f32 v38, v118, v118 :: v_dual_max_f32 v39, v117, v117
	v_dual_max_f32 v40, v116, v116 :: v_dual_max_f32 v41, v115, v115
	v_max_f32_e32 v42, v114, v114
	v_dual_max_f32 v3, v190, v190 :: v_dual_max_f32 v4, v189, v189
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, v180, v180 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v176, v176 :: v_dual_max_f32 v11, v178, v178
	v_dual_max_f32 v14, v172, v172 :: v_dual_max_f32 v13, v174, v174
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v20, v155, v155
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, v153, v153
	v_dual_max_f32 v21, v154, v154 :: v_dual_max_f32 v24, v151, v151
	v_max_f32_e32 v23, v152, v152
	v_dual_max_f32 v25, v150, v150 :: v_dual_max_f32 v26, v149, v149
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, v144, v144
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v142, v142 :: v_dual_max_f32 v31, v143, v143
	v_dual_max_f32 v34, v140, v140 :: v_dual_max_f32 v33, v141, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v30, 0, v30
	v_dual_max_f32 v92, 0, v38 :: v_dual_max_f32 v95, 0, v41
	v_dual_max_f32 v93, 0, v39 :: v_dual_max_f32 v94, 0, v40
	v_max_f32_e32 v41, v110, v110
	v_dual_max_f32 v96, 0, v42 :: v_dual_max_f32 v39, v112, v112
	v_max_f32_e32 v40, v111, v111
	v_max_f32_e32 v38, v113, v113
	v_dual_max_f32 v42, v98, v98 :: v_dual_mul_f32 v45, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v98, 0, v39 :: v_dual_max_f32 v101, 0, v42
	v_max_f32_e32 v99, 0, v40
	v_dual_max_f32 v97, 0, v38 :: v_dual_max_f32 v100, 0, v41
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v51, v3, v3 :: v_dual_mul_f32 v48, v2, v2
	v_dual_mul_f32 v53, v5, v5 :: v_dual_mul_f32 v52, v4, v4
	v_dual_mul_f32 v59, v7, v7 :: v_dual_mul_f32 v54, v6, v6
	v_mul_f32_e32 v75, v16, v16
	v_dual_mul_f32 v60, v8, v8 :: v_dual_mul_f32 v63, v10, v10
	v_dual_mul_f32 v62, v9, v9 :: v_dual_mul_f32 v71, v14, v14
	v_dual_mul_f32 v76, v11, v11 :: v_dual_mul_f32 v73, v17, v17
	v_dual_mul_f32 v68, v12, v12 :: v_dual_mul_f32 v67, v19, v19
	v_dual_mul_f32 v70, v13, v13 :: v_dual_mul_f32 v61, v22, v22
	v_dual_mul_f32 v74, v15, v15 :: v_dual_mul_f32 v57, v24, v24
	v_dual_mul_f32 v72, v18, v18 :: v_dual_mul_f32 v49, v28, v28
	v_dual_mul_f32 v66, v20, v20 :: v_dual_mul_f32 v55, v26, v26
	v_dual_mul_f32 v64, v21, v21 :: v_dual_mul_f32 v43, v31, v31
	v_dual_mul_f32 v58, v23, v23 :: v_dual_mul_f32 v47, v29, v29
	v_dual_mul_f32 v56, v25, v25 :: v_dual_mul_f32 v39, v35, v35
	v_dual_mul_f32 v50, v27, v27 :: v_dual_mul_f32 v41, v33, v33
	v_dual_mul_f32 v46, v30, v30 :: v_dual_mul_f32 v37, v37, v37
	v_dual_mul_f32 v42, v32, v32 :: v_dual_mul_f32 v35, v69, v69
	v_dual_mul_f32 v40, v34, v34 :: v_dual_mul_f32 v31, v80, v80
	v_dual_mul_f32 v38, v36, v36 :: v_dual_mul_f32 v33, v78, v78
	v_dual_mul_f32 v36, v44, v44 :: v_dual_mul_f32 v29, v82, v82
	v_dual_mul_f32 v34, v77, v77 :: v_dual_mul_f32 v27, v84, v84
	v_dual_mul_f32 v32, v79, v79 :: v_dual_mul_f32 v25, v86, v86
	v_dual_mul_f32 v30, v81, v81 :: v_dual_mul_f32 v23, v88, v88
	v_dual_mul_f32 v28, v83, v83 :: v_dual_mul_f32 v21, v90, v90
	v_dual_mul_f32 v26, v85, v85 :: v_dual_mul_f32 v19, v92, v92
	v_dual_mul_f32 v24, v87, v87 :: v_dual_mul_f32 v17, v94, v94
	v_dual_mul_f32 v22, v89, v89 :: v_dual_mul_f32 v13, v96, v96
	v_dual_mul_f32 v20, v91, v91 :: v_dual_and_b32 v1, 0x80, v0
	v_dual_mul_f32 v18, v93, v93 :: v_dual_mul_f32 v9, v98, v98
	v_dual_mul_f32 v16, v95, v95 :: v_dual_mul_f32 v7, v100, v100
	v_dual_mul_f32 v6, v97, v97 :: v_dual_and_b32 v107, 15, v0
	v_dual_mul_f32 v8, v99, v99 :: v_dual_mov_b32 v3, v65
	v_mul_f32_e32 v4, v101, v101
	v_and_b32_e32 v110, 0xf0, v0
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v48, v48 :: v_dual_max_f32 v5, v45, v45
	v_max3_f32 v10, v52, v53, v54
	v_max3_f32 v11, v63, v76, v68
	v_max3_f32 v12, v70, v71, v74
	v_max_f32_e32 v14, v73, v73
	v_dual_max_f32 v2, v5, v2 :: v_dual_max_f32 v5, v72, v72
	v_max3_f32 v15, v59, v60, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v11, v11, v12, v75
	v_max3_f32 v65, v55, v50, v49
	v_max3_f32 v2, v2, v51, v10
	v_dual_max_f32 v5, v14, v5 :: v_dual_max_f32 v10, v40, v40
	v_max3_f32 v14, v66, v64, v61
	v_max3_f32 v69, v47, v46, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, v2, v15, v11
	v_max_f32_e32 v12, v41, v41
	v_max3_f32 v77, v32, v31, v30
	v_max3_f32 v78, v29, v28, v27
	v_max3_f32 v44, v58, v57, v56
	v_max3_f32 v5, v5, v67, v14
	v_max_f32_e32 v10, v12, v10
	v_max3_f32 v12, v38, v37, v36
	v_max3_f32 v14, v65, v69, v42
	v_max3_f32 v65, v35, v34, v33
	v_max_f32_e32 v69, v24, v24
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v10, v10, v39, v12
	v_max3_f32 v12, v77, v78, v26
	v_max_f32_e32 v77, v25, v25
	v_max3_f32 v5, v5, v44, v14
	v_max3_f32 v15, v16, v13, v6
	v_max3_f32 v44, v9, v8, v7
	v_max3_f32 v10, v10, v65, v12
	v_max_f32_e32 v11, v77, v69
	v_max3_f32 v12, v22, v21, v20
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v65, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v19, v18, v17
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v69, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v15, v44, v4
	v_max3_f32 v11, v11, v23, v12
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v44, v65, v65
	v_max_f32_e32 v65, v69, v69
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 3, v1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v11, v14, v15
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v77, v2, v44
	v_dual_max_f32 v79, v10, v65 :: v_dual_and_b32 v2, 3, v0
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v44, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v5, v12
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 4, v0
	v_lshl_add_u32 v12, v2, 9, 0
	v_lshlrev_b32_e32 v11, 5, v2
	v_and_b32_e32 v65, 8, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v15, 0x60, v0
	v_lshl_add_u32 v69, v10, 2, v12
	v_and_or_b32 v44, 0x680, v44, v11
	v_lshlrev_b32_e32 v12, 1, v1
	v_lshl_add_u32 v83, v10, 6, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v14, v5
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v81, v11, v15
	v_lshl_add_u32 v69, v65, 4, v69
	v_xor_b32_e32 v44, v44, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v1, 0, v1
	v_add3_u32 v5, v69, v12, v81
	v_add3_u32 v14, v83, v82, v44
	v_lshl_add_u32 v2, v2, 4, 0
	ds_store_b128 v5, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v77 :: v_dual_mov_b32 v14, v78
	v_dual_mov_b32 v44, v79 :: v_dual_max_f32 v69, v77, v77
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v14, v14, v14
	v_max_f32_e32 v78, v80, v80
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v69, v5
	v_dual_max_f32 v14, v77, v14 :: v_dual_max_f32 v69, v79, v79
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, v80, v80
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v5 :: v_dual_mov_b32 v80, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v44, v69, v44 :: v_dual_max_f32 v69, v78, v77
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v77, v44 :: v_dual_mov_b32 v78, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v80, v80, v80
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v79 :: v_dual_max_f32 v14, v14, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v78, v78, v78
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v5 :: v_dual_mov_b32 v80, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v44, v44, v77 :: v_dual_max_f32 v69, v69, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v81, v44 :: v_dual_mov_b32 v82, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v79, v79 :: v_dual_max_f32 v78, v80, v80
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v5, v77 :: v_dual_max_f32 v78, v14, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v81, v81 :: v_dual_max_f32 v14, v82, v82
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 1, v15
	v_lshlrev_b32_e32 v65, 3, v65
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v44, v5
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v5, 5, v10
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v69, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v81, v65
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v110
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v5, v65
	ds_store_b128 v1, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v2
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 32, v10
	v_or_b32_e32 v69, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v77, v77
	v_max_f32_e32 v77, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, 0x2b8cbccc, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v44, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s24, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v65, v78, v78
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s25, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v83, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v65, 0x2b8cbccc, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[81:82]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v14, v44, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[81:82]
	v_cmp_gt_i64_e64 s1, s[26:27], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v44, v77, v44
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s0, s24, v69
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v69, null, 0x40e00000, 0x40e00000, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s25, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v69
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v14, v86, v83
	v_max_f32_e32 v2, v80, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[77:78]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_fmac_f32 v86, v1, v44 :: v_dual_max_f32 v87, 0x2b8cbccc, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v69, v88, 1.0
	v_fma_f32 v1, -v14, v86, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v87
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v79
	v_div_scale_f32 v81, s7, v65, 0x40e00000, v65
	v_div_fmas_f32 v1, v1, v44, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v2, s6, v79, 0x40e00000, v79
	v_mul_f32_e32 v86, v81, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v77, -v69, v86, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v84, v85, 1.0
	v_dual_fmac_f32 v86, v77, v88 :: v_dual_fmac_f32 v85, v80, v85
	v_rcp_f32_e32 v80, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v69, v86, v81
	v_mul_f32_e32 v44, v2, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v5, -v84, v44, v2
	v_fma_f32 v83, -v14, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v5, v85
	v_fmac_f32_e32 v80, v83, v80
	v_div_scale_f32 v83, s8, v87, 0x40e00000, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v82.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v84, v44, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, v83, v80
	v_div_fmas_f32 v44, v2, v85, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v14, v78, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v69, v69, v88, v86
	v_fmac_f32_e32 v78, v77, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v44, v44, 0x40e00000, v79
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s24, v10
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v14, v78, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v44.h
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v65, v69, 0x40e00000, v65
	v_div_fmas_f32 v14, v14, v80, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v84, v84, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v69, 1, v82
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v80, v14, 0x40e00000, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v1, v44, v69, 0x7fff
	v_mov_b16_e32 v14.l, v65.h
	v_mov_b16_e32 v14.h, v82.h
	v_mov_b16_e32 v82.l, v80.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v2, 1, v14
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v44, -v78, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v65, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v44, v83
	v_div_scale_f32 v79, null, v84, v84, v45
	v_div_scale_f32 v85, vcc_lo, v45, v84, v45
	v_div_scale_f32 v88, null, v84, v84, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v87, null, v84, v84, v51
	v_div_scale_f32 v89, s8, v48, v84, v48
	v_div_scale_f32 v92, null, v84, v84, v53
	v_fma_f32 v77, -v79, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v77, v81
	v_dual_mul_f32 v86, v85, v81 :: v_dual_and_b32 v77, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v79, v86, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v69, 1, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v87
	v_fmac_f32_e32 v86, v65, v81
	v_rcp_f32_e32 v65, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v80, v69, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v80, v89, v83
	v_fma_f32 v79, -v79, v86, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v87, v82, 1.0
	v_fma_f32 v85, -v78, v80, v89
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v81, v86
	v_fma_f32 v91, -v88, v65, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v44, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, s9, v51, v84, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v91, v65
	v_div_scale_f32 v91, null, v84, v84, v54
	v_dual_fmac_f32 v80, v85, v83 :: v_dual_mul_f32 v81, v90, v82
	v_div_scale_f32 v86, s10, v52, v84, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v91
	v_fma_f32 v78, -v78, v80, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v45, v79, v84, v45
	v_fma_f32 v79, -v87, v81, v90
	v_mul_f32_e32 v89, v86, v65
	v_div_fmas_f32 v78, v78, v83, v80
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v80, s8, v53, v84, v53
	v_fma_f32 v83, -v91, v93, 1.0
	v_div_fixup_f32 v48, v78, v84, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v93, v83, v93
	v_fmac_f32_e32 v81, v79, v82
	v_fma_f32 v79, -v88, v89, v86
	v_fma_f32 v94, -v92, v85, 1.0
	v_div_scale_f32 v83, s11, v54, v84, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v87, v81, v90
	v_fmac_f32_e32 v89, v79, v65
	v_div_scale_f32 v87, null, v84, v84, v59
	v_div_scale_f32 v90, null, v84, v84, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v82, v81
	v_fma_f32 v81, -v88, v89, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v51, v78, v84, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v65, v81, v65, v89
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v78, s9, v59, v84, v59
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v52, v65, v84, v52
	v_fma_f32 v89, -v87, v86, 1.0
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v84, v84, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v89, v86 :: v_dual_mul_f32 v79, v80, v85
	v_mul_f32_e32 v88, v83, v93
	v_div_scale_f32 v89, null, v84, v84, v63
	v_fma_f32 v82, -v92, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v82, v85
	v_fma_f32 v82, -v91, v88, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v92, v79, v80
	v_fmac_f32_e32 v88, v82, v93
	v_fma_f32 v80, -v90, v81, 1.0
	v_div_scale_f32 v82, null, v84, v84, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v85, v79
	v_fma_f32 v79, -v91, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v82
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v83, v78, v86
	v_div_fmas_f32 v79, v79, v93, v88
	v_rcp_f32_e32 v93, v89
	v_div_scale_f32 v85, s8, v60, v84, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v87, v83, v78
	v_div_fixup_f32 v53, v65, v84, v53
	v_div_fixup_f32 v54, v79, v84, v54
	v_fma_f32 v92, -v82, v80, 1.0
	v_mul_f32_e32 v91, v85, v81
	v_div_scale_f32 v79, s10, v62, v84, v62
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v80
	v_fma_f32 v92, -v89, v93, 1.0
	v_fma_f32 v65, -v90, v91, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v92, v93
	v_fmac_f32_e32 v83, v88, v86
	v_fmac_f32_e32 v91, v65, v81
	v_div_scale_f32 v92, s11, v63, v84, v63
	v_mul_f32_e32 v65, v79, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v87, v83, v78
	v_div_scale_f32 v88, null, v84, v84, v76
	v_div_fmas_f32 v78, v78, v86, v83
	v_fma_f32 v83, -v90, v91, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v85, -v82, v65, v79
	v_div_fixup_f32 v59, v78, v84, v59
	v_div_fmas_f32 v81, v83, v81, v91
	v_rcp_f32_e32 v83, v94
	v_rcp_f32_e32 v87, v88
	v_fmac_f32_e32 v65, v85, v80
	v_fma_f32 v85, -v89, v86, v92
	v_div_fixup_f32 v60, v81, v84, v60
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v82, v65, v79
	v_div_scale_f32 v82, null, v84, v84, v70
	v_fma_f32 v81, -v94, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v87, 1.0
	v_fmac_f32_e32 v86, v85, v93
	v_div_fmas_f32 v65, v78, v80, v65
	v_div_scale_f32 v85, s9, v68, v84, v68
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v82
	v_fma_f32 v78, -v89, v86, v92
	v_div_scale_f32 v89, null, v84, v84, v71
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v62, v65, v84, v62
	v_div_fmas_f32 v78, v78, v93, v86
	v_mul_f32_e32 v86, v85, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v82, v81, 1.0
	v_div_fixup_f32 v63, v78, v84, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v94, v86, v85
	v_fmac_f32_e32 v81, v91, v81
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s8, v76, v84, v76
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v86, v78, v83
	v_div_scale_f32 v91, null, v84, v84, v74
	v_mul_f32_e32 v79, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v88, v79, v90
	v_fmac_f32_e32 v79, v80, v87
	v_rcp_f32_e32 v80, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v88, v79, v90
	v_div_scale_f32 v88, s10, v70, v84, v70
	v_div_fmas_f32 v65, v65, v87, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v89, v80, 1.0
	v_mul_f32_e32 v78, v88, v81
	v_div_scale_f32 v87, s8, v71, v84, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v65, v65, v84, v76
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v76, -v94, v86, v85
	v_fma_f32 v85, -v82, v78, v88
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v91
	v_mul_f32_e32 v92, v87, v80
	v_div_fmas_f32 v76, v76, v83, v86
	v_fmac_f32_e32 v78, v85, v81
	v_div_scale_f32 v90, null, v84, v84, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v89, v92, v87
	v_div_fixup_f32 v68, v76, v84, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v82, v78, v88
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v93, v90
	v_fmac_f32_e32 v92, v83, v80
	v_fma_f32 v94, -v91, v79, 1.0
	v_div_fmas_f32 v76, v76, v81, v78
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v85, s9, v74, v84, v74
	v_fma_f32 v78, -v89, v92, v87
	v_div_scale_f32 v89, null, v77, v77, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v90, v93, 1.0
	v_div_scale_f32 v83, s11, v75, v84, v75
	v_div_fmas_f32 v78, v78, v80, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v89
	v_fmac_f32_e32 v79, v94, v79
	v_div_fixup_f32 v70, v76, v84, v70
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v71, v78, v84, v71
	v_div_scale_f32 v78, s8, v73, v77, v73
	v_mul_f32_e32 v82, v85, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v91, v82, v85
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, null, v77, v77, v73
	v_fmac_f32_e32 v82, v81, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v93
	v_rcp_f32_e32 v87, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v91, v82, v85
	v_fma_f32 v81, -v90, v88, v83
	v_div_scale_f32 v85, null, v77, v77, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v81, v93
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v81, -v89, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v92, v87 :: v_dual_fmac_f32 v80, v81, v80
	v_div_fmas_f32 v76, v76, v79, v82
	v_fma_f32 v79, -v90, v88, v83
	v_rcp_f32_e32 v81, v85
	v_mul_f32_e32 v82, v78, v87
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v72, v77, v72
	v_div_fmas_f32 v79, v79, v93, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v86, v82, v78
	v_div_fixup_f32 v74, v76, v84, v74
	v_mul_f32_e32 v91, v83, v80
	v_div_scale_f32 v90, null, v77, v77, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v81, 1.0
	v_div_fixup_f32 v75, v79, v84, v75
	v_fmac_f32_e32 v82, v88, v87
	v_div_scale_f32 v84, null, v77, v77, v64
	v_fma_f32 v76, -v89, v91, v83
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v79, s10, v67, v77, v67
	v_fma_f32 v78, -v86, v82, v78
	v_rcp_f32_e32 v86, v84
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v76, v80 :: v_dual_mul_f32 v76, v79, v81
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v77, v77, v61
	v_div_fmas_f32 v78, v78, v87, v82
	v_fma_f32 v82, -v89, v91, v83
	v_fma_f32 v83, -v85, v76, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v88, -v90, v93, 1.0
	v_div_fixup_f32 v73, v78, v77, v73
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v76, v83, v81
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s8, v64, v77, v64
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s11, v66, v77, v66
	v_fma_f32 v78, -v85, v76, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v89, v86
	v_div_fmas_f32 v80, v82, v80, v91
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v87, v88, v93
	v_rcp_f32_e32 v82, v92
	v_div_fmas_f32 v76, v78, v81, v76
	v_fma_f32 v81, -v84, v79, v89
	v_div_fixup_f32 v72, v80, v77, v72
	v_fma_f32 v83, -v90, v87, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v67, v76, v77, v67
	v_fmac_f32_e32 v79, v81, v86
	v_div_scale_f32 v85, s9, v61, v77, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v92, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v84, v79, v89
	v_div_scale_f32 v84, s10, v58, v77, v58
	v_fmac_f32_e32 v87, v83, v93
	v_div_scale_f32 v83, null, v77, v77, v58
	v_fmac_f32_e32 v82, v80, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v90, v87, v88
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v88, null, v77, v77, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v93, v87
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v76, v76, v86, v79
	v_div_scale_f32 v86, s8, v57, v77, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fixup_f32 v66, v78, v77, v66
	v_div_fixup_f32 v64, v76, v77, v64
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v77, v77, v56
	v_fma_f32 v89, -v88, v81, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, null, v77, v77, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v91, v86, v81
	v_fma_f32 v93, -v90, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v93, v79
	v_mul_f32_e32 v87, v85, v82
	v_div_scale_f32 v93, null, v77, v77, v42
	v_fma_f32 v78, -v92, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v87, v78, v82 :: v_dual_mul_f32 v78, v84, v80
	v_fma_f32 v76, -v92, v87, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v83, v78, v84
	v_rcp_f32_e32 v92, v89
	v_div_fmas_f32 v76, v76, v82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v85, v80
	v_fma_f32 v82, -v88, v91, v86
	v_div_scale_f32 v85, s9, v56, v77, v56
	v_div_fixup_f32 v61, v76, v77, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v83, v78, v84
	v_fma_f32 v87, -v89, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v82, v81 :: v_dual_mul_f32 v82, v85, v79
	v_div_scale_f32 v84, null, v77, v77, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v83, s11, v55, v77, v55
	v_div_fmas_f32 v76, v76, v80, v78
	v_fma_f32 v78, -v88, v91, v86
	v_fma_f32 v80, -v90, v82, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v77, v77, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v83, v92 :: v_dual_fmac_f32 v82, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v88
	v_div_fmas_f32 v78, v78, v81, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v89, v87, v83
	v_div_fixup_f32 v58, v76, v77, v58
	v_fma_f32 v91, -v84, v86, 1.0
	v_fma_f32 v76, -v90, v82, v85
	v_div_fixup_f32 v57, v78, v77, v57
	v_fmac_f32_e32 v87, v81, v92
	v_div_scale_f32 v78, s8, v50, v77, v50
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v81, -v88, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v77, v77, v47
	v_div_fmas_f32 v76, v76, v79, v82
	v_fma_f32 v79, -v89, v87, v83
	v_mul_f32_e32 v82, v78, v86
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v83, s9, v49, v77, v49
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v56, v76, v77, v56
	v_div_fmas_f32 v79, v79, v92, v87
	v_fma_f32 v87, -v84, v82, v78
	v_mul_f32_e32 v90, v83, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v89, null, v77, v77, v46
	v_fmac_f32_e32 v82, v87, v86
	v_fma_f32 v76, -v88, v90, v83
	v_div_scale_f32 v87, null, v77, v77, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v78, -v84, v82, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v90, v76, v80
	v_fma_f32 v91, -v85, v81, 1.0
	v_div_fixup_f32 v55, v79, v77, v55
	v_div_scale_f32 v79, s10, v47, v77, v47
	v_div_fmas_f32 v78, v78, v86, v82
	v_fma_f32 v82, -v88, v90, v83
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v50, v78, v77, v50
	v_div_fmas_f32 v80, v82, v80, v90
	v_rcp_f32_e32 v82, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v49, v80, v77, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v87, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v93, v82, 1.0
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v43, v77, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v82, v80, v82 :: v_dual_fmac_f32 v81, v91, v81
	v_fma_f32 v91, -v89, v92, 1.0
	v_mul_f32_e32 v76, v79, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v46, v77, v46
	v_fma_f32 v83, -v85, v76, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v91, v92
	v_fmac_f32_e32 v76, v83, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v89, v86, v91
	v_fma_f32 v78, -v85, v76, v79
	v_mul_f32_e32 v79, v88, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v83, v92
	v_div_scale_f32 v83, null, v69, v69, v41
	v_div_fmas_f32 v76, v78, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v87, v79, v88
	v_fma_f32 v78, -v89, v86, v91
	v_div_scale_f32 v89, null, v69, v69, v40
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v81, v84
	v_div_scale_f32 v85, s9, v42, v77, v42
	v_rcp_f32_e32 v81, v89
	v_div_fixup_f32 v47, v76, v77, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v87, v79, v88
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s10, v41, v69, v41
	v_fma_f32 v90, -v83, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v89, v81, 1.0
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v69, v69, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v88, v81
	v_div_fmas_f32 v78, v78, v92, v86
	v_mul_f32_e32 v86, v85, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v88, null, v69, v69, v38
	v_div_fixup_f32 v46, v78, v77, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v93, v86, v85
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v78, v82
	v_div_fmas_f32 v76, v76, v84, v79
	v_div_scale_f32 v84, s8, v40, v69, v40
	v_rcp_f32_e32 v79, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v43, v76, v77, v43
	v_fma_f32 v76, -v93, v86, v85
	v_mul_f32_e32 v91, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v82, v86
	v_fma_f32 v82, -v89, v91, v84
	v_mul_f32_e32 v78, v87, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v79, 1.0
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v42, v76, v77, v42
	v_fmac_f32_e32 v91, v82, v81
	v_fma_f32 v85, -v83, v78, v87
	v_fmac_f32_e32 v79, v93, v79
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v82, s11, v38, v69, v38
	v_fmac_f32_e32 v78, v85, v80
	v_div_scale_f32 v85, s9, v39, v69, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v82, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v83, v78, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v85, v79
	v_div_scale_f32 v87, null, v69, v69, v36
	v_div_scale_f32 v83, null, v69, v69, v37
	v_div_fmas_f32 v76, v76, v80, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v80, -v90, v77, v85
	v_fma_f32 v78, -v89, v91, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v83
	v_div_fixup_f32 v41, v76, v69, v41
	v_fmac_f32_e32 v77, v80, v79
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v78, v78, v81, v91
	v_fma_f32 v81, -v88, v86, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v90, v77, v85
	v_div_scale_f32 v85, null, v69, v69, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v81, v92
	v_fma_f32 v89, -v83, v84, 1.0
	v_div_fmas_f32 v76, v76, v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v87, v80, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v78, v69, v40
	v_div_scale_f32 v78, s8, v37, v69, v37
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v85
	v_div_fixup_f32 v39, v76, v69, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v85, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v90, v81
	v_fma_f32 v77, -v88, v86, v82
	v_div_scale_f32 v88, null, v69, v69, v34
	v_div_scale_f32 v82, s9, v36, v69, v36
	v_div_fmas_f32 v77, v77, v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v69, v69, v32
	v_div_fixup_f32 v38, v77, v69, v38
	v_div_scale_f32 v77, s10, v35, v69, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v91, 1.0
	v_fmac_f32_e32 v84, v89, v84
	v_mul_f32_e32 v89, v82, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v90, v91
	v_mul_f32_e32 v79, v78, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v87, v89, v82
	v_div_scale_f32 v90, s11, v34, v69, v34
	v_dual_fmac_f32 v89, v76, v80 :: v_dual_mul_f32 v76, v77, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v83, v79, v78
	v_fmac_f32_e32 v79, v86, v84
	v_div_scale_f32 v86, null, v69, v69, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v83, v79, v78
	v_rcp_f32_e32 v83, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v84, v79
	v_mul_f32_e32 v84, v90, v91
	v_fma_f32 v79, -v87, v89, v82
	v_fma_f32 v82, -v85, v76, v77
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v37, v78, v69, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v79, v80, v89
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v84, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v33, v69, v33
	v_fma_f32 v77, -v85, v76, v77
	v_fmac_f32_e32 v84, v82, v91
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v87, v83
	v_div_fixup_f32 v36, v79, v69, v36
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v84, v90
	v_div_scale_f32 v88, null, v69, v69, v30
	v_fma_f32 v81, -v86, v78, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v35, v76, v69, v35
	v_div_scale_f32 v82, null, v69, v69, v31
	v_fma_f32 v79, -v92, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v78, v81, v83
	v_rcp_f32_e32 v81, v88
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v32, v69, v32
	v_fma_f32 v76, -v86, v78, v87
	v_div_scale_f32 v86, s10, v31, v69, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v88, v81, 1.0
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, null, v69, v69, v28
	v_div_fmas_f32 v77, v77, v91, v84
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_fixup_f32 v34, v77, v69, v34
	v_div_fmas_f32 v76, v76, v83, v78
	v_div_scale_f32 v83, s8, v30, v69, v30
	v_mul_f32_e32 v84, v85, v80
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v33, v76, v69, v33
	v_mul_f32_e32 v90, v83, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v82, v79, 1.0
	v_fma_f32 v77, -v92, v84, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v69, v69, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v84, v77, v80 :: v_dual_mul_f32 v77, v86, v79
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v92, v84, v85
	v_fma_f32 v85, -v82, v77, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v85, v79
	v_fma_f32 v92, -v89, v78, 1.0
	v_fma_f32 v85, -v87, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v78, v92, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_fmas_f32 v76, v76, v80, v84
	v_fma_f32 v80, -v88, v90, v83
	v_div_scale_f32 v84, s9, v29, v69, v29
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v32, v76, v69, v32
	v_fma_f32 v76, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v82, s11, v28, v69, v28
	v_div_scale_f32 v85, null, v69, v69, v27
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v80, v84
	v_div_scale_f32 v88, null, v69, v69, v26
	v_rcp_f32_e32 v83, v85
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	v_rcp_f32_e32 v79, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v31, v76, v69, v31
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v87, v86, v82
	v_fma_f32 v76, -v89, v80, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v85, v83, 1.0
	v_div_fixup_f32 v30, v77, v69, v30
	v_fmac_f32_e32 v86, v81, v91
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v77, s8, v27, v69, v27
	v_fmac_f32_e32 v83, v90, v83
	v_div_fmas_f32 v76, v76, v78, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v44, v44, v25
	v_fma_f32 v78, -v87, v86, v82
	v_mul_f32_e32 v80, v77, v83
	v_div_scale_f32 v82, s9, v26, v69, v26
	v_rcp_f32_e32 v84, v81
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v44, v44, v24
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v85, v80, v77
	v_mul_f32_e32 v87, v82, v79
	v_div_fixup_f32 v29, v76, v69, v29
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v28, v78, v69, v28
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v76, -v88, v87, v82
	v_rcp_f32_e32 v78, v89
	v_fma_f32 v86, -v81, v84, 1.0
	v_div_scale_f32 v91, null, v44, v44, v22
	v_fma_f32 v77, -v85, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v76, v79 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v76, s10, v25, v44, v25
	v_div_fmas_f32 v77, v77, v83, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v89, v78, 1.0
	v_fma_f32 v80, -v88, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v76, v84
	v_div_scale_f32 v83, s8, v24, v44, v24
	v_fmac_f32_e32 v78, v90, v78
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v90, -v81, v82, v76
	v_div_fmas_f32 v79, v80, v79, v87
	v_div_fixup_f32 v27, v77, v69, v27
	v_mul_f32_e32 v92, v83, v78
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v90, v84
	v_div_fixup_f32 v26, v79, v69, v26
	v_div_scale_f32 v85, null, v44, v44, v23
	v_fma_f32 v80, -v89, v92, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v81, v82, v76
	v_rcp_f32_e32 v93, v91
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v79, null, v44, v44, v21
	v_fmac_f32_e32 v92, v80, v78
	v_div_fmas_f32 v69, v69, v84, v82
	v_div_scale_f32 v82, null, v44, v44, v20
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v89, v92, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v77, -v91, v93, 1.0
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v88, -v85, v86, 1.0
	v_div_fixup_f32 v25, v69, v44, v25
	v_div_fmas_f32 v78, v80, v78, v92
	v_fmac_f32_e32 v93, v77, v93
	v_div_scale_f32 v77, s9, v22, v44, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v24, v78, v44, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v82, v84, 1.0
	v_mul_f32_e32 v81, v77, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v78, v84
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s11, v23, v44, v23
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v78, s10, v20, v44, v20
	v_mul_f32_e32 v87, v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v85, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v76, v86
	v_rcp_f32_e32 v76, v79
	v_fma_f32 v80, -v85, v87, v88
	v_fma_f32 v85, -v91, v81, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v80, v86, v87
	v_fma_f32 v83, -v79, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v85, v93
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v23, v80, v44, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v83, v76
	v_div_scale_f32 v83, s8, v21, v44, v21
	v_fma_f32 v77, -v91, v81, v77
	v_div_scale_f32 v80, null, v44, v44, v19
	v_mul_f32_e32 v69, v83, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v93, v81
	v_rcp_f32_e32 v86, v80
	v_mul_f32_e32 v81, v78, v84
	v_fma_f32 v85, -v79, v69, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v77, v44, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v85, v76
	v_div_scale_f32 v85, null, v44, v44, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v79, v69, v83
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v79, -v82, v81, v78
	v_fma_f32 v83, -v80, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v69, v77, v76, v69
	v_div_scale_f32 v77, s8, v19, v44, v19
	v_fmac_f32_e32 v81, v79, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v83, v86
	v_div_fixup_f32 v21, v69, v44, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v78, -v82, v81, v78
	v_mul_f32_e32 v82, v77, v86
	v_div_scale_f32 v76, null, v44, v44, v17
	v_fmac_f32_e32 v87, v69, v87
	v_div_scale_f32 v69, s9, v18, v44, v18
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v80, v82, v77
	v_rcp_f32_e32 v79, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v69, v87
	v_div_scale_f32 v83, null, v44, v44, v16
	v_fmac_f32_e32 v82, v81, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v85, v84, v69
	v_rcp_f32_e32 v89, v83
	v_div_scale_f32 v90, s10, v17, v44, v17
	v_fma_f32 v77, -v80, v82, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v88, -v76, v79, 1.0
	v_div_fixup_f32 v20, v78, v44, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v86, v82
	v_fma_f32 v69, -v85, v84, v69
	v_div_scale_f32 v82, null, v44, v44, v6
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v44, v44, v13
	v_div_fmas_f32 v69, v69, v87, v84
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v91, -v83, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v92, v88
	v_mul_f32_e32 v93, v90, v79
	v_div_fixup_f32 v19, v77, v44, v19
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v16, v44, v16
	v_fma_f32 v78, -v76, v93, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v77, -v82, v84, 1.0
	v_div_scale_f32 v86, null, v44, v44, v4
	v_fma_f32 v81, -v88, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v93, v78, v79 :: v_dual_fmac_f32 v84, v77, v84
	v_mul_f32_e32 v80, v91, v89
	v_div_fixup_f32 v18, v69, v44, v18
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s8, v13, v44, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v83, v80, v91
	v_fma_f32 v76, -v76, v93, v90
	v_div_scale_f32 v77, null, v44, v44, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v78, v89
	v_mul_f32_e32 v78, v81, v92
	v_div_fmas_f32 v76, v76, v79, v93
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	v_div_fixup_f32 v17, v76, v44, v17
	v_div_scale_f32 v76, null, v44, v44, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v89, v80
	v_fmac_f32_e32 v78, v83, v92
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v79, v44, v16
	v_fma_f32 v69, -v88, v78, v81
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v79, null, v44, v44, v7
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v92, v78
	v_rcp_f32_e32 v78, v76
	v_div_scale_f32 v80, vcc_lo, v6, v44, v6
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v13, v69, v44, v13
	v_fma_f32 v92, -v86, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v85, v80, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v77, v81, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v76, v78, 1.0
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s11, v4, v44, v4
	v_fma_f32 v89, -v82, v85, v80
	v_fma_f32 v90, -v79, v83, 1.0
	v_fmac_f32_e32 v81, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v92, v88 :: v_dual_fmac_f32 v78, v69, v78
	v_div_scale_f32 v69, s8, v9, v44, v9
	v_fmac_f32_e32 v85, v89, v84
	v_div_scale_f32 v87, s9, v8, v44, v8
	v_mul_f32_e32 v91, v69, v78
	v_fmac_f32_e32 v83, v90, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v82, v85, v80
	v_div_scale_f32 v90, s10, v7, v44, v7
	v_fma_f32 v89, -v76, v91, v69
	v_mul_f32_e32 v93, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v84, v85
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v94, v90, v83 :: v_dual_fmac_f32 v91, v89, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v77, v93, v87
	s_mov_b32 s8, 0xc1000000
	v_div_fixup_f32 v6, v80, v44, v6
	v_fma_f32 v89, -v79, v94, v90
	v_fma_f32 v69, -v76, v91, v69
	v_fma_f32 v76, -v86, v95, v92
	v_fmac_f32_e32 v93, v82, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v76, v88
	v_div_fmas_f32 v69, v69, v78, v91
	v_fma_f32 v77, -v77, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v78, -v86, v95, v92
	v_div_fixup_f32 v9, v69, v44, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v77, v44, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v25, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v79, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v83, v94
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v88, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v76, v44, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v40
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v78, v44, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v74, v42
	v_and_b32_e32 v29, 15, v72
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v104, v7
	v_and_b32_e32 v7, 15, v45
	v_and_b32_e32 v45, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v76, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v70, 10, v0
	v_lshlrev_b32_e32 v72, 4, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v75, v41
	v_cvt_i32_f32_e32 v88, v28
	v_and_b32_e32 v28, 15, v73
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v73, 0x1800, v70
	v_lshlrev_b32_e32 v74, 6, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v72, v15
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v78, v38
	v_cvt_i32_f32_e32 v92, v24
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v101, v6
	v_cvt_i32_f32_e32 v4, v4
	v_and_b32_e32 v6, 15, v44
	v_and_b32_e32 v44, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v75, 0, v73, v74
	v_and_or_b32 v11, 0x1b00, v15, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v95, v21
	v_cvt_i32_f32_e32 v96, v20
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v98, v18
	v_cvt_i32_f32_e32 v102, v9
	v_cvt_i32_f32_e32 v103, v8
	v_and_b32_e32 v8, 15, v48
	v_and_b32_e32 v9, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v19, 15, v59
	v_and_b32_e32 v20, 15, v60
	v_and_b32_e32 v21, 15, v62
	v_and_b32_e32 v22, 15, v63
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v31, 15, v66
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v61
	v_and_b32_e32 v34, 15, v58
	v_and_b32_e32 v35, 15, v57
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v46
	v_and_b32_e32 v46, 15, v77
	v_and_b32_e32 v47, 15, v78
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v63, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v75, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v110, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v37
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v89, v27
	v_and_b32_e32 v23, 15, v65
	v_and_b32_e32 v24, 15, v68
	v_and_b32_e32 v36, 15, v56
	v_and_b32_e32 v37, 15, v55
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v68, 15, v99
	v_and_b32_e32 v69, 15, v100
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v71, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[6:9]
	ds_store_b128 v12, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[28:31]
	ds_store_b128 v12, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[44:47]
	ds_store_b128 v12, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[60:63]
	ds_store_b128 v12, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[68:71], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[24:27], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[32:35]
	ds_store_b128 v12, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v4
	ds_load_b128 v[40:43], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v79
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v66, 15, v97
	v_and_b32_e32 v67, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[48:51]
	ds_store_b128 v12, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v4
	ds_load_b128 v[56:59], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v74, 15, v104
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v107
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v22, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s24, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[64:67]
	ds_store_b128 v12, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v4
	ds_load_b128 v[72:75], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s31, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v20, 4, v6
	v_lshl_or_b32 v7, v21, 4, v7
	v_lshl_or_b32 v19, v23, 4, v9
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v16.l
	v_and_b16 v7.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v36, 4, v28
	v_lshl_or_b32 v21, v37, 4, v29
	v_lshl_or_b32 v22, v38, 4, v30
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v52, 4, v44
	v_lshl_or_b32 v29, v53, 4, v45
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v44, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v68, 4, v60
	v_lshl_or_b32 v37, v69, 4, v61
	v_lshl_or_b32 v38, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v76
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s35
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16540
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
