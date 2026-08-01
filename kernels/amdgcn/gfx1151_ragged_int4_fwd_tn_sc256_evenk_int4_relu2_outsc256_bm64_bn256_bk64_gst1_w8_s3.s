	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
	v_dual_mov_b32 v105, v0 :: v_dual_mov_b32 v4, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v105
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s24, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s2
	v_add_nc_u32_e32 v65, s24, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v104, 15, v105
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v106, 0xf0, v105
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s24, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v14, s31, 8, v105
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	s_clause 0x1
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s34, s[0:1], 0x50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s21, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[0:1]
	v_dual_mov_b32 v13, v14 :: v_dual_add_nc_u32 v0, s24, v104
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[2:3]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s30
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v11, 2, v106
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v12, 1, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[4:5]
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s20, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s30
	v_mad_u64_u32 v[187:188], null, s20, s21, v[14:15]
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v12, 28, v12
	v_mov_b32_e32 v117, 0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[4:5]
	v_cmp_gt_i64_e64 s7, s[26:27], v[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:276
	scratch_store_b32 off, v105, off offset:304
	v_mul_lo_u32 v0, v2, s30
	v_lshrrev_b32_e32 v2, 1, v105
	scratch_store_b32 off, v104, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v104, 0, v104
	v_mad_u64_u32 v[72:73], null, s33, 5, v[187:188]
	v_and_b32_e32 v2, 0x70, v2
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mad_u64_u32 v[73:74], null, s33, 7, v[187:188]
	v_mad_u64_u32 v[74:75], null, s33, 10, v[187:188]
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v125, v104, v2
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v2, 5, v105
	v_mad_u64_u32 v[75:76], null, s33, 11, v[187:188]
	v_mul_lo_u32 v0, v3, s30
	v_mad_u64_u32 v[76:77], null, s33, 12, v[187:188]
	v_mad_u64_u32 v[77:78], null, s33, 13, v[187:188]
	v_mad_u64_u32 v[78:79], null, s33, 14, v[187:188]
	v_or_b32_e32 v3, 0x3f0, v105
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v2, 32, v2
	v_mad_u64_u32 v[79:80], null, s33, 15, v[187:188]
	v_mad_u64_u32 v[80:81], null, s33, 17, v[187:188]
	v_mad_u64_u32 v[81:82], null, s33, 18, v[187:188]
	v_mad_u64_u32 v[82:83], null, s33, 19, v[187:188]
	v_mad_u64_u32 v[83:84], null, s33, 20, v[187:188]
	v_add3_u32 v2, 0, v11, v2
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v183, 0, v3
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:284
	scratch_store_b32 off, v106, off offset:312
	v_or_b32_e32 v0, 0x300, v105
	v_mad_u64_u32 v[84:85], null, s33, 21, v[187:188]
	v_mad_u64_u32 v[85:86], null, s33, 22, v[187:188]
	v_mad_u64_u32 v[86:87], null, s33, 23, v[187:188]
	v_mad_u64_u32 v[87:88], null, s33, 24, v[187:188]
	v_mad_u64_u32 v[88:89], null, s33, 25, v[187:188]
	v_or_b32_e32 v1, 0x700, v105
	v_or_b32_e32 v4, 0x7f0, v105
	v_or_b32_e32 v5, 0xb00, v105
	v_or_b32_e32 v6, 0xf00, v105
	v_or_b32_e32 v7, 0x1300, v105
	v_or_b32_e32 v8, 0x1700, v105
	v_or_b32_e32 v9, 0x1b00, v105
	v_or_b32_e32 v10, 0x1f00, v105
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v11, 1, v106
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v99, 0, v0
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v0, v2, v12
	v_mad_u64_u32 v[89:90], null, s33, 26, v[187:188]
	v_mad_u64_u32 v[130:131], null, s33, 29, v[187:188]
	v_mad_u64_u32 v[126:127], null, s33, 6, v[187:188]
	v_mad_u64_u32 v[90:91], null, s33, 27, v[187:188]
	v_mad_u64_u32 v[131:132], null, s33, 30, v[187:188]
	v_mad_u64_u32 v[123:124], null, s33, 3, v[187:188]
	v_mad_u64_u32 v[127:128], null, s33, 9, v[187:188]
	v_mad_u64_u32 v[91:92], null, s33, 28, v[187:188]
	v_mad_u64_u32 v[132:133], null, s33, 31, v[187:188]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v129, 6, v105
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[13:14], off offset:288
	scratch_store_b32 off, v0, off offset:296
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v156, 0, v105
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v93, 0, v1
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v168, 0, v4
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v151, 0, v5
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v152, 0, v6
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v153, 0, v7
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v68, 0, v8
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v69, 0, v9
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v154, 0, v10
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v54, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s3, s7
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s35, s30, s21
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s36, 0
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
	.loc	1 1135 19 is_stmt 0             ; ragged.py:1135:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:300
	scratch_store_b32 off, v183, off offset:12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19                          ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v122, off offset:268
	scratch_store_b32 off, v121, off offset:264
	scratch_store_b32 off, v120, off offset:260
	scratch_store_b32 off, v119, off offset:256
	scratch_store_b32 off, v118, off offset:252
	scratch_store_b32 off, v117, off offset:248
	scratch_store_b32 off, v116, off offset:244
	scratch_store_b32 off, v71, off offset:240
	scratch_store_b32 off, v70, off offset:236
	scratch_store_b32 off, v115, off offset:232
	scratch_store_b32 off, v114, off offset:228
	scratch_store_b32 off, v110, off offset:224
	scratch_store_b32 off, v109, off offset:220
	scratch_store_b32 off, v108, off offset:216
	scratch_store_b32 off, v107, off offset:212
	scratch_store_b32 off, v106, off offset:208
	scratch_store_b32 off, v16, off offset:204
	scratch_store_b32 off, v17, off offset:200
	scratch_store_b32 off, v18, off offset:196
	scratch_store_b32 off, v19, off offset:192
	scratch_store_b32 off, v20, off offset:188
	scratch_store_b32 off, v21, off offset:184
	scratch_store_b32 off, v22, off offset:180
	scratch_store_b32 off, v23, off offset:176
	scratch_store_b32 off, v24, off offset:172
	scratch_store_b32 off, v25, off offset:168
	scratch_store_b32 off, v26, off offset:164
	scratch_store_b32 off, v27, off offset:160
	scratch_store_b32 off, v28, off offset:156
	scratch_store_b32 off, v29, off offset:152
	scratch_store_b32 off, v30, off offset:148
	scratch_store_b32 off, v31, off offset:144
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v32, off offset:140
	scratch_store_b32 off, v33, off offset:136
	scratch_store_b32 off, v34, off offset:132
	scratch_store_b32 off, v35, off offset:128
	scratch_store_b32 off, v36, off offset:124
	scratch_store_b32 off, v37, off offset:120
	scratch_store_b32 off, v38, off offset:116
	scratch_store_b32 off, v105, off offset:112
	scratch_store_b32 off, v103, off offset:108
	scratch_store_b32 off, v39, off offset:104
	scratch_store_b32 off, v40, off offset:100
	scratch_store_b32 off, v41, off offset:96
	scratch_store_b32 off, v55, off offset:92
	scratch_store_b32 off, v102, off offset:88
	scratch_store_b32 off, v54, off offset:84
	scratch_store_b32 off, v101, off offset:80
	scratch_store_b32 off, v53, off offset:76
	scratch_store_b32 off, v100, off offset:72
	scratch_store_b32 off, v98, off offset:68
	scratch_store_b32 off, v97, off offset:64
	scratch_store_b32 off, v96, off offset:60
	scratch_store_b32 off, v95, off offset:56
	scratch_store_b32 off, v66, off offset:52
	scratch_store_b32 off, v52, off offset:48
	scratch_store_b32 off, v51, off offset:44
	scratch_store_b32 off, v49, off offset:40
	scratch_store_b32 off, v48, off offset:36
	scratch_store_b32 off, v47, off offset:32
	scratch_store_b32 off, v46, off offset:28
	scratch_store_b32 off, v45, off offset:24
	scratch_store_b32 off, v44, off offset:20
	scratch_store_b32 off, v42, off offset:16
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s36, 7
	s_mov_b32 s15, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s37, s15, s14
	v_mov_b32_e32 v103, v90
	v_or_b32_e32 v0, s37, v129
	v_mov_b32_e32 v67, v129
	v_mov_b32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v0, s34, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v129
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s37, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v94, s2
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v66, s34, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 8, v129
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v96, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 12, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v97, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 16, v129
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v100, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 20, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v101, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 24, v129
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v102, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 28, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s37, v94
	.loc	1 1153 59                       ; ragged.py:1153:59
	s_mul_i32 s37, s37, s33
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s34, v[65:66]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v95, s37, v187
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v137, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s33, v187
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s37, v95
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v138, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s33, 1, v187
	v_add_nc_u32_e32 v95, s37, v95
	buffer_load_u8 v139, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v123
	buffer_load_u8 v135, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s33, 2, v187
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s37, v95
	buffer_load_u8 v143, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v72
	buffer_load_u8 v144, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v126
	buffer_load_u8 v145, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v73
	buffer_load_u8 v136, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s33, 3, v187
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s37, v95
	buffer_load_u8 v149, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v127
	buffer_load_u8 v150, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v74
	buffer_load_u8 v170, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v75
	buffer_load_u8 v142, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v76
	buffer_load_u8 v172, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v77
	buffer_load_u8 v70, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v78
	buffer_load_u8 v71, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v79
	buffer_load_u8 v148, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s33, 4, v187
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s37, v95
	buffer_load_u8 v155, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v80
	buffer_load_u8 v157, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v81
	buffer_load_u8 v159, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v82
	buffer_load_u8 v161, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v83
	buffer_load_u8 v163, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v84
	buffer_load_u8 v165, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v85
	buffer_load_u8 v171, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v86
	buffer_load_u8 v173, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v87
	buffer_load_u8 v175, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v88
	buffer_load_u8 v177, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v89
	v_dual_mov_b32 v89, v86 :: v_dual_mov_b32 v86, v79
	v_dual_mov_b32 v79, v76 :: v_dual_mov_b32 v76, v123
	buffer_load_u8 v178, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v90
	v_dual_mov_b32 v90, v83 :: v_dual_mov_b32 v83, v80
	v_dual_mov_b32 v80, v73 :: v_dual_mov_b32 v73, v127
	buffer_load_u8 v179, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v91
	buffer_load_u8 v180, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v130
	buffer_load_u8 v181, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v131
	buffer_load_u8 v182, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s37, v132
	buffer_load_u8 v98, v95, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v66, v66, s[20:23], 0 offen
	buffer_load_u8 v95, v96, s[20:23], 0 offen
	buffer_load_u8 v96, v100, s[20:23], 0 offen
	buffer_load_u8 v100, v101, s[20:23], 0 offen
	buffer_load_u8 v101, v102, s[20:23], 0 offen
	buffer_load_u8 v94, v94, s[20:23], 0 offen
	buffer_load_u8 v97, v97, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v102, v87 :: v_dual_mov_b32 v87, v84
	v_dual_mov_b32 v84, v77 :: v_dual_mov_b32 v77, v74
	v_mov_b32_e32 v74, v130
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s37, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s37
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v156, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v156, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v156, v95 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v156, v96 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v156, v100 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v99, v97
	ds_store_b8 v156, v101 offset:1536
	ds_store_b8 v93, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v104 offset:320
	ds_load_u8 v66, v104 offset:256
	ds_load_u8 v140, v104 offset:336
	ds_load_u8 v141, v104 offset:272
	v_mov_b32_e32 v101, v91
	v_dual_mov_b32 v91, v88 :: v_dual_mov_b32 v88, v81
	v_mov_b32_e32 v81, v78
	v_mov_b32_e32 v78, v126
	ds_load_u8 v129, v104 offset:480
	v_dual_mov_b32 v100, v85 :: v_dual_mov_b32 v85, v82
	v_dual_mov_b32 v82, v75 :: v_dual_mov_b32 v75, v72
	ds_load_u8 v127, v104 offset:352
	ds_load_u8 v128, v104 offset:288
	ds_load_u8 v116, v104 offset:368
	ds_load_u8 v117, v104 offset:304
	ds_load_u8 v130, v104 offset:416
	ds_load_u8 v120, v104 offset:496
	ds_load_u8 v121, v104 offset:432
	v_mov_b32_e32 v72, v132
	ds_load_u8 v132, v104 offset:96
	ds_load_u8 v122, v104 offset:112
	ds_load_u8 v164, v104 offset:16
	ds_load_u8 v185, v104 offset:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v104 offset:448
	ds_load_u8 v94, v104 offset:384
	ds_load_u8 v146, v104 offset:464
	ds_load_u8 v147, v104 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v94, v66, 0xc0c0004
	ds_load_u8 v94, v104 offset:64
	ds_load_u8 v95, v104
	ds_load_u8 v162, v104 offset:80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:192
	ds_load_u8 v96, v104 offset:128
	ds_load_u8 v166, v104 offset:208
	ds_load_u8 v167, v104 offset:144
	ds_load_u8 v133, v104 offset:224
	ds_load_u8 v134, v104 offset:160
	ds_load_u8 v124, v104 offset:240
	ds_load_u8 v126, v104 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	v_lshl_or_b32 v95, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v110, v104 offset:960
	ds_load_u8 v111, v104 offset:896
	ds_load_u8 v239, v104 offset:1024
	ds_load_u8 v246, v104 offset:976
	ds_load_u8 v247, v104 offset:912
	ds_load_u8 v241, v104 offset:992
	ds_load_u8 v242, v104 offset:928
	ds_load_u8 v240, v104 offset:944
	ds_load_u8 v112, v104 offset:832
	ds_load_u8 v113, v104 offset:768
	ds_load_u8 v253, v104 offset:848
	ds_load_u8 v255, v104 offset:784
	ds_load_u8 v249, v104 offset:864
	ds_load_u8 v250, v104 offset:800
	ds_load_u8 v243, v104 offset:880
	ds_load_u8 v244, v104 offset:816
	ds_load_u8 v114, v104 offset:704
	ds_load_u8 v115, v104 offset:640
	ds_load_u8 v0, v104 offset:720
	ds_load_u8 v160, v104 offset:656
	ds_load_u8 v97, v104 offset:736
	ds_load_u8 v158, v104 offset:672
	ds_load_u8 v251, v104 offset:752
	ds_load_u8 v254, v104 offset:688
	ds_load_u8 v118, v104 offset:576
	ds_load_u8 v119, v104 offset:512
	ds_load_u8 v105, v104 offset:592
	ds_load_u8 v106, v104 offset:528
	ds_load_u8 v174, v104 offset:608
	ds_load_u8 v176, v104 offset:544
	ds_load_u8 v186, v104 offset:624
	ds_load_u8 v184, v104 offset:560
	ds_load_u8 v245, v104 offset:1216
	ds_load_u8 v248, v104 offset:1280
	ds_load_u8 v212, v104 offset:1232
	ds_load_u8 v213, v104 offset:1168
	ds_load_u8 v210, v104 offset:1248
	ds_load_u8 v211, v104 offset:1184
	ds_load_u8 v208, v104 offset:1264
	ds_load_u8 v209, v104 offset:1200
	ds_load_u8 v252, v104 offset:1152
	ds_load_u8 v96, v104 offset:1088
	ds_load_u8 v219, v104 offset:1104
	ds_load_u8 v220, v104 offset:1040
	ds_load_u8 v217, v104 offset:1120
	ds_load_u8 v218, v104 offset:1056
	ds_load_u8 v214, v104 offset:1136
	ds_load_u8 v215, v104 offset:1072
	ds_load_u8 v66, v104 offset:1472
	ds_load_u8 v207, v104 offset:1536
	ds_load_u8 v227, v104 offset:1488
	ds_load_u8 v229, v104 offset:1424
	ds_load_u8 v224, v104 offset:1504
	ds_load_u8 v226, v104 offset:1440
	ds_load_u8 v221, v104 offset:1520
	ds_load_u8 v222, v104 offset:1456
	ds_load_u8 v107, v104 offset:1408
	ds_load_u8 v108, v104 offset:1344
	ds_load_u8 v236, v104 offset:1360
	ds_load_u8 v237, v104 offset:1296
	ds_load_u8 v233, v104 offset:1376
	ds_load_u8 v234, v104 offset:1312
	ds_load_u8 v230, v104 offset:1392
	ds_load_u8 v231, v104 offset:1328
	ds_load_u8 v216, v104 offset:1984
	ds_load_u8 v169, v104 offset:2000
	ds_load_u8 v189, v104 offset:1936
	ds_load_u8 v109, v104 offset:2016
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v0, v160, v0, 0xc0c0004
	v_perm_b32 v97, v158, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v105, v0, 16, v105
	v_perm_b32 v0, v250, v249, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v66, v107, v66, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v109, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v109, v104 offset:1952
	ds_load_u8 v123, v104 offset:48
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v109, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v109, v183
	ds_load_u8 v183, v168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v183, off        ; 4-byte Folded Spill
	ds_load_u8 v188, v104 offset:1968
	ds_load_u8 v223, v104 offset:1920
	ds_load_u8 v225, v104 offset:1856
	ds_load_u8 v194, v104 offset:1872
	ds_load_u8 v196, v104 offset:1808
	ds_load_u8 v191, v104 offset:1888
	ds_load_u8 v192, v104 offset:1824
	ds_load_u8 v183, v104 offset:1904
	ds_load_u8 v190, v104 offset:1840
	ds_load_u8 v228, v104 offset:1728
	ds_load_u8 v232, v104 offset:1792
	ds_load_u8 v199, v104 offset:1744
	ds_load_u8 v200, v104 offset:1680
	ds_load_u8 v197, v104 offset:1760
	ds_load_u8 v198, v104 offset:1696
	ds_load_u8 v193, v104 offset:1776
	ds_load_u8 v195, v104 offset:1712
	ds_load_u8 v235, v104 offset:1664
	ds_load_u8 v238, v104 offset:1600
	ds_load_u8 v205, v104 offset:1616
	ds_load_u8 v206, v104 offset:1552
	ds_load_u8 v203, v104 offset:1632
	ds_load_u8 v204, v104 offset:1568
	ds_load_u8 v201, v104 offset:1648
	ds_load_u8 v202, v104 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v156, v137
	ds_store_b8 v156, v138 offset:256
	ds_store_b8 v156, v139 offset:512
	ds_store_b8 v156, v143 offset:1024
	ds_store_b8 v156, v144 offset:1280
	ds_store_b8 v156, v145 offset:1536
	ds_store_b8 v156, v149 offset:2048
	ds_store_b8 v156, v150 offset:2304
	ds_store_b8 v156, v170 offset:2560
	ds_store_b8 v156, v172 offset:3072
	ds_store_b8 v156, v70 offset:3328
	ds_store_b8 v156, v71 offset:3584
	ds_store_b8 v156, v155 offset:4096
	ds_store_b8 v156, v157 offset:4352
	ds_store_b8 v156, v159 offset:4608
	ds_store_b8 v156, v163 offset:5120
	ds_store_b8 v156, v165 offset:5376
	ds_store_b8 v156, v171 offset:5632
	ds_store_b8 v156, v175 offset:6144
	ds_store_b8 v156, v177 offset:6400
	ds_store_b8 v156, v178 offset:6656
	ds_store_b8 v156, v180 offset:7168
	ds_store_b8 v156, v181 offset:7424
	ds_store_b8 v156, v182 offset:7680
	ds_store_b8 v99, v135
	ds_store_b8 v93, v136
	ds_store_b8 v151, v142
	ds_store_b8 v152, v148
	ds_store_b8 v153, v161
	ds_store_b8 v68, v173
	ds_store_b8 v69, v179
	ds_store_b8 v154, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v98, v125 offset:1280
	ds_load_u8 v135, v125 offset:1024
	ds_load_u8 v137, v125 offset:1920
	ds_load_u8 v138, v125 offset:1664
	ds_load_u8 v139, v125 offset:1408
	ds_load_u8 v142, v125 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v135, v98, 0xc0c0004
	ds_load_u8 v135, v125 offset:1792
	ds_load_u8 v136, v125 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v125 offset:256
	ds_load_u8 v143, v125
	ds_load_u8 v144, v125 offset:896
	ds_load_u8 v145, v125 offset:640
	ds_load_u8 v148, v125 offset:384
	ds_load_u8 v149, v125 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v143, v136, 0xc0c0004
	ds_load_u8 v136, v125 offset:768
	ds_load_u8 v150, v125 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v136, 0xc0c0004
	v_lshl_or_b32 v136, v135, 16, v98
	v_perm_b32 v98, v142, v139, 0xc0c0004
	v_perm_b32 v139, v149, v148, 0xc0c0004
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_lshl_or_b32 v135, v150, 16, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v138, v137, 16, v98
	v_perm_b32 v98, v141, v140, 0xc0c0004
	v_lshl_or_b32 v137, v142, 16, v139
	v_perm_b32 v139, v147, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v141, v164, v162, 0xc0c0004
	v_perm_b32 v142, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v98
	v_perm_b32 v98, v128, v127, 0xc0c0004
	v_perm_b32 v127, v130, v129, 0xc0c0004
	v_perm_b32 v94, v113, v112, 0xc0c0004
	v_perm_b32 v95, v111, v110, 0xc0c0004
	v_perm_b32 v110, v115, v114, 0xc0c0004
	v_perm_b32 v129, v185, v132, 0xc0c0004
	v_lshl_or_b32 v128, v127, 16, v98
	v_perm_b32 v98, v117, v116, 0xc0c0004
	v_perm_b32 v116, v121, v120, 0xc0c0004
	v_lshl_or_b32 v95, v95, 16, v94
	v_perm_b32 v120, v123, v122, 0xc0c0004
	v_perm_b32 v121, v126, v124, 0xc0c0004
	v_perm_b32 v130, v134, v133, 0xc0c0004
	v_lshl_or_b32 v117, v116, 16, v98
	v_perm_b32 v98, v119, v118, 0xc0c0004
	v_mov_b32_e32 v132, v72
	v_lshl_or_b32 v116, v121, 16, v120
	v_lshl_or_b32 v127, v130, 16, v129
	v_mov_b32_e32 v126, v78
	v_lshl_or_b32 v94, v110, 16, v98
	ds_load_u8 v98, v125 offset:3328
	ds_load_u8 v110, v125 offset:3072
	ds_load_u8 v112, v125 offset:3968
	ds_load_u8 v113, v125 offset:3712
	ds_load_u8 v114, v125 offset:3456
	ds_load_u8 v115, v125 offset:3200
	v_wmma_i32_16x16x16_iu4 v[49:56], v[135:136], v[116:117], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[137:138], v[116:117], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[135:136], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[137:138], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_dual_mov_b32 v127, v73 :: v_dual_mov_b32 v72, v75
	v_mov_b32_e32 v73, v80
	v_dual_mov_b32 v75, v82 :: v_dual_mov_b32 v78, v81
	v_dual_mov_b32 v80, v83 :: v_dual_mov_b32 v81, v88
	v_dual_mov_b32 v82, v85 :: v_dual_mov_b32 v83, v90
	v_dual_mov_b32 v85, v100 :: v_dual_mov_b32 v88, v91
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v110, v98, 0xc0c0004
	ds_load_u8 v110, v125 offset:3840
	ds_load_u8 v111, v125 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_dual_mov_b32 v90, v103 :: v_dual_mov_b32 v91, v101
	v_perm_b32 v103, v240, v109, 0xc0c0004
	v_mov_b32_e32 v130, v74
	v_dual_mov_b32 v74, v77 :: v_dual_mov_b32 v77, v84
	v_dual_mov_b32 v84, v87 :: v_dual_mov_b32 v87, v102
	v_lshl_or_b32 v139, v142, 16, v141
	v_mov_b32_e32 v129, v67
	v_dual_mov_b32 v123, v76 :: v_dual_mov_b32 v76, v79
	v_mov_b32_e32 v79, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_dual_mov_b32 v86, v89 :: v_dual_mov_b32 v89, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v125 offset:2304
	ds_load_u8 v116, v125 offset:2048
	ds_load_u8 v117, v125 offset:2944
	ds_load_u8 v118, v125 offset:2688
	ds_load_u8 v119, v125 offset:2432
	ds_load_u8 v120, v125 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v116, v111, 0xc0c0004
	ds_load_u8 v111, v125 offset:2816
	ds_load_u8 v121, v125 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v111, 0xc0c0004
	v_lshl_or_b32 v111, v110, 16, v98
	v_perm_b32 v98, v115, v114, 0xc0c0004
	v_perm_b32 v114, v120, v119, 0xc0c0004
	v_perm_b32 v115, v118, v117, 0xc0c0004
	v_lshl_or_b32 v110, v121, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v113, v112, 16, v98
	v_perm_b32 v98, v255, v253, 0xc0c0004
	v_lshl_or_b32 v112, v115, 16, v114
	v_perm_b32 v114, v247, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v114, 16, v98
	v_perm_b32 v98, v242, v241, 0xc0c0004
	v_perm_b32 v114, v176, v174, 0xc0c0004
	v_perm_b32 v94, v239, v96, 0xc0c0004
	v_perm_b32 v96, v252, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v98, 16, v0
	v_lshl_or_b32 v100, v97, 16, v114
	v_perm_b32 v0, v184, v186, 0xc0c0004
	v_perm_b32 v97, v254, v251, 0xc0c0004
	v_perm_b32 v98, v244, v243, 0xc0c0004
	v_lshl_or_b32 v94, v96, 16, v94
	v_wmma_i32_16x16x16_iu4 v[33:40], v[110:111], v[100:101], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v97, 16, v0
	v_lshl_or_b32 v103, v103, 16, v98
	v_perm_b32 v0, v248, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[105:106], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[110:111], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[102:103], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v66, 16, v0
	ds_load_u8 v0, v125 offset:5376
	ds_load_u8 v66, v125 offset:5120
	ds_load_u8 v98, v125 offset:6016
	ds_load_u8 v100, v125 offset:5760
	ds_load_u8 v101, v125 offset:5504
	ds_load_u8 v102, v125 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v125 offset:5888
	ds_load_u8 v96, v125 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v96, v66, 0xc0c0004
	ds_load_u8 v96, v125 offset:4352
	ds_load_u8 v97, v125 offset:4096
	ds_load_u8 v103, v125 offset:4992
	ds_load_u8 v105, v125 offset:4736
	ds_load_u8 v106, v125 offset:4480
	ds_load_u8 v107, v125 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v125 offset:4864
	ds_load_u8 v108, v125 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v97, 0xc0c0004
	v_lshl_or_b32 v97, v66, 16, v0
	v_perm_b32 v0, v102, v101, 0xc0c0004
	v_perm_b32 v66, v100, v98, 0xc0c0004
	v_perm_b32 v98, v107, v106, 0xc0c0004
	v_perm_b32 v100, v105, v103, 0xc0c0004
	v_perm_b32 v102, v213, v212, 0xc0c0004
	v_perm_b32 v105, v211, v210, 0xc0c0004
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v237, v236, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v98
	v_perm_b32 v66, v229, v227, 0xc0c0004
	v_perm_b32 v98, v220, v219, 0xc0c0004
	v_perm_b32 v107, v209, v208, 0xc0c0004
	v_lshl_or_b32 v96, v108, 16, v96
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_lshl_or_b32 v102, v102, 16, v98
	v_perm_b32 v0, v234, v233, 0xc0c0004
	v_perm_b32 v66, v226, v224, 0xc0c0004
	v_perm_b32 v98, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v66, 16, v0
	v_lshl_or_b32 v105, v105, 16, v98
	v_perm_b32 v0, v231, v230, 0xc0c0004
	v_perm_b32 v66, v222, v221, 0xc0c0004
	v_perm_b32 v98, v215, v214, 0xc0c0004
	v_perm_b32 v94, v207, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v66, 16, v0
	v_lshl_or_b32 v107, v107, 16, v98
	v_perm_b32 v0, v232, v225, 0xc0c0004
	v_perm_b32 v66, v223, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v66, 16, v0
	ds_load_u8 v0, v125 offset:7424
	ds_load_u8 v66, v125 offset:7168
	ds_load_u8 v98, v125 offset:8064
	ds_load_u8 v100, v125 offset:7808
	ds_load_u8 v101, v125 offset:7552
	ds_load_u8 v102, v125 offset:7296
	v_perm_b32 v96, v235, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v96, 16, v94
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v125 offset:7936
	ds_load_u8 v96, v125 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v96, v66, 0xc0c0004
	ds_load_u8 v96, v125 offset:6400
	ds_load_u8 v97, v125 offset:6144
	ds_load_u8 v103, v125 offset:7040
	ds_load_u8 v105, v125 offset:6784
	ds_load_u8 v106, v125 offset:6528
	ds_load_u8 v107, v125 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v125 offset:6912
	ds_load_u8 v108, v125 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v97, 0xc0c0004
	v_lshl_or_b32 v97, v66, 16, v0
	v_perm_b32 v0, v102, v101, 0xc0c0004
	v_perm_b32 v66, v100, v98, 0xc0c0004
	v_perm_b32 v100, v105, v103, 0xc0c0004
	v_perm_b32 v98, v107, v106, 0xc0c0004
	v_perm_b32 v102, v200, v199, 0xc0c0004
	v_perm_b32 v105, v198, v197, 0xc0c0004
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v196, v194, 0xc0c0004
	v_perm_b32 v66, v189, v169, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v98
	v_perm_b32 v98, v206, v205, 0xc0c0004
	v_lshl_or_b32 v96, v108, 16, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v103, v66, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:4
	scratch_load_b32 v67, off, off offset:8
	v_lshl_or_b32 v102, v102, 16, v98
	v_perm_b32 v98, v204, v203, 0xc0c0004
	v_perm_b32 v0, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[102:103], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v105, 16, v98
	v_perm_b32 v98, v190, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[102:103], v[25:32] neg_lo:[1,1,0]
	scratch_load_b32 v183, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	scratch_load_b32 v67, off, off          ; 4-byte Folded Reload
	v_lshl_or_b32 v106, v66, 16, v0
	v_perm_b32 v0, v202, v201, 0xc0c0004
	v_perm_b32 v66, v195, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v66, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v108, v188, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v98
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[107:108], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:272
	scratch_load_b32 v66, off, off offset:276
	scratch_load_b32 v94, off, off offset:280
	scratch_load_b32 v95, off, off offset:284
	scratch_load_b64 v[96:97], off, off offset:288
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s14, s36, s35
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s14, s14, s33
	.loc	1 1201 27                       ; ragged.py:1201:27
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v97, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v110, v12
	v_cvt_f32_i32_e32 v98, v2
	v_cvt_f32_i32_e32 v100, v3
	v_cvt_f32_i32_e32 v101, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v105, v7
	v_cvt_f32_i32_e32 v106, v8
	v_cvt_f32_i32_e32 v107, v9
	v_cvt_f32_i32_e32 v108, v10
	v_cvt_f32_i32_e32 v109, v11
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v113, v15
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v0, s36, v0, 1
	v_add_lshl_u32 v66, s36, v66, 1
	v_add_lshl_u32 v94, s36, v94, 1
	v_add_lshl_u32 v95, s36, v95, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v96, v96, s14, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s6
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v96, v96, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s36, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s36, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v96
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v96, 16, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v17, v66
	v_dual_mul_f32 v101, v101, v96 :: v_dual_lshlrev_b32 v94, 16, v94
	v_dual_mul_f32 v97, v97, v96 :: v_dual_mul_f32 v18, v18, v66
	v_dual_mul_f32 v106, v106, v96 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v107, v107, v96 :: v_dual_mul_f32 v24, v24, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v16, v16, v96 :: v_dual_mul_f32 v33, v33, v94
	v_dual_mul_f32 v103, v103, v96 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v98, v98, v96 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v105, v105, v96 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v100, v100, v96 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v102, v102, v96 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v109, v109, v96 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v111, v111, v96 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v108, v108, v96 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v113, v113, v96 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v110, v110, v96 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v49, v49, v95
	v_dual_mul_f32 v112, v112, v96 :: v_dual_mul_f32 v31, v31, v66
	v_dual_mul_f32 v34, v34, v94 :: v_dual_mul_f32 v51, v51, v95
	v_dual_mul_f32 v38, v38, v94 :: v_dual_mul_f32 v55, v55, v95
	v_dual_mul_f32 v35, v35, v94 :: v_dual_mul_f32 v50, v50, v95
	v_dual_mul_f32 v42, v42, v94 :: v_dual_mul_f32 v59, v59, v95
	v_dual_mul_f32 v36, v36, v94 :: v_dual_mul_f32 v53, v53, v95
	v_dual_mul_f32 v37, v37, v94 :: v_dual_mul_f32 v52, v52, v95
	v_dual_mul_f32 v44, v44, v94 :: v_dual_mul_f32 v61, v61, v95
	v_dual_mul_f32 v39, v39, v94 :: v_dual_mul_f32 v54, v54, v95
	v_dual_mul_f32 v40, v40, v94 :: v_dual_mul_f32 v57, v57, v95
	v_dual_mul_f32 v41, v41, v94 :: v_dual_mul_f32 v56, v56, v95
	v_dual_mul_f32 v43, v43, v94 :: v_dual_mul_f32 v58, v58, v95
	v_dual_mul_f32 v45, v45, v94 :: v_dual_mul_f32 v60, v60, v95
	v_dual_mul_f32 v46, v46, v94 :: v_dual_mul_f32 v63, v63, v95
	v_dual_mul_f32 v47, v47, v94 :: v_dual_mul_f32 v62, v62, v95
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v12, off, off offset:300
	scratch_load_b32 v115, off, off offset:232
	scratch_load_b32 v71, off, off offset:240
	scratch_load_b32 v114, off, off offset:228
	scratch_load_b32 v70, off, off offset:236
	scratch_load_b32 v122, off, off offset:268
	scratch_load_b32 v121, off, off offset:264
	scratch_load_b32 v120, off, off offset:260
	scratch_load_b32 v119, off, off offset:256
	scratch_load_b32 v118, off, off offset:252
	scratch_load_b32 v117, off, off offset:248
	scratch_load_b32 v116, off, off offset:244
	scratch_load_b32 v66, off, off offset:224
	scratch_load_b32 v96, off, off offset:60
	s_waitcnt vmcnt(13)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(11) lgkmcnt(2)
	v_fmac_f32_e32 v71, v106, v7
	scratch_load_b32 v106, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v106, v16, v15
	scratch_load_b32 v16, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v16, v17, v0
	scratch_load_b32 v17, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v18, v1
	scratch_load_b32 v18, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v19, v2
	scratch_load_b32 v19, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v20, v3
	scratch_load_b32 v20, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v21, v4
	scratch_load_b32 v21, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v22, v5
	scratch_load_b32 v22, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v23, v6
	scratch_load_b32 v23, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v24, v7
	scratch_load_b32 v24, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v24, v25, v8
	scratch_load_b32 v25, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v26, v9
	scratch_load_b32 v26, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v27, v10
	scratch_load_b32 v27, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v48, v48, v94 :: v_dual_fmac_f32 v121, v98, v1
	scratch_load_b32 v98, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v27, v28, v11
	scratch_load_b32 v28, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, v29, v12
	scratch_load_b32 v29, off, off offset:152 ; 4-byte Folded Reload
	v_dual_fmac_f32 v120, v100, v2 :: v_dual_fmac_f32 v119, v101, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:80
	scratch_load_b32 v100, off, off offset:72
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v29, v30, v13
	scratch_load_b32 v30, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v101, v46, v13
	scratch_load_b32 v46, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v30, v31, v14
	scratch_load_b32 v31, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v64, v64, v95 :: v_dual_fmac_f32 v117, v103, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:108
	scratch_load_b32 v95, off, off offset:56
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v31, v32, v15
	scratch_load_b32 v32, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v103, v41, v8
	scratch_load_b32 v41, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v32, v33, v0
	scratch_load_b32 v33, off, off offset:136 ; 4-byte Folded Reload
	v_fmac_f32_e32 v70, v107, v8
	scratch_load_b32 v107, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v41, v44, v11
	scratch_load_b32 v44, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v33, v34, v1
	scratch_load_b32 v34, off, off offset:132 ; 4-byte Folded Reload
	v_dual_fmac_f32 v122, v97, v0 :: v_dual_fmac_f32 v115, v108, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v108, off, off offset:216
	scratch_load_b32 v97, off, off offset:64
	v_fmac_f32_e32 v100, v47, v14
	scratch_load_b32 v47, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v34, v35, v2
	scratch_load_b32 v35, off, off offset:128 ; 4-byte Folded Reload
	v_fmac_f32_e32 v114, v109, v10
	scratch_load_b32 v109, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v116, v105, v6
	scratch_load_b32 v105, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v97, v49, v0
	scratch_load_b32 v49, off, off offset:40 ; 4-byte Folded Reload
	v_fmac_f32_e32 v98, v48, v15
	scratch_load_b32 v48, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v47, v57, v8
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v35, v36, v3
	scratch_load_b32 v36, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v66, v110, v11
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v105, v40, v7
	scratch_load_b32 v40, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v49, v55, v6 :: v_dual_mov_b32 v110, v66
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:52
	scratch_load_b32 v55, off, off offset:92
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v48, v56, v7
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v36, v37, v4
	scratch_load_b32 v37, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v109, v111, v12 :: v_dual_fmac_f32 v66, v52, v3
	scratch_load_b32 v52, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v95, v51, v2
	scratch_load_b32 v51, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v37, v38, v5
	scratch_load_b32 v38, off, off offset:116 ; 4-byte Folded Reload
	v_fmac_f32_e32 v108, v112, v13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v52, v53, v4
	scratch_load_b32 v53, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v51, v54, v5
	scratch_load_b32 v54, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v55, v62, v13 :: v_dual_fmac_f32 v38, v39, v6
	scratch_load_b32 v39, off, off offset:104 ; 4-byte Folded Reload
	v_dual_fmac_f32 v118, v102, v4 :: v_dual_fmac_f32 v107, v113, v14
	scratch_load_b32 v102, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v40, v43, v10 :: v_dual_fmac_f32 v53, v64, v15
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v54, v63, v14 :: v_dual_fmac_f32 v39, v42, v9
	scratch_load_b32 v42, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v44, v60, v11
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v102, v45, v12
	scratch_load_b32 v45, off, off offset:24 ; 4-byte Folded Reload
	v_fmac_f32_e32 v96, v50, v1
	v_fmac_f32_e32 v46, v58, v9
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v42, v61, v12 :: v_dual_fmac_f32 v45, v59, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v14, v107, v107 :: v_dual_max_f32 v15, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v43, 0, v37
	v_max_f32_e32 v37, v105, v105
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v105, off, off offset:304
	scratch_load_b32 v104, off, off offset:308
	scratch_load_b32 v106, off, off offset:312
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v69, 0, v37 :: v_dual_max_f32 v50, 0, v38
	v_dual_max_f32 v38, v103, v103 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v78, 0, v39 :: v_dual_max_f32 v79, 0, v40
	v_max_f32_e32 v37, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, 0, v38 :: v_dual_max_f32 v80, 0, v41
	v_dual_max_f32 v38, v101, v101 :: v_dual_max_f32 v39, v100, v100
	v_dual_max_f32 v40, v98, v98 :: v_dual_max_f32 v41, v97, v97
	v_dual_max_f32 v0, v122, v122 :: v_dual_max_f32 v1, v121, v121
	v_dual_max_f32 v81, 0, v37 :: v_dual_max_f32 v84, 0, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v82, 0, v38 :: v_dual_max_f32 v83, 0, v39
	v_dual_max_f32 v40, v52, v52 :: v_dual_max_f32 v85, 0, v41
	v_dual_max_f32 v38, v95, v95 :: v_dual_max_f32 v39, v66, v66
	v_max_f32_e32 v37, v96, v96
	v_dual_max_f32 v41, v51, v51 :: v_dual_max_f32 v2, v120, v120
	v_dual_max_f32 v3, v119, v119 :: v_dual_max_f32 v0, 0, v0
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v4, v118, v118
	v_dual_max_f32 v5, v117, v117 :: v_dual_max_f32 v6, v116, v116
	v_dual_max_f32 v7, v71, v71 :: v_dual_max_f32 v8, v70, v70
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v87, 0, v38
	v_max_f32_e32 v88, 0, v39
	v_dual_max_f32 v86, 0, v37 :: v_dual_max_f32 v89, 0, v40
	v_max_f32_e32 v40, v46, v46
	v_max_f32_e32 v38, v48, v48
	v_max_f32_e32 v90, 0, v41
	v_max_f32_e32 v37, v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v39, v47, v47 :: v_dual_max_f32 v94, 0, v40
	v_dual_max_f32 v41, v45, v45 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v3, 0, v3
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v9, v115, v115 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v11, v110, v110
	v_dual_max_f32 v10, v114, v114 :: v_dual_max_f32 v13, v108, v108
	v_max_f32_e32 v12, v109, v109
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v92, 0, v38
	v_dual_max_f32 v91, 0, v37 :: v_dual_max_f32 v40, v54, v54
	v_max_f32_e32 v37, v44, v44
	v_dual_max_f32 v93, 0, v39 :: v_dual_max_f32 v38, v42, v42
	v_dual_max_f32 v39, v55, v55 :: v_dual_mul_f32 v48, v1, v1
	v_max_f32_e32 v95, 0, v41
	v_dual_max_f32 v41, v53, v53 :: v_dual_max_f32 v4, 0, v4
	v_max_f32_e32 v7, 0, v7
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_max_f32_e32 v33, 0, v33
	v_dual_max_f32 v97, 0, v38 :: v_dual_mul_f32 v54, v5, v5
	v_dual_max_f32 v98, 0, v39 :: v_dual_max_f32 v99, 0, v40
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v58, v7, v7 :: v_dual_mul_f32 v45, v0, v0
	v_mul_f32_e32 v62, v9, v9
	v_mul_f32_e32 v0, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v100, 0, v41
	v_dual_max_f32 v96, 0, v37 :: v_dual_mul_f32 v49, v2, v2
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v66, v11, v11 :: v_dual_mul_f32 v53, v4, v4
	v_mul_f32_e32 v76, v10, v10
	v_dual_mul_f32 v57, v6, v6 :: v_dual_mul_f32 v70, v12, v12
	v_dual_mul_f32 v61, v8, v8 :: v_dual_mul_f32 v74, v14, v14
	v_dual_mul_f32 v71, v13, v13 :: v_dual_mul_f32 v68, v18, v18
	v_dual_mul_f32 v75, v15, v15 :: v_dual_mul_f32 v72, v17, v17
	v_dual_mul_f32 v73, v16, v16 :: v_dual_mul_f32 v60, v22, v22
	v_dual_mul_f32 v67, v19, v19 :: v_dual_mul_f32 v64, v20, v20
	v_dual_mul_f32 v63, v21, v21 :: v_dual_mul_f32 v56, v24, v24
	v_dual_mul_f32 v59, v23, v23 :: v_dual_mul_f32 v52, v26, v26
	v_dual_mul_f32 v55, v25, v25 :: v_dual_mul_f32 v44, v30, v30
	v_dual_mul_f32 v51, v27, v27 :: v_dual_mul_f32 v46, v29, v29
	v_dual_mul_f32 v47, v28, v28 :: v_dual_mul_f32 v42, v31, v31
	v_dual_mul_f32 v41, v32, v32 :: v_dual_mul_f32 v40, v33, v33
	v_dual_mul_f32 v39, v34, v34 :: v_dual_mul_f32 v38, v35, v35
	v_dual_mul_f32 v37, v36, v36 :: v_dual_mul_f32 v36, v43, v43
	v_dual_mul_f32 v35, v50, v50 :: v_dual_mul_f32 v34, v69, v69
	v_dual_mul_f32 v33, v77, v77 :: v_dual_mul_f32 v32, v78, v78
	v_dual_mul_f32 v31, v79, v79 :: v_dual_mul_f32 v30, v80, v80
	v_dual_mul_f32 v29, v81, v81 :: v_dual_mul_f32 v28, v82, v82
	v_dual_mul_f32 v27, v83, v83 :: v_dual_mul_f32 v26, v84, v84
	v_dual_mul_f32 v25, v85, v85 :: v_dual_mul_f32 v24, v86, v86
	v_dual_mul_f32 v23, v87, v87 :: v_dual_mul_f32 v22, v88, v88
	v_dual_mul_f32 v21, v89, v89 :: v_dual_mul_f32 v20, v90, v90
	v_dual_mul_f32 v19, v91, v91 :: v_dual_mul_f32 v18, v92, v92
	v_dual_mul_f32 v17, v93, v93 :: v_dual_mul_f32 v16, v94, v94
	v_dual_mul_f32 v15, v95, v95 :: v_dual_mul_f32 v8, v97, v97
	v_dual_mul_f32 v9, v96, v96 :: v_dual_mul_f32 v6, v99, v99
	v_dual_mul_f32 v7, v98, v98 :: v_dual_mul_f32 v4, v100, v100
	v_mov_b32_e32 v3, v65
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v48, v48 :: v_dual_max_f32 v2, v45, v45
	v_max3_f32 v5, v0, v53, v54
	v_max3_f32 v10, v62, v76, v66
	v_max3_f32 v11, v70, v71, v74
	v_max_f32_e32 v12, v73, v73
	v_dual_max_f32 v1, v2, v1 :: v_dual_max_f32 v2, v72, v72
	v_max3_f32 v43, v55, v52, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v10, v10, v11, v75
	v_max_f32_e32 v11, v41, v41
	v_max3_f32 v1, v1, v49, v5
	v_max_f32_e32 v5, v40, v40
	v_max_f32_e32 v2, v12, v2
	v_max3_f32 v12, v67, v64, v63
	v_max3_f32 v50, v47, v46, v44
	v_max3_f32 v14, v60, v59, v56
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v38, v37, v36
	v_max3_f32 v65, v32, v31, v30
	v_max3_f32 v69, v29, v28, v27
	v_max3_f32 v2, v2, v68, v12
	v_max3_f32 v12, v43, v50, v42
	v_max3_f32 v13, v57, v58, v61
	v_max3_f32 v43, v35, v34, v33
	v_max_f32_e32 v50, v24, v24
	v_max3_f32 v5, v5, v39, v11
	v_max3_f32 v11, v65, v69, v26
	v_max3_f32 v2, v2, v14, v12
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v1, v13, v10
	v_max3_f32 v13, v16, v15, v9
	v_max3_f32 v5, v5, v43, v11
	v_max3_f32 v14, v8, v7, v6
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v25, v25
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v12, v19, v18, v17
	v_max3_f32 v13, v13, v14, v4
	v_max_f32_e32 v14, v43, v43
	v_max_f32_e32 v10, v65, v50
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v50, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v10, v23, v11
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v43, v50, v50 :: v_dual_and_b32 v50, 3, v105
	v_max_f32_e32 v78, v2, v14
	v_max3_f32 v10, v10, v12, v13
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v79, v5, v43 :: v_dual_and_b32 v2, 4, v105
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v50, 9, 0
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v1, v11 :: v_dual_lshlrev_b32 v12, 4, v105
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x80, v105
	v_and_b32_e32 v13, 0x60, v105
	v_and_b32_e32 v43, 8, v105
	v_lshl_add_u32 v5, v2, 2, v5
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v50
	v_lshrrev_b32_e32 v81, 3, v14
	v_lshl_add_u32 v82, v2, 6, 0
	v_lshl_add_u32 v5, v43, 4, v5
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v10, v1
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v65, 0x680, v12, v11
	v_lshlrev_b32_e32 v12, 1, v14
	v_xor_b32_e32 v69, v11, v13
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_xor_b32_e32 v65, v65, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v5, v12, v69
	v_add3_u32 v5, v82, v81, v65
	ds_store_b128 v1, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v77
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v77, v77
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v5, v78 :: v_dual_mov_b32 v10, v79
	v_add_nc_u32_e32 v14, 0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v10, v10, v10
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v43, 3, v43
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v65, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v69, v78, v78 :: v_dual_mov_b32 v78, v1
	v_max_f32_e32 v5, v69, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v78
	v_dual_max_f32 v65, v79, v79 :: v_dual_mov_b32 v78, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, v80, v80 :: v_dual_max_f32 v10, v65, v10
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v69, v80, v80
	v_max_f32_e32 v65, v77, v69
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v69, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v77, v65
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v10, v10, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v69, v10
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, v78, v78 :: v_dual_mov_b32 v80, v65
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v79
	v_max_f32_e32 v77, v1, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v5
	v_lshrrev_b32_e32 v69, 1, v13
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v79, v79 :: v_dual_max_f32 v79, v10, v1
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v2, v50, 4, 0
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v10, 4, v106
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v5, v78 :: v_dual_max_f32 v5, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v2, v1, v43
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 32, v10
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v65, v5
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v14, v69, v43
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 16, v10
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v5, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v1
.Ltmp50:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v77, v77
	v_max_f32_e32 v69, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	v_max_f32_e32 v69, 0x2b8cbccc, v69
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v79, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v43, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s24, v1
	v_add_co_ci_u32_e64 v2, null, s25, 0, s0
	v_add_co_u32 v81, s0, s24, v50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v50, v78, v78
	v_rcp_f32_e32 v84, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s25, 0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v14, v43, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v50, 0x2b8cbccc, v50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v43, v77, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s0, s24, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v78, null, s25, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v85, v79, v43
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v80, v80
	v_fma_f32 v2, -v83, v84, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v65, -v14, v85, v79
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[28:29], v[77:78]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v80, 0x2b8cbccc, v1
	v_fmac_f32_e32 v84, v2, v84
	v_div_scale_f32 v2, s7, v69, 0x40e00000, v69
	v_fmac_f32_e32 v85, v65, v43
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v50
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[77:78]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v14, v85, v79
	v_rcp_f32_e32 v14, v65
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v43, v85
	v_mul_f32_e32 v43, v2, v84
	v_rcp_f32_e32 v85, v79
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v81, -v65, v14, 1.0
	v_fma_f32 v5, -v83, v43, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v14, v81, v14
	v_div_scale_f32 v81, s8, v50, 0x40e00000, v50
	v_fma_f32 v86, -v79, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v43, v5, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v82.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v81, v14
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, s9, v80, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v65, v87, v81
	v_fma_f32 v2, -v83, v43, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v86, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v77, v14
	v_div_fmas_f32 v43, v2, v84, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v77, -v79, v78, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v65, -v65, v87, v81
	v_div_fixup_f32 v43, v43, 0x40e00000, v69
	v_fmac_f32_e32 v78, v77, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s24, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v83, v83, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v65, v14, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v79, v78, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v65, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v43.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v14, v14, 0x40e00000, v50
	v_div_fmas_f32 v50, v69, v85, v78
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v83, v83, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s25, 0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v50, v50, 0x40e00000, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v78
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v77, -v81, v65, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v69, 1, v82
	v_mov_b16_e32 v79.l, v14.h
	v_mov_b16_e32 v79.h, v82.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, vcc_lo, v45, v83, v45
	v_fmac_f32_e32 v65, v77, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v50.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v83, v83, v49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[26:27], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v43, v69, 0x7fff
	v_and_b32_e32 v2, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v79, v84, v65
	v_fma_f32 v43, -v78, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v69, 1, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v87, null, v83, v83, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v14, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v81, v79, v84
	v_fmac_f32_e32 v80, v43, v80
	v_div_scale_f32 v88, s9, v48, v83, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v50, v69, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v50, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v79, v82, v65 :: v_dual_mul_f32 v82, v88, v80
	v_fma_f32 v89, -v85, v86, 1.0
	v_div_scale_f32 v91, null, v83, v83, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v79, v84
	v_fma_f32 v84, -v78, v82, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s10, v49, v83, v49
	v_fma_f32 v90, -v87, v50, 1.0
	v_div_fmas_f32 v65, v81, v65, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v84, v80 :: v_dual_mul_f32 v79, v89, v86
	v_rcp_f32_e32 v81, v91
	v_fmac_f32_e32 v50, v90, v50
	v_div_scale_f32 v84, s11, v0, v83, v0
	v_div_scale_f32 v90, null, v83, v83, v54
	v_div_fixup_f32 v45, v65, v83, v45
	v_fma_f32 v65, -v78, v82, v88
	v_fma_f32 v78, -v85, v79, v89
	v_mul_f32_e32 v88, v84, v50
	v_rcp_f32_e32 v92, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v93, -v91, v81, 1.0
	v_div_fmas_f32 v65, v65, v80, v82
	v_fmac_f32_e32 v79, v78, v86
	v_fma_f32 v78, -v87, v88, v84
	v_div_scale_f32 v80, s9, v53, v83, v53
	v_fmac_f32_e32 v81, v93, v81
	v_div_fixup_f32 v48, v65, v83, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v90, v92, 1.0
	v_fma_f32 v65, -v85, v79, v89
	v_fmac_f32_e32 v88, v78, v50
	v_div_scale_f32 v85, null, v83, v83, v57
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v78, v80, v81
	v_fmac_f32_e32 v92, v82, v92
	v_div_scale_f32 v82, s12, v54, v83, v54
	v_div_fmas_f32 v65, v65, v86, v79
	v_fma_f32 v79, -v87, v88, v84
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v83, v83, v58
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v91, v78, v80
	v_mul_f32_e32 v87, v82, v92
	v_div_fmas_f32 v50, v79, v50, v88
	v_rcp_f32_e32 v79, v89
	v_div_fixup_f32 v49, v65, v83, v49
	v_fmac_f32_e32 v78, v84, v81
	v_fma_f32 v84, -v90, v87, v82
	v_fma_f32 v88, -v85, v86, 1.0
	v_div_fixup_f32 v50, v50, v83, v0
	v_div_scale_f32 v65, s10, v57, v83, v57
	v_fma_f32 v0, -v91, v78, v80
	v_fmac_f32_e32 v87, v84, v92
	v_fmac_f32_e32 v86, v88, v86
	v_fma_f32 v80, -v89, v79, 1.0
	v_div_scale_f32 v84, null, v83, v83, v61
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v83, v83, v62
	v_div_fmas_f32 v0, v0, v81, v78
	v_fma_f32 v78, -v90, v87, v82
	v_mul_f32_e32 v81, v65, v86
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v82, s9, v58, v83, v58
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v81, v65
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v82, v79
	v_div_fixup_f32 v53, v0, v83, v53
	v_div_fixup_f32 v54, v78, v83, v54
	v_fma_f32 v91, -v84, v80, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_div_scale_f32 v87, null, v83, v83, v76
	v_fma_f32 v0, -v89, v90, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v78, s11, v61, v83, v61
	v_fma_f32 v91, -v88, v92, 1.0
	v_fma_f32 v65, -v85, v81, v65
	v_rcp_f32_e32 v85, v87
	v_fmac_f32_e32 v90, v0, v79
	v_mul_f32_e32 v0, v78, v80
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v62, v83, v62
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v65, v65, v86, v81
	v_fma_f32 v81, -v89, v90, v82
	v_fma_f32 v82, -v84, v0, v78
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v89, -v87, v85, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v57, v65, v83, v57
	v_fmac_f32_e32 v0, v82, v80
	v_fma_f32 v82, -v88, v86, v91
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s9, v76, v83, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v84, v0, v78
	v_fmac_f32_e32 v86, v82, v92
	v_div_fmas_f32 v79, v81, v79, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v89, v85
	s_mov_b32 vcc_lo, s11
	v_div_fmas_f32 v0, v65, v80, v0
	v_fma_f32 v65, -v88, v86, v91
	v_fma_f32 v80, -v87, v78, v89
	v_div_scale_f32 v88, null, v83, v83, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v61, v0, v83, v61
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v78, v80, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v88
	v_div_fmas_f32 v65, v65, v92, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v0, -v87, v78, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v85, v78
	v_fma_f32 v89, -v88, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v93, null, v83, v83, v66
	v_div_fixup_f32 v58, v79, v83, v58
	v_div_scale_f32 v82, null, v83, v83, v70
	v_rcp_f32_e32 v81, v93
	v_div_scale_f32 v84, s10, v66, v83, v66
	v_div_fixup_f32 v62, v65, v83, v62
	v_div_scale_f32 v87, s11, v70, v83, v70
	v_div_scale_f32 v91, null, v83, v83, v75
	v_div_scale_f32 v89, s9, v71, v83, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v93, v81, 1.0
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v79, v81
	v_rcp_f32_e32 v79, v82
	v_mul_f32_e32 v86, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v93, v86, v84
	v_fma_f32 v90, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v65, v81 :: v_dual_fmac_f32 v79, v90, v79
	v_div_scale_f32 v90, null, v83, v83, v74
	v_div_fixup_f32 v65, v0, v83, v76
	v_fma_f32 v0, -v93, v86, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v87, v79
	v_rcp_f32_e32 v85, v90
	v_mul_f32_e32 v84, v89, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v81, v86
	v_fma_f32 v76, -v82, v78, v87
	v_div_scale_f32 v81, s10, v74, v83, v74
	v_fma_f32 v86, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v78, v76, v79 :: v_dual_and_b32 v77, 0xffff0000, v14
	v_fma_f32 v93, -v90, v85, 1.0
	v_fma_f32 v76, -v88, v84, v89
	v_div_fixup_f32 v66, v0, v83, v66
	v_fmac_f32_e32 v92, v86, v92
	v_fma_f32 v0, -v82, v78, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v85, v93, v85 :: v_dual_fmac_f32 v84, v76, v80
	v_div_scale_f32 v86, null, v77, v77, v73
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v76, v81, v85
	v_div_scale_f32 v82, s12, v75, v83, v75
	v_div_fmas_f32 v0, v0, v79, v78
	v_fma_f32 v78, -v88, v84, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v90, v76, v81
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v89, null, v77, v77, v72
	v_dual_mul_f32 v88, v82, v92 :: v_dual_and_b32 v69, 0xffff0000, v1
	v_dual_fmac_f32 v76, v79, v85 :: v_dual_and_b32 v43, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v89
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v70, v0, v83, v70
	v_div_fmas_f32 v78, v78, v80, v84
	v_fma_f32 v80, -v91, v88, v82
	v_fma_f32 v84, -v86, v87, 1.0
	v_fma_f32 v0, -v90, v76, v81
	v_div_scale_f32 v81, null, v77, v77, v68
	v_div_fixup_f32 v71, v78, v83, v71
	v_fmac_f32_e32 v88, v80, v92
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v78, s9, v73, v77, v73
	v_fma_f32 v80, -v89, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s10, v72, v77, v72
	v_div_fmas_f32 v0, v0, v85, v76
	v_fma_f32 v76, -v91, v88, v82
	v_mul_f32_e32 v82, v78, v87
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v81
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v74, v0, v83, v74
	v_div_fmas_f32 v76, v76, v92, v88
	v_fma_f32 v88, -v86, v82, v78
	v_mul_f32_e32 v90, v84, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v77, v77, v67
	v_div_fixup_f32 v75, v76, v83, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v81, v80, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_div_scale_f32 v83, null, v77, v77, v64
	v_fma_f32 v0, -v89, v90, v84
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v76, s11, v68, v77, v68
	v_fma_f32 v78, -v86, v82, v78
	v_rcp_f32_e32 v86, v83
	v_fmac_f32_e32 v90, v0, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v0, v76, v80
	v_rcp_f32_e32 v92, v85
	v_div_fmas_f32 v78, v78, v87, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v89, v90, v84
	v_fma_f32 v84, -v81, v0, v76
	v_div_scale_f32 v91, null, v77, v77, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v83, v86, 1.0
	v_div_fixup_f32 v73, v78, v77, v73
	v_fmac_f32_e32 v0, v84, v80
	v_div_fmas_f32 v79, v82, v79, v90
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s9, v64, v77, v64
	v_fma_f32 v76, -v81, v0, v76
	v_fma_f32 v88, -v85, v92, 1.0
	v_rcp_f32_e32 v82, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v89, v86
	v_div_fixup_f32 v72, v79, v77, v72
	v_div_fmas_f32 v0, v76, v80, v0
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, s12, v67, v77, v67
	v_fma_f32 v80, -v83, v78, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v68, v0, v77, v68
	v_div_scale_f32 v81, null, v77, v77, v60
	v_fma_f32 v79, -v91, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v80, v86
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v79, v82
	v_fma_f32 v0, -v83, v78, v89
	v_div_scale_f32 v83, s11, v60, v77, v60
	v_mul_f32_e32 v87, v88, v92
	v_rcp_f32_e32 v79, v81
	v_div_scale_f32 v89, null, v77, v77, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v85, v87, v88
	v_fmac_f32_e32 v87, v84, v92
	v_div_scale_f32 v84, s10, v63, v77, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v85, v87, v88
	v_div_scale_f32 v85, null, v77, v77, v59
	v_fma_f32 v88, -v81, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v92, v87
	v_rcp_f32_e32 v80, v85
	v_mul_f32_e32 v87, v84, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v79, v88, v79
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v67, v76, v77, v67
	v_div_fmas_f32 v0, v0, v86, v78
	v_fma_f32 v76, -v91, v87, v84
	v_rcp_f32_e32 v78, v89
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v59, v77, v59
	v_fma_f32 v88, -v85, v80, 1.0
	v_fmac_f32_e32 v87, v76, v82
	v_div_fixup_f32 v64, v0, v77, v64
	v_mul_f32_e32 v76, v83, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v88, null, v77, v77, v55
	v_fma_f32 v0, -v91, v87, v84
	v_fma_f32 v84, -v81, v76, v83
	v_fma_f32 v92, -v89, v78, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v82, v87
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v78, v92, v78
	v_fmac_f32_e32 v76, v84, v79
	v_div_scale_f32 v84, s10, v56, v77, v56
	v_div_fixup_f32 v63, v0, v77, v63
	v_div_scale_f32 v92, null, v77, v77, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v88, v91, 1.0
	v_fma_f32 v0, -v81, v76, v83
	v_div_scale_f32 v83, null, v77, v77, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v91, v87, v91 :: v_dual_mul_f32 v90, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v79, v76
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v77, v77, v51
	v_fma_f32 v82, -v85, v90, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v0, v77, v60
	v_fmac_f32_e32 v90, v82, v80
	v_div_scale_f32 v82, s12, v55, v77, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v85, v90, v86
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v82, v91
	v_div_fmas_f32 v76, v76, v80, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v88, v86, v82
	v_div_fixup_f32 v59, v76, v77, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fmac_f32_e32 v86, v80, v91
	v_div_scale_f32 v76, s9, v52, v77, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v90, v85
	v_mul_f32_e32 v81, v84, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v89, v81, v84
	v_fmac_f32_e32 v81, v79, v78
	v_rcp_f32_e32 v79, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v89, v81, v84
	v_div_scale_f32 v84, null, v77, v77, v47
	v_div_fmas_f32 v0, v0, v78, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v87, v79, 1.0
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v81, v76, v85
	v_div_scale_f32 v82, s10, v51, v77, v51
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v88, null, v77, v77, v46
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v81, v76
	v_rcp_f32_e32 v91, v88
	v_div_fixup_f32 v56, v0, v77, v56
	v_fma_f32 v0, -v87, v89, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v84, v80, 1.0
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v55, v78, v77, v55
	v_div_scale_f32 v78, s11, v47, v77, v47
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v86, null, v77, v77, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v76, -v83, v81, v76
	v_fmac_f32_e32 v89, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v78, v80
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v46, v77, v46
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v81, -v87, v89, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v84, v0, v78
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v52, v76, v77, v52
	v_div_fmas_f32 v79, v81, v79, v89
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v0, v82, v80
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v51, v79, v77, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v44, v77, v44
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v81, 1.0
	v_div_scale_f32 v82, null, v69, v69, v41
	v_fma_f32 v76, -v84, v0, v78
	v_mul_f32_e32 v78, v87, v83
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v84, s10, v42, v77, v42
	v_div_fmas_f32 v0, v76, v80, v0
	v_fma_f32 v76, -v88, v85, v90
	v_fma_f32 v80, -v86, v78, v87
	v_div_scale_f32 v88, null, v69, v69, v40
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v0, v0, v77, v47
	v_fmac_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v76, v76, v91, v85
	v_mul_f32_e32 v85, v84, v81
	v_fma_f32 v47, -v86, v78, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v69, v69, v39
	v_div_fixup_f32 v46, v76, v77, v46
	v_fma_f32 v76, -v92, v85, v84
	v_div_scale_f32 v86, s11, v41, v69, v41
	v_fma_f32 v87, -v88, v80, 1.0
	v_div_fmas_f32 v47, v47, v83, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v76, v81 :: v_dual_mul_f32 v76, v86, v79
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v83, s9, v40, v69, v40
	v_div_fixup_f32 v44, v47, v77, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v92, v85, v84
	v_fma_f32 v84, -v82, v76, v86
	v_mul_f32_e32 v90, v83, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v69, v69, v38
	v_div_fmas_f32 v47, v47, v81, v85
	v_fma_f32 v81, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_fmac_f32_e32 v76, v84, v79
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v47, v77, v42
	v_fmac_f32_e32 v90, v81, v80
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v47, -v82, v76, v86
	v_div_scale_f32 v82, null, v69, v69, v37
	v_div_scale_f32 v84, s10, v39, v69, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v47, v47, v79, v76
	v_fma_f32 v76, -v88, v90, v83
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v81, s12, v38, v69, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_scale_f32 v86, null, v69, v69, v36
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v41, v47, v69, v41
	v_fmac_f32_e32 v91, v85, v91
	v_div_fmas_f32 v76, v76, v80, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v83, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v81, v91
	v_div_fixup_f32 v40, v76, v69, v40
	v_fmac_f32_e32 v83, v88, v83
	v_mul_f32_e32 v77, v84, v78
	v_div_scale_f32 v76, s9, v37, v69, v37
	v_fma_f32 v80, -v87, v85, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v77, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v80, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v79, v78
	v_rcp_f32_e32 v79, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v89, v77, v84
	v_div_scale_f32 v84, null, v69, v69, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v78, v77
	v_fma_f32 v80, -v86, v79, 1.0
	v_fma_f32 v77, -v87, v85, v81
	v_div_scale_f32 v81, s10, v36, v69, v36
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	v_div_fmas_f32 v77, v77, v91, v85
	v_div_scale_f32 v87, null, v69, v69, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v81, v79
	v_div_fixup_f32 v39, v47, v69, v39
	v_div_fixup_f32 v38, v77, v69, v38
	v_div_scale_f32 v77, s11, v35, v69, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v86, v88, v81
	v_fma_f32 v89, -v84, v80, 1.0
	v_rcp_f32_e32 v90, v87
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v69, v69, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v80, v89, v80
	v_mul_f32_e32 v78, v76, v83
	v_fmac_f32_e32 v88, v47, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v47, v77, v80
	v_fma_f32 v85, -v82, v78, v76
	v_fma_f32 v89, -v87, v90, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v69, v69, v33
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v34, v69, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v82, v78, v76
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v76, v76, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v84, v47, v77
	v_mul_f32_e32 v83, v89, v90
	v_div_fixup_f32 v37, v76, v69, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v47, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v33, v69, v33
	v_div_fixup_f32 v36, v78, v69, v36
	v_fma_f32 v76, -v84, v47, v77
	v_fmac_f32_e32 v83, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v77, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v69, v69, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v32, v69, v32
	v_div_fmas_f32 v47, v76, v80, v47
	v_fma_f32 v76, -v87, v83, v89
	v_fma_f32 v80, -v85, v77, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v69, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v82
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v35, v47, v69, v35
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v47, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v76, v69, v34
	v_fma_f32 v76, -v91, v83, v84
	v_div_scale_f32 v85, s11, v31, v69, v31
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v69, v69, v29
	v_div_fmas_f32 v47, v47, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v76, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v69, v69, v28
	v_mul_f32_e32 v76, v85, v78
	v_div_scale_f32 v82, s9, v30, v69, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v33, v47, v69, v33
	v_fma_f32 v47, -v91, v83, v84
	v_fma_f32 v84, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v79, v83
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s10, v29, v69, v29
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v32, v47, v69, v32
	v_fma_f32 v47, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v77 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v69, v69, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s12, v28, v69, v28
	v_div_fmas_f32 v47, v47, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v69, v69, v26
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v31, v47, v69, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v47, -v88, v79, v83
	v_div_fixup_f32 v30, v76, v69, v30
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v76, s9, v27, v69, v27
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v43, v43, v24
	v_div_fmas_f32 v47, v47, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v43, v43, v25
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v26, v69, v26
	v_div_fmas_f32 v77, v77, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v29, v47, v69, v29
	v_div_fixup_f32 v28, v77, v69, v28
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v47, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v43, v43, v22
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v43, v43, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v47, v78 :: v_dual_fmac_f32 v83, v85, v83
	v_div_fmas_f32 v76, v76, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v47, s11, v25, v43, v25
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v89, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v47, v83
	v_div_scale_f32 v82, s9, v24, v43, v24
	v_fmac_f32_e32 v77, v89, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v47
	v_mul_f32_e32 v91, v82, v77
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v23, v43, v23
	v_div_fixup_f32 v27, v76, v69, v27
	v_div_fixup_f32 v26, v78, v69, v26
	v_div_scale_f32 v78, null, v43, v43, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v87, v85 :: v_dual_fmac_f32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v69, -v84, v86, v87
	v_fma_f32 v47, -v80, v81, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_fmac_f32 v92, v76, v92
	v_div_scale_f32 v76, s10, v22, v43, v22
	v_fmac_f32_e32 v86, v69, v85
	v_rcp_f32_e32 v69, v78
	v_div_fmas_f32 v47, v47, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_mul_f32_e32 v80, v76, v92
	v_div_scale_f32 v81, null, v43, v43, v20
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v47, v43, v25
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v78, v69, 1.0
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v24, v77, v43, v24
	v_fmac_f32_e32 v69, v82, v69
	v_div_scale_f32 v82, s9, v21, v43, v21
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v82, v69
	v_fma_f32 v77, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	v_div_fixup_f32 v23, v79, v43, v23
	v_div_scale_f32 v79, null, v43, v43, v19
	v_fma_f32 v84, -v78, v47, v82
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s11, v20, v43, v20
	v_div_fmas_f32 v76, v76, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v84, v69
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v76, v43, v22
	v_fma_f32 v76, -v78, v47, v82
	v_div_scale_f32 v84, null, v43, v43, v18
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v76, v69, v47
	v_div_scale_f32 v69, null, v43, v43, v17
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v69
	v_div_scale_f32 v76, s9, v19, v43, v19
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v43, v43, v16
	v_div_fixup_f32 v21, v47, v43, v21
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v69, v78, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v47, v86
	v_div_scale_f32 v47, s10, v18, v43, v18
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v43, v43, v15
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v47, v86
	v_div_scale_f32 v89, s11, v17, v43, v17
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v47
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v16, v43, v16
	v_div_fixup_f32 v20, v77, v43, v20
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v69, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v47, -v84, v83, v47
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v15, v43, v15
	v_div_fmas_f32 v76, v76, v85, v81
	v_div_scale_f32 v81, null, v43, v43, v9
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v69, -v69, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	v_mul_f32_e32 v77, v80, v91
	v_div_fmas_f32 v47, v47, v86, v83
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v76, v43, v19
	v_div_fmas_f32 v69, v69, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v18, v47, v43, v18
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v17, v69, v43, v17
	v_div_scale_f32 v69, null, v43, v43, v8
	v_fmac_f32_e32 v77, v82, v91
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v43, v43, v4
	v_fma_f32 v47, -v87, v77, v80
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v43, v43, v7
	v_div_fixup_f32 v16, v78, v43, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v91, v77
	v_rcp_f32_e32 v77, v69
	v_rcp_f32_e32 v80, v76
	v_div_scale_f32 v79, vcc_lo, v9, v43, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v47, v43, v15
	v_div_scale_f32 v78, null, v43, v43, v6
	v_mul_f32_e32 v84, v79, v83
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v69, v77, 1.0
	v_fma_f32 v86, -v76, v80, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v82, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v47, v77
	v_div_scale_f32 v47, s9, v8, v43, v8
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v7, v43, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v47, v77
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v86, v80
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v88, -v69, v90, v47
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v81, -v76, v92, v86
	v_div_scale_f32 v89, s11, v6, v43, v6
	v_fmac_f32_e32 v90, v88, v77
	v_div_fmas_f32 v79, v79, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v81, v80
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v47, -v69, v90, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v77, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	v_mul_f32_e32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	v_med3_f32 v46, v46, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v76, v43, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v4, v43, v4
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v51
	v_med3_f32 v40, v40, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v82
	v_div_fixup_f32 v9, v79, v43, v9
	v_div_fixup_f32 v8, v47, v43, v8
	v_fma_f32 v69, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v69, v87
	v_fma_f32 v69, -v78, v93, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v57
	v_rndne_f32_e32 v57, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v69, v69, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v70
	v_rndne_f32_e32 v70, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v69, v43, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v40
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v46, 15, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v77, v43, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v50
	v_rndne_f32_e32 v50, v54
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v71
	v_rndne_f32_e32 v71, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_cvt_i32_f32_e32 v75, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v45
	v_and_b32_e32 v39, 15, v0
	v_and_b32_e32 v45, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v105
	v_and_b32_e32 v75, 16, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_cvt_i32_f32_e32 v73, v41
	v_cvt_i32_f32_e32 v86, v28
	v_cvt_i32_f32_e32 v87, v27
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v28, 15, v72
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v71, 4, v104
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v75
	v_lshlrev_b32_e32 v74, 6, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v89, v25
	v_cvt_i32_f32_e32 v90, v24
	v_cvt_i32_f32_e32 v91, v23
	v_cvt_i32_f32_e32 v92, v22
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v71, v13
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v11, 0x1b00, v74, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v81, v33
	v_cvt_i32_f32_e32 v82, v32
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v84, v30
	v_cvt_i32_f32_e32 v97, v17
	v_cvt_i32_f32_e32 v98, v16
	v_cvt_i32_f32_e32 v99, v15
	v_cvt_i32_f32_e32 v100, v9
	v_cvt_i32_f32_e32 v80, v34
	v_cvt_i32_f32_e32 v85, v29
	v_cvt_i32_f32_e32 v93, v21
	v_cvt_i32_f32_e32 v96, v18
	v_cvt_i32_f32_e32 v101, v8
	v_cvt_i32_f32_e32 v103, v6
	v_and_b32_e32 v6, 15, v43
	v_and_b32_e32 v8, 15, v47
	v_and_b32_e32 v9, 15, v48
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v21, 15, v61
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v31, 15, v64
	v_and_b32_e32 v32, 15, v63
	v_and_b32_e32 v33, 15, v60
	v_and_b32_e32 v34, 15, v59
	v_and_b32_e32 v43, 15, v73
	v_and_b32_e32 v59, 15, v89
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v61, 15, v91
	v_and_b32_e32 v62, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v106, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v37
	v_cvt_i32_f32_e32 v78, v36
	v_cvt_i32_f32_e32 v79, v35
	v_cvt_i32_f32_e32 v88, v26
	v_cvt_i32_f32_e32 v94, v20
	v_cvt_i32_f32_e32 v95, v19
	v_and_b32_e32 v19, 15, v57
	v_and_b32_e32 v20, 15, v58
	v_and_b32_e32 v23, 15, v65
	v_and_b32_e32 v24, 15, v66
	v_and_b32_e32 v25, 15, v69
	v_and_b32_e32 v26, 15, v70
	v_and_b32_e32 v35, 15, v56
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v37, 15, v52
	v_and_b32_e32 v42, 15, v42
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v67, 15, v97
	v_and_b32_e32 v68, 15, v98
	v_and_b32_e32 v69, 15, v99
	v_and_b32_e32 v70, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[19:22], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[27:30]
	ds_store_b128 v0, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[35:38], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[43:46]
	ds_store_b128 v0, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[51:54], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[59:62]
	ds_store_b128 v0, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	ds_load_b128 v[67:70], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[15:18]
	ds_store_b128 v0, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[23:26], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v4
	ds_load_b128 v[39:42], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v77
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v78
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v64, 15, v94
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v71, 15, v101
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[55:58], v4 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v19, 4, v6
	v_lshl_or_b32 v6, v20, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s24, v10
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s31, 7, v42
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v13, v22, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v12, v21, 4, v8
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v18.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v35, 4, v27
	v_lshl_or_b32 v20, v36, 4, v28
	v_lshl_or_b32 v21, v37, 4, v29
	v_lshl_or_b32 v22, v38, 4, v30
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v4.l, 8, v26.l
	v_and_b16 v4.h, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v6.l, 0xff, v23.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v51, 4, v43
	v_lshl_or_b32 v28, v52, 4, v44
	v_lshl_or_b32 v29, v53, 4, v45
	v_lshl_or_b32 v30, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v34.l
	v_and_b16 v4.h, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v6.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v67, 4, v59
	v_lshl_or_b32 v36, v68, 4, v60
	v_lshl_or_b32 v37, v69, 4, v61
	v_lshl_or_b32 v38, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v30.l
	v_and_b16 v0.h, 0xff, v29.l
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_or_b16 v8.h, v4.h, v4.l
	v_or_b16 v8.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v43.l
	v_and_b16 v4.h, 0xff, v41.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v39.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v105
	v_lshrrev_b32_e32 v6, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v6, v4, v42
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v105
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 320
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 320
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20196
; TotalNumSgprs: 40
; NumVgprs: 256
; ScratchSize: 320
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 320
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 79
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
