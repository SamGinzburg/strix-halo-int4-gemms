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
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[20:21], s[0:1], 0x5c
	v_mov_b32_e32 v105, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v9, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s21, s4
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
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v65, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s20, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v106, 15, v105
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s66, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s21, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s17, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[0:1]
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, s66, v106
	v_cmp_gt_i64_e64 s5, s[72:73], v[2:3]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v15, s75, 8, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v2, 32, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s20
	v_mov_b32_e32 v14, v15
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s16, s16, s74
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v103, 0, v106
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v10, 0xf0, v105
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v13, 1, v105
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s20
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[186:187], null, s16, s17, v[15:16]
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v12, 2, v10
	v_mov_b32_e32 v17, 0
	v_and_b32_e32 v13, 28, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:276
	scratch_store_b32 off, v105, off offset:304
	v_mul_lo_u32 v0, v2, s20
	v_or_b32_e32 v2, 0x3f0, v105
	v_mad_u64_u32 v[72:73], null, s74, 6, v[186:187]
	v_mad_u64_u32 v[73:74], null, s74, 7, v[186:187]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v182, 0, v2
	v_mov_b32_e32 v116, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:280
	scratch_store_b32 off, v106, off offset:308
	v_mul_lo_u32 v0, v3, s20
	v_lshrrev_b32_e32 v3, 1, v105
	v_mad_u64_u32 v[74:75], null, s74, 9, v[186:187]
	v_mad_u64_u32 v[75:76], null, s74, 10, v[186:187]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x70, v3
	v_mad_u64_u32 v[76:77], null, s74, 12, v[186:187]
	v_mad_u64_u32 v[77:78], null, s74, 13, v[186:187]
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v126, v103, v3
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v3, 5, v105
	v_mad_u64_u32 v[78:79], null, s74, 14, v[186:187]
	v_mad_u64_u32 v[79:80], null, s74, 15, v[186:187]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v3, 32, v3
	v_mad_u64_u32 v[80:81], null, s74, 17, v[186:187]
	v_mad_u64_u32 v[81:82], null, s74, 18, v[186:187]
	v_mad_u64_u32 v[82:83], null, s74, 19, v[186:187]
	v_mad_u64_u32 v[83:84], null, s74, 20, v[186:187]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v105
	v_add3_u32 v3, 0, v12, v3
	v_mad_u64_u32 v[84:85], null, s74, 21, v[186:187]
	v_mad_u64_u32 v[85:86], null, s74, 22, v[186:187]
	v_mad_u64_u32 v[86:87], null, s74, 23, v[186:187]
	v_mad_u64_u32 v[87:88], null, s74, 24, v[186:187]
	v_mad_u64_u32 v[88:89], null, s74, 25, v[186:187]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[4:5]
	v_cmp_gt_i64_e64 s7, s[72:73], v[6:7]
	v_or_b32_e32 v1, 0x700, v105
	v_or_b32_e32 v4, 0x7f0, v105
	v_or_b32_e32 v5, 0xb00, v105
	v_or_b32_e32 v6, 0xf00, v105
	v_or_b32_e32 v7, 0x1300, v105
	v_or_b32_e32 v8, 0x1700, v105
	v_or_b32_e32 v9, 0x1b00, v105
	v_or_b32_e32 v11, 0x1f00, v105
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_add_nc_u32_e32 v98, 0, v0
	v_mov_b32_e32 v106, 0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v0, v3, v13
	v_mad_u64_u32 v[122:123], null, s74, 3, v[186:187]
	v_mad_u64_u32 v[89:90], null, s74, 26, v[186:187]
	v_mad_u64_u32 v[128:129], null, s74, 29, v[186:187]
	v_mad_u64_u32 v[123:124], null, s74, 5, v[186:187]
	v_mad_u64_u32 v[90:91], null, s74, 27, v[186:187]
	v_mad_u64_u32 v[129:130], null, s74, 30, v[186:187]
	v_mad_u64_u32 v[124:125], null, s74, 11, v[186:187]
	v_mad_u64_u32 v[91:92], null, s74, 28, v[186:187]
	v_mad_u64_u32 v[130:131], null, s74, 31, v[186:187]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v93, 6, v105
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:288
	scratch_store_b32 off, v0, off offset:296
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v155, 0, v105
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v127, 0, v1
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v167, 0, v4
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v150, 0, v5
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v151, 0, v6
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v152, 0, v7
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v68, 0, v8
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v69, 0, v9
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v153, 0, v11
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v0, 0, v10
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
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
	s_mul_i32 s22, s20, s17
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s23, 0
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 1135 19 is_stmt 0             ; ragged.py:1135:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:300
	scratch_store_b32 off, v182, off offset:12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19                          ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v121, off offset:268
	scratch_store_b32 off, v120, off offset:264
	scratch_store_b32 off, v119, off offset:260
	scratch_store_b32 off, v118, off offset:256
	scratch_store_b32 off, v117, off offset:252
	scratch_store_b32 off, v116, off offset:248
	scratch_store_b32 off, v115, off offset:244
	scratch_store_b32 off, v71, off offset:240
	scratch_store_b32 off, v70, off offset:236
	scratch_store_b32 off, v114, off offset:232
	scratch_store_b32 off, v108, off offset:228
	scratch_store_b32 off, v107, off offset:224
	scratch_store_b32 off, v106, off offset:220
	scratch_store_b32 off, v105, off offset:216
	scratch_store_b32 off, v104, off offset:212
	scratch_store_b32 off, v102, off offset:208
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
	scratch_store_b32 off, v39, off offset:112
	scratch_store_b32 off, v40, off offset:108
	scratch_store_b32 off, v41, off offset:104
	scratch_store_b32 off, v42, off offset:100
	scratch_store_b32 off, v43, off offset:96
	scratch_store_b32 off, v56, off offset:92
	scratch_store_b32 off, v101, off offset:88
	scratch_store_b32 off, v55, off offset:84
	scratch_store_b32 off, v100, off offset:80
	scratch_store_b32 off, v54, off offset:76
	scratch_store_b32 off, v99, off offset:72
	scratch_store_b32 off, v97, off offset:68
	scratch_store_b32 off, v44, off offset:64
	scratch_store_b32 off, v96, off offset:60
	scratch_store_b32 off, v95, off offset:56
	scratch_store_b32 off, v66, off offset:52
	scratch_store_b32 off, v53, off offset:48
	scratch_store_b32 off, v52, off offset:44
	scratch_store_b32 off, v51, off offset:40
	scratch_store_b32 off, v50, off offset:36
	scratch_store_b32 off, v49, off offset:32
	scratch_store_b32 off, v48, off offset:28
	scratch_store_b32 off, v47, off offset:24
	scratch_store_b32 off, v46, off offset:20
	scratch_store_b32 off, v45, off offset:16
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s23, 7
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
	s_add_i32 s24, s15, s14
	v_mov_b32_e32 v67, v93
	v_or_b32_e32 v0, s24, v93
	v_mov_b32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v0, s21, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v93
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s24, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v94, s2
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v66, s21, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 8, v93
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v96, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 12, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v99, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 16, v93
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v100, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 20, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v101, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 24, v93
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v102, 0x80000000, v94, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v94, 28, v93
	v_mov_b32_e32 v93, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v94, s24, v94
	.loc	1 1153 59                       ; ragged.py:1153:59
	s_mul_i32 s24, s24, s74
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[94:95], null, v94, s21, v[65:66]
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v95, s24, v186
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v140, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s74, v186
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s24, v95
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v141, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s74, 1, v186
	v_add_nc_u32_e32 v95, s24, v95
	buffer_load_u8 v142, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v122
	buffer_load_u8 v134, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s74, 2, v186
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s24, v95
	buffer_load_u8 v143, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v123
	buffer_load_u8 v144, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v72
	buffer_load_u8 v145, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v73
	buffer_load_u8 v139, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s74, 3, v186
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s24, v95
	buffer_load_u8 v146, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v74
	buffer_load_u8 v147, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v75
	buffer_load_u8 v148, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v124
	buffer_load_u8 v149, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v76
	buffer_load_u8 v169, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v77
	buffer_load_u8 v171, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v78
	buffer_load_u8 v70, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v79
	buffer_load_u8 v71, v95, s[8:11], 0 offen
	v_lshl_add_u32 v95, s74, 4, v186
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v95, s24, v95
	buffer_load_u8 v154, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v80
	buffer_load_u8 v156, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v81
	buffer_load_u8 v158, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v82
	buffer_load_u8 v160, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v83
	buffer_load_u8 v162, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v84
	buffer_load_u8 v164, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v85
	buffer_load_u8 v170, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v86
	buffer_load_u8 v172, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v87
	buffer_load_u8 v174, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v88
	buffer_load_u8 v176, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v89
	buffer_load_u8 v177, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v90
	v_mov_b32_e32 v90, v88
	v_mov_b32_e32 v88, v86
	v_mov_b32_e32 v86, v84
	v_mov_b32_e32 v84, v82
	buffer_load_u8 v178, v95, s[8:11], 0 offen
	v_dual_mov_b32 v82, v80 :: v_dual_add_nc_u32 v95, s24, v91
	v_mov_b32_e32 v80, v78
	v_mov_b32_e32 v78, v76
	v_mov_b32_e32 v76, v74
	buffer_load_u8 v179, v95, s[8:11], 0 offen
	v_dual_mov_b32 v74, v72 :: v_dual_add_nc_u32 v95, s24, v128
	v_mov_b32_e32 v72, v122
	buffer_load_u8 v180, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v129
	buffer_load_u8 v181, v95, s[8:11], 0 offen
	v_add_nc_u32_e32 v95, s24, v130
	buffer_load_u8 v97, v95, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[16:19], 0 offen
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	buffer_load_u8 v95, v96, s[16:19], 0 offen
	buffer_load_u8 v96, v100, s[16:19], 0 offen
	buffer_load_u8 v100, v101, s[16:19], 0 offen
	buffer_load_u8 v101, v102, s[16:19], 0 offen
	buffer_load_u8 v94, v94, s[16:19], 0 offen
	buffer_load_u8 v99, v99, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v102, v128
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s24, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s24
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v155, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v155, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v155, v95 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v155, v96 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v155, v100 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v98, v99
	ds_store_b8 v155, v101 offset:1536
	ds_store_b8 v127, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v103 offset:320
	ds_load_u8 v66, v103 offset:256
	ds_load_u8 v135, v103 offset:336
	ds_load_u8 v136, v103 offset:272
	v_dual_mov_b32 v100, v124 :: v_dual_mov_b32 v101, v91
	v_mov_b32_e32 v91, v89
	v_mov_b32_e32 v89, v87
	v_mov_b32_e32 v87, v85
	v_mov_b32_e32 v85, v83
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v81, v79
	v_mov_b32_e32 v79, v77
	v_mov_b32_e32 v77, v75
	v_mov_b32_e32 v75, v73
	ds_load_u8 v125, v103 offset:352
	ds_load_u8 v128, v103 offset:480
	ds_load_u8 v127, v103 offset:288
	ds_load_u8 v117, v103 offset:368
	ds_load_u8 v118, v103 offset:304
	v_mov_b32_e32 v99, v129
	ds_load_u8 v129, v103 offset:416
	ds_load_u8 v119, v103 offset:496
	ds_load_u8 v120, v103 offset:432
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v103 offset:448
	ds_load_u8 v94, v103 offset:384
	ds_load_u8 v137, v103 offset:464
	ds_load_u8 v138, v103 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v94, v66, 0xc0c0004
	ds_load_u8 v94, v103 offset:64
	ds_load_u8 v95, v103
	ds_load_u8 v161, v103 offset:80
	ds_load_u8 v131, v103 offset:96
	ds_load_u8 v121, v103 offset:112
	ds_load_u8 v163, v103 offset:16
	ds_load_u8 v185, v103 offset:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v103 offset:192
	ds_load_u8 v96, v103 offset:128
	ds_load_u8 v165, v103 offset:208
	ds_load_u8 v166, v103 offset:144
	ds_load_u8 v132, v103 offset:224
	ds_load_u8 v133, v103 offset:160
	ds_load_u8 v124, v103 offset:240
	ds_load_u8 v73, v103 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	v_lshl_or_b32 v95, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v109, v103 offset:960
	ds_load_u8 v110, v103 offset:896
	ds_load_u8 v238, v103 offset:1024
	ds_load_u8 v245, v103 offset:976
	ds_load_u8 v246, v103 offset:912
	ds_load_u8 v240, v103 offset:992
	ds_load_u8 v241, v103 offset:928
	ds_load_u8 v239, v103 offset:944
	ds_load_u8 v111, v103 offset:832
	ds_load_u8 v112, v103 offset:768
	ds_load_u8 v252, v103 offset:848
	ds_load_u8 v254, v103 offset:784
	ds_load_u8 v248, v103 offset:864
	ds_load_u8 v249, v103 offset:800
	ds_load_u8 v242, v103 offset:880
	ds_load_u8 v243, v103 offset:816
	ds_load_u8 v113, v103 offset:704
	ds_load_u8 v114, v103 offset:640
	ds_load_u8 v0, v103 offset:720
	ds_load_u8 v157, v103 offset:656
	ds_load_u8 v255, v103 offset:736
	ds_load_u8 v159, v103 offset:672
	ds_load_u8 v250, v103 offset:752
	ds_load_u8 v253, v103 offset:688
	ds_load_u8 v115, v103 offset:576
	ds_load_u8 v116, v103 offset:512
	ds_load_u8 v104, v103 offset:592
	ds_load_u8 v105, v103 offset:528
	ds_load_u8 v173, v103 offset:608
	ds_load_u8 v175, v103 offset:544
	ds_load_u8 v184, v103 offset:624
	ds_load_u8 v183, v103 offset:560
	ds_load_u8 v244, v103 offset:1216
	ds_load_u8 v247, v103 offset:1280
	ds_load_u8 v211, v103 offset:1232
	ds_load_u8 v212, v103 offset:1168
	ds_load_u8 v209, v103 offset:1248
	ds_load_u8 v210, v103 offset:1184
	ds_load_u8 v207, v103 offset:1264
	ds_load_u8 v208, v103 offset:1200
	ds_load_u8 v251, v103 offset:1152
	ds_load_u8 v96, v103 offset:1088
	ds_load_u8 v218, v103 offset:1104
	ds_load_u8 v219, v103 offset:1040
	ds_load_u8 v216, v103 offset:1120
	ds_load_u8 v217, v103 offset:1056
	ds_load_u8 v213, v103 offset:1136
	ds_load_u8 v214, v103 offset:1072
	ds_load_u8 v66, v103 offset:1472
	ds_load_u8 v206, v103 offset:1536
	ds_load_u8 v226, v103 offset:1488
	ds_load_u8 v228, v103 offset:1424
	ds_load_u8 v223, v103 offset:1504
	ds_load_u8 v225, v103 offset:1440
	ds_load_u8 v220, v103 offset:1520
	ds_load_u8 v221, v103 offset:1456
	ds_load_u8 v106, v103 offset:1408
	ds_load_u8 v107, v103 offset:1344
	ds_load_u8 v235, v103 offset:1360
	ds_load_u8 v236, v103 offset:1296
	ds_load_u8 v232, v103 offset:1376
	ds_load_u8 v233, v103 offset:1312
	ds_load_u8 v229, v103 offset:1392
	ds_load_u8 v230, v103 offset:1328
	ds_load_u8 v215, v103 offset:1984
	ds_load_u8 v168, v103 offset:2000
	ds_load_u8 v188, v103 offset:1936
	ds_load_u8 v108, v103 offset:2016
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v0, v157, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v0, 16, v104
	v_perm_b32 v0, v249, v248, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v66, v106, v66, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v108, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v108, v103 offset:1952
	ds_load_u8 v122, v103 offset:48
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v108, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v108, v182
	ds_load_u8 v182, v167
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v239, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v182, off        ; 4-byte Folded Spill
	ds_load_u8 v187, v103 offset:1968
	ds_load_u8 v222, v103 offset:1920
	ds_load_u8 v224, v103 offset:1856
	ds_load_u8 v193, v103 offset:1872
	ds_load_u8 v195, v103 offset:1808
	ds_load_u8 v190, v103 offset:1888
	ds_load_u8 v191, v103 offset:1824
	ds_load_u8 v182, v103 offset:1904
	ds_load_u8 v189, v103 offset:1840
	ds_load_u8 v227, v103 offset:1728
	ds_load_u8 v231, v103 offset:1792
	ds_load_u8 v198, v103 offset:1744
	ds_load_u8 v199, v103 offset:1680
	ds_load_u8 v196, v103 offset:1760
	ds_load_u8 v197, v103 offset:1696
	ds_load_u8 v192, v103 offset:1776
	ds_load_u8 v194, v103 offset:1712
	ds_load_u8 v234, v103 offset:1664
	ds_load_u8 v237, v103 offset:1600
	ds_load_u8 v204, v103 offset:1616
	ds_load_u8 v205, v103 offset:1552
	ds_load_u8 v202, v103 offset:1632
	ds_load_u8 v203, v103 offset:1568
	ds_load_u8 v200, v103 offset:1648
	ds_load_u8 v201, v103 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v155, v140
	ds_store_b8 v155, v141 offset:256
	ds_store_b8 v155, v142 offset:512
	ds_store_b8 v155, v143 offset:1024
	ds_store_b8 v155, v144 offset:1280
	ds_store_b8 v155, v145 offset:1536
	ds_store_b8 v155, v146 offset:2048
	ds_store_b8 v155, v147 offset:2304
	ds_store_b8 v155, v148 offset:2560
	ds_store_b8 v155, v169 offset:3072
	ds_store_b8 v155, v171 offset:3328
	ds_store_b8 v155, v70 offset:3584
	ds_store_b8 v155, v154 offset:4096
	ds_store_b8 v155, v156 offset:4352
	ds_store_b8 v155, v158 offset:4608
	ds_store_b8 v155, v162 offset:5120
	ds_store_b8 v155, v164 offset:5376
	ds_store_b8 v155, v170 offset:5632
	ds_store_b8 v155, v174 offset:6144
	ds_store_b8 v155, v176 offset:6400
	ds_store_b8 v155, v177 offset:6656
	ds_store_b8 v155, v179 offset:7168
	ds_store_b8 v155, v180 offset:7424
	ds_store_b8 v155, v181 offset:7680
	ds_store_b8 v98, v134
	ds_store_b8 v93, v139
	ds_store_b8 v150, v149
	ds_store_b8 v151, v71
	ds_store_b8 v152, v160
	ds_store_b8 v68, v172
	ds_store_b8 v69, v178
	ds_store_b8 v153, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v97, v126 offset:1280
	ds_load_u8 v134, v126 offset:1024
	ds_load_u8 v141, v126 offset:1920
	ds_load_u8 v142, v126 offset:1664
	ds_load_u8 v143, v126 offset:1408
	ds_load_u8 v144, v126 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v134, v97, 0xc0c0004
	ds_load_u8 v134, v126 offset:1792
	ds_load_u8 v139, v126 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v139, v134, 0xc0c0004
	ds_load_u8 v139, v126 offset:256
	ds_load_u8 v140, v126
	ds_load_u8 v145, v126 offset:896
	ds_load_u8 v146, v126 offset:640
	ds_load_u8 v147, v126 offset:384
	ds_load_u8 v148, v126 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v126 offset:768
	ds_load_u8 v149, v126 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v140, 0xc0c0004
	v_lshl_or_b32 v140, v134, 16, v97
	v_perm_b32 v97, v144, v143, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	v_perm_b32 v141, v148, v147, 0xc0c0004
	v_perm_b32 v143, v146, v145, 0xc0c0004
	v_lshl_or_b32 v139, v149, 16, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v142, v134, 16, v97
	v_perm_b32 v97, v136, v135, 0xc0c0004
	v_perm_b32 v134, v138, v137, 0xc0c0004
	v_lshl_or_b32 v141, v143, 16, v141
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v136, v163, v161, 0xc0c0004
	v_perm_b32 v137, v166, v165, 0xc0c0004
	v_lshl_or_b32 v135, v134, 16, v97
	v_perm_b32 v97, v127, v125, 0xc0c0004
	v_perm_b32 v125, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v94, v112, v111, 0xc0c0004
	v_perm_b32 v95, v110, v109, 0xc0c0004
	v_perm_b32 v109, v114, v113, 0xc0c0004
	v_lshl_or_b32 v128, v125, 16, v97
	v_perm_b32 v97, v118, v117, 0xc0c0004
	v_perm_b32 v117, v120, v119, 0xc0c0004
	v_lshl_or_b32 v95, v95, 16, v94
	v_perm_b32 v119, v122, v121, 0xc0c0004
	v_perm_b32 v120, v73, v124, 0xc0c0004
	v_perm_b32 v127, v185, v131, 0xc0c0004
	v_lshl_or_b32 v118, v117, 16, v97
	v_perm_b32 v97, v116, v115, 0xc0c0004
	v_perm_b32 v129, v133, v132, 0xc0c0004
	v_lshl_or_b32 v117, v120, 16, v119
	v_dual_mov_b32 v124, v100 :: v_dual_mov_b32 v73, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v94, v109, 16, v97
	ds_load_u8 v97, v126 offset:3328
	ds_load_u8 v109, v126 offset:3072
	ds_load_u8 v111, v126 offset:3968
	ds_load_u8 v112, v126 offset:3712
	ds_load_u8 v113, v126 offset:3456
	ds_load_u8 v114, v126 offset:3200
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[117:118], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[141:142], v[117:118], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v127, v129, 16, v127
	v_mov_b32_e32 v75, v77
	v_mov_b32_e32 v77, v79
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v81, v83
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[141:142], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v128, v102
	v_perm_b32 v102, v243, v242, 0xc0c0004
	v_mov_b32_e32 v83, v85
	v_mov_b32_e32 v85, v87
	v_mov_b32_e32 v87, v89
	v_mov_b32_e32 v89, v91
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v109, v97, 0xc0c0004
	ds_load_u8 v109, v126 offset:3840
	ds_load_u8 v110, v126 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_mov_b32_e32 v91, v101
	v_lshl_or_b32 v102, v108, 16, v102
	v_mov_b32_e32 v129, v99
	v_perm_b32 v99, v159, v255, 0xc0c0004
	v_lshl_or_b32 v134, v137, 16, v136
	v_mov_b32_e32 v127, v93
	v_dual_mov_b32 v93, v67 :: v_dual_mov_b32 v122, v72
	v_mov_b32_e32 v72, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[134:135], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[134:135], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v74, v76
	v_mov_b32_e32 v76, v78
	v_mov_b32_e32 v78, v80
	v_mov_b32_e32 v80, v82
	v_mov_b32_e32 v82, v84
	v_mov_b32_e32 v84, v86
	v_mov_b32_e32 v86, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v126 offset:2304
	ds_load_u8 v115, v126 offset:2048
	ds_load_u8 v116, v126 offset:2944
	ds_load_u8 v117, v126 offset:2688
	ds_load_u8 v118, v126 offset:2432
	ds_load_u8 v119, v126 offset:2176
	v_mov_b32_e32 v88, v90
	v_mov_b32_e32 v90, v92
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v115, v110, 0xc0c0004
	ds_load_u8 v110, v126 offset:2816
	ds_load_u8 v120, v126 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v120, v110, 0xc0c0004
	v_lshl_or_b32 v110, v109, 16, v97
	v_perm_b32 v97, v114, v113, 0xc0c0004
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v114, v117, v116, 0xc0c0004
	v_lshl_or_b32 v109, v120, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v112, v111, 16, v97
	v_perm_b32 v97, v254, v252, 0xc0c0004
	v_lshl_or_b32 v111, v114, 16, v113
	v_perm_b32 v113, v246, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v113, 16, v97
	v_perm_b32 v97, v241, v240, 0xc0c0004
	v_perm_b32 v94, v238, v96, 0xc0c0004
	v_perm_b32 v96, v251, v244, 0xc0c0004
	v_perm_b32 v113, v175, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v97, 16, v0
	v_perm_b32 v0, v183, v184, 0xc0c0004
	v_perm_b32 v97, v253, v250, 0xc0c0004
	v_lshl_or_b32 v94, v96, 16, v94
	v_lshl_or_b32 v99, v99, 16, v113
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[104:105], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v97, 16, v0
	v_perm_b32 v0, v247, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[99:100], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[109:110], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[101:102], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v66, 16, v0
	ds_load_u8 v0, v126 offset:5376
	ds_load_u8 v66, v126 offset:5120
	ds_load_u8 v96, v126 offset:6016
	ds_load_u8 v97, v126 offset:5760
	ds_load_u8 v101, v126 offset:5504
	ds_load_u8 v102, v126 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v126 offset:5888
	ds_load_u8 v99, v126 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v99, v66, 0xc0c0004
	ds_load_u8 v99, v126 offset:4352
	ds_load_u8 v100, v126 offset:4096
	ds_load_u8 v104, v126 offset:4992
	ds_load_u8 v105, v126 offset:4736
	ds_load_u8 v106, v126 offset:4480
	ds_load_u8 v107, v126 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v126 offset:4864
	ds_load_u8 v108, v126 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v100, 0xc0c0004
	v_lshl_or_b32 v100, v66, 16, v0
	v_perm_b32 v0, v102, v101, 0xc0c0004
	v_perm_b32 v66, v97, v96, 0xc0c0004
	v_perm_b32 v96, v107, v106, 0xc0c0004
	v_perm_b32 v97, v105, v104, 0xc0c0004
	v_lshl_or_b32 v99, v108, 16, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v102, v66, 16, v0
	v_perm_b32 v0, v236, v235, 0xc0c0004
	v_lshl_or_b32 v101, v97, 16, v96
	v_perm_b32 v66, v228, v226, 0xc0c0004
	v_perm_b32 v96, v219, v218, 0xc0c0004
	v_perm_b32 v97, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v233, v232, 0xc0c0004
	v_lshl_or_b32 v104, v97, 16, v96
	v_perm_b32 v66, v225, v223, 0xc0c0004
	v_perm_b32 v96, v217, v216, 0xc0c0004
	v_perm_b32 v97, v210, v209, 0xc0c0004
	v_perm_b32 v94, v206, v237, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v230, v229, 0xc0c0004
	v_lshl_or_b32 v106, v97, 16, v96
	v_perm_b32 v66, v221, v220, 0xc0c0004
	v_perm_b32 v96, v214, v213, 0xc0c0004
	v_perm_b32 v97, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v66, 16, v0
	v_perm_b32 v0, v231, v224, 0xc0c0004
	v_lshl_or_b32 v108, v97, 16, v96
	v_perm_b32 v66, v222, v215, 0xc0c0004
	v_perm_b32 v96, v234, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[106:107], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[108:109], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v0, v126 offset:7424
	ds_load_u8 v66, v126 offset:7168
	ds_load_u8 v96, v126 offset:8064
	ds_load_u8 v97, v126 offset:7808
	ds_load_u8 v101, v126 offset:7552
	ds_load_u8 v102, v126 offset:7296
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[108:109], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v126 offset:7936
	ds_load_u8 v99, v126 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v99, v66, 0xc0c0004
	ds_load_u8 v99, v126 offset:6400
	ds_load_u8 v100, v126 offset:6144
	ds_load_u8 v104, v126 offset:7040
	ds_load_u8 v105, v126 offset:6784
	ds_load_u8 v106, v126 offset:6528
	ds_load_u8 v107, v126 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v126 offset:6912
	ds_load_u8 v108, v126 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v100, 0xc0c0004
	v_lshl_or_b32 v100, v66, 16, v0
	v_perm_b32 v0, v102, v101, 0xc0c0004
	v_perm_b32 v66, v97, v96, 0xc0c0004
	v_perm_b32 v97, v105, v104, 0xc0c0004
	v_perm_b32 v96, v107, v106, 0xc0c0004
	v_lshl_or_b32 v99, v108, 16, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v102, v66, 16, v0
	v_perm_b32 v0, v195, v193, 0xc0c0004
	v_perm_b32 v66, v188, v168, 0xc0c0004
	v_lshl_or_b32 v101, v97, 16, v96
	v_perm_b32 v96, v205, v204, 0xc0c0004
	v_perm_b32 v97, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:4
	scratch_load_b32 v67, off, off offset:8
	v_perm_b32 v0, v191, v190, 0xc0c0004
	v_lshl_or_b32 v104, v97, 16, v96
	v_perm_b32 v96, v203, v202, 0xc0c0004
	v_perm_b32 v97, v197, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[94:95], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v97, 16, v96
	v_perm_b32 v96, v189, v182, 0xc0c0004
	scratch_load_b32 v182, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	scratch_load_b32 v67, off, off          ; 4-byte Folded Reload
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v201, v200, 0xc0c0004
	v_perm_b32 v66, v194, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v66, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v97, v187, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[108:109], v[57:64] neg_lo:[1,1,0]
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
	s_add_i32 s14, s23, s22
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s14, s14, s74
	.loc	1 1201 27                       ; ragged.py:1201:27
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v97, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v110, v12
	v_cvt_f32_i32_e32 v99, v2
	v_cvt_f32_i32_e32 v100, v3
	v_cvt_f32_i32_e32 v101, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v104, v6
	v_cvt_f32_i32_e32 v105, v7
	v_cvt_f32_i32_e32 v106, v8
	v_cvt_f32_i32_e32 v107, v9
	v_cvt_f32_i32_e32 v108, v10
	v_cvt_f32_i32_e32 v109, v11
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v113, v15
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v0, s23, v0, 1
	v_add_lshl_u32 v66, s23, v66, 1
	v_add_lshl_u32 v94, s23, v94, 1
	v_add_lshl_u32 v95, s23, v95, 1
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
	s_add_i32 s23, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s23, s20
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
	v_dual_mul_f32 v99, v99, v96 :: v_dual_lshlrev_b32 v94, 16, v94
	v_dual_mul_f32 v97, v97, v96 :: v_dual_mul_f32 v18, v18, v66
	v_dual_mul_f32 v102, v102, v96 :: v_dual_mul_f32 v21, v21, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v16, v16, v96 :: v_dual_mul_f32 v33, v33, v94
	v_dual_mul_f32 v101, v101, v96 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v100, v100, v96 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v105, v105, v96 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v107, v107, v96 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v104, v104, v96 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v109, v109, v96 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v106, v106, v96 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v111, v111, v96 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v108, v108, v96 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v113, v113, v96 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v110, v110, v96 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v49, v49, v95
	v_dual_mul_f32 v112, v112, v96 :: v_dual_mul_f32 v31, v31, v66
	v_dual_mul_f32 v34, v34, v94 :: v_dual_mul_f32 v51, v51, v95
	v_dual_mul_f32 v36, v36, v94 :: v_dual_mul_f32 v53, v53, v95
	v_dual_mul_f32 v35, v35, v94 :: v_dual_mul_f32 v50, v50, v95
	v_dual_mul_f32 v38, v38, v94 :: v_dual_mul_f32 v55, v55, v95
	v_dual_mul_f32 v37, v37, v94 :: v_dual_mul_f32 v52, v52, v95
	v_dual_mul_f32 v40, v40, v94 :: v_dual_mul_f32 v57, v57, v95
	v_dual_mul_f32 v39, v39, v94 :: v_dual_mul_f32 v54, v54, v95
	v_dual_mul_f32 v45, v45, v94 :: v_dual_mul_f32 v60, v60, v95
	v_dual_mul_f32 v41, v41, v94 :: v_dual_mul_f32 v56, v56, v95
	v_dual_mul_f32 v47, v47, v94 :: v_dual_mul_f32 v62, v62, v95
	v_dual_mul_f32 v42, v42, v94 :: v_dual_mul_f32 v59, v59, v95
	v_dual_mul_f32 v43, v43, v94 :: v_dual_mul_f32 v58, v58, v95
	v_dual_mul_f32 v44, v44, v94 :: v_dual_mul_f32 v61, v61, v95
	v_dual_mul_f32 v46, v46, v94 :: v_dual_mul_f32 v63, v63, v95
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v12, off, off offset:300
	scratch_load_b32 v70, off, off offset:236
	scratch_load_b32 v117, off, off offset:252
	scratch_load_b32 v114, off, off offset:232
	scratch_load_b32 v121, off, off offset:268
	scratch_load_b32 v120, off, off offset:264
	scratch_load_b32 v119, off, off offset:260
	scratch_load_b32 v118, off, off offset:256
	scratch_load_b32 v116, off, off offset:248
	scratch_load_b32 v115, off, off offset:244
	scratch_load_b32 v71, off, off offset:240
	s_waitcnt vmcnt(10)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v64, v64, v95
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v96, off, off offset:60
	scratch_load_b32 v95, off, off offset:56
	scratch_load_b32 v66, off, off offset:52
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(11) lgkmcnt(2)
	v_fmac_f32_e32 v117, v102, v4
	scratch_load_b32 v102, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v96, v50, v1 :: v_dual_fmac_f32 v95, v51, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:40
	scratch_load_b32 v50, off, off offset:36
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_fmac_f32_e32 v102, v16, v15
	scratch_load_b32 v16, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v51, v55, v6 :: v_dual_fmac_f32 v16, v17, v0
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
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v28, v11
	scratch_load_b32 v28, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, v29, v12
	scratch_load_b32 v29, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v29, v30, v13
	scratch_load_b32 v30, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v31, v14
	scratch_load_b32 v31, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v48, v48, v94 :: v_dual_fmac_f32 v121, v97, v0
	scratch_load_b32 v97, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v31, v32, v15
	scratch_load_b32 v32, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v33, v0
	scratch_load_b32 v33, off, off offset:136 ; 4-byte Folded Reload
	v_dual_fmac_f32 v120, v99, v1 :: v_dual_fmac_f32 v119, v100, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:80
	scratch_load_b32 v99, off, off offset:72
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v33, v34, v1
	scratch_load_b32 v34, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v100, v46, v13 :: v_dual_fmac_f32 v99, v47, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:24
	scratch_load_b32 v46, off, off offset:20
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v34, v35, v2
	scratch_load_b32 v35, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v47, v59, v10
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v35, v36, v3
	scratch_load_b32 v36, off, off offset:124 ; 4-byte Folded Reload
	v_dual_fmac_f32 v116, v104, v5 :: v_dual_fmac_f32 v115, v105, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v105, off, off offset:216
	scratch_load_b32 v104, off, off offset:212
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v36, v37, v4
	scratch_load_b32 v37, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v37, v38, v5
	scratch_load_b32 v38, off, off offset:116 ; 4-byte Folded Reload
	v_dual_fmac_f32 v71, v106, v7 :: v_dual_fmac_f32 v70, v107, v8
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:224
	scratch_load_b32 v106, off, off offset:220
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v38, v39, v6
	scratch_load_b32 v39, off, off offset:112 ; 4-byte Folded Reload
	v_fmac_f32_e32 v114, v108, v9
	scratch_load_b32 v108, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v39, v40, v7
	scratch_load_b32 v40, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v41, v8
	scratch_load_b32 v41, off, off offset:104 ; 4-byte Folded Reload
	v_dual_fmac_f32 v108, v109, v10 :: v_dual_fmac_f32 v107, v110, v11
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v42, v9
	scratch_load_b32 v42, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v42, v43, v10
	scratch_load_b32 v43, off, off offset:96 ; 4-byte Folded Reload
	v_fmac_f32_e32 v106, v111, v12
	v_dual_fmac_f32 v118, v101, v3 :: v_dual_fmac_f32 v105, v112, v13
	scratch_load_b32 v101, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v43, v44, v11
	scratch_load_b32 v44, off, off offset:64 ; 4-byte Folded Reload
	v_fmac_f32_e32 v97, v48, v15
	scratch_load_b32 v48, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v44, v49, v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v66, v52, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:44
	scratch_load_b32 v49, off, off offset:32
	v_fmac_f32_e32 v50, v56, v7
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:92
	scratch_load_b32 v55, off, off offset:84
	v_fmac_f32_e32 v104, v113, v14
	v_fmac_f32_e32 v101, v45, v12
	scratch_load_b32 v45, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v48, v58, v9
	v_fmac_f32_e32 v46, v60, v11
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v52, v54, v5
	scratch_load_b32 v54, off, off offset:76 ; 4-byte Folded Reload
	v_fmac_f32_e32 v0, v53, v4
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v49, v57, v8 :: v_dual_fmac_f32 v56, v62, v13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v55, v63, v14
	v_mov_b32_e32 v53, v0
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v45, v61, v12 :: v_dual_fmac_f32 v54, v64, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v7, v71, v71 :: v_dual_max_f32 v8, v70, v70
	v_dual_max_f32 v10, v108, v108 :: v_dual_max_f32 v13, v105, v105
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, v114, v114
	v_max_f32_e32 v12, v106, v106
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v105, off, off offset:304
	scratch_load_b32 v106, off, off offset:308
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v63, 0, v39
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v83, 0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v80, 0, v41 :: v_dual_max_f32 v41, v100, v100
	v_dual_max_f32 v82, 0, v42 :: v_dual_max_f32 v39, v101, v101
	v_dual_max_f32 v42, v99, v99 :: v_dual_max_f32 v43, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v44, v44, v44 :: v_dual_max_f32 v85, 0, v41
	v_dual_max_f32 v84, 0, v39 :: v_dual_max_f32 v39, v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v86, 0, v42 :: v_dual_max_f32 v87, 0, v43
	v_dual_max_f32 v88, 0, v44 :: v_dual_max_f32 v41, v95, v95
	v_dual_max_f32 v42, v66, v66 :: v_dual_max_f32 v43, v53, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v44, v52, v52 :: v_dual_max_f32 v89, 0, v39
	v_dual_max_f32 v4, v117, v117 :: v_dual_max_f32 v5, v116, v116
	v_max_f32_e32 v6, v115, v115
	v_dual_max_f32 v14, v104, v104 :: v_dual_max_f32 v15, v102, v102
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v17, v17, v17
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v90, 0, v41 :: v_dual_max_f32 v91, 0, v42
	v_dual_max_f32 v92, 0, v43 :: v_dual_max_f32 v93, 0, v44
	v_dual_max_f32 v39, v51, v51 :: v_dual_max_f32 v42, v49, v49
	v_dual_max_f32 v41, v50, v50 :: v_dual_max_f32 v44, v47, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v43, v48, v48 :: v_dual_max_f32 v94, 0, v39
	v_dual_max_f32 v0, v121, v121 :: v_dual_max_f32 v1, v120, v120
	v_dual_max_f32 v2, v119, v119 :: v_dual_max_f32 v3, v118, v118
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v11, v107, v107
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_max_f32_e32 v29, 0, v29
	v_dual_max_f32 v95, 0, v41 :: v_dual_max_f32 v96, 0, v42
	v_dual_max_f32 v97, 0, v43 :: v_dual_max_f32 v98, 0, v44
	v_dual_max_f32 v39, v46, v46 :: v_dual_max_f32 v42, v56, v56
	v_dual_max_f32 v41, v45, v45 :: v_dual_max_f32 v44, v54, v54
	v_dual_max_f32 v43, v55, v55 :: v_dual_max_f32 v0, 0, v0
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_max_f32_e32 v7, 0, v7
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_max_f32_e32 v37, 0, v37
	v_dual_max_f32 v99, 0, v39 :: v_dual_mul_f32 v64, v0, v0
	v_dual_max_f32 v100, 0, v41 :: v_dual_max_f32 v101, 0, v42
	v_dual_max_f32 v102, 0, v43 :: v_dual_max_f32 v103, 0, v44
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v70, v3, v3 :: v_dual_mul_f32 v81, v1, v1
	v_mul_f32_e32 v76, v6, v6
	v_dual_mul_f32 v69, v2, v2 :: v_dual_mul_f32 v74, v5, v5
	v_dual_mul_f32 v73, v4, v4 :: v_dual_mul_f32 v78, v9, v9
	v_dual_mul_f32 v77, v7, v7 :: v_dual_mul_f32 v68, v13, v13
	v_dual_mul_f32 v79, v8, v8 :: v_dual_mul_f32 v72, v11, v11
	v_dual_mul_f32 v75, v10, v10 :: v_dual_mul_f32 v66, v15, v15
	v_dual_mul_f32 v71, v12, v12 :: v_dual_mul_f32 v60, v18, v18
	v_dual_mul_f32 v67, v14, v14 :: v_dual_mul_f32 v62, v16, v16
	v_dual_mul_f32 v61, v17, v17 :: v_dual_mul_f32 v58, v20, v20
	v_dual_mul_f32 v59, v19, v19 :: v_dual_mul_f32 v56, v22, v22
	v_dual_mul_f32 v57, v21, v21 :: v_dual_mul_f32 v54, v24, v24
	v_dual_mul_f32 v55, v23, v23 :: v_dual_mul_f32 v52, v26, v26
	v_dual_mul_f32 v53, v25, v25 :: v_dual_mul_f32 v50, v28, v28
	v_dual_mul_f32 v51, v27, v27 :: v_dual_mul_f32 v48, v30, v30
	v_dual_mul_f32 v49, v29, v29 :: v_dual_mul_f32 v46, v32, v32
	v_dual_mul_f32 v47, v31, v31 :: v_dual_mul_f32 v44, v34, v34
	v_dual_mul_f32 v45, v33, v33 :: v_dual_mul_f32 v42, v36, v36
	v_dual_mul_f32 v43, v35, v35 :: v_dual_mul_f32 v36, v80, v80
	v_mul_f32_e32 v41, v37, v37
	v_dual_mul_f32 v39, v38, v38 :: v_dual_mul_f32 v34, v83, v83
	v_dual_mul_f32 v38, v63, v63 :: v_dual_mul_f32 v37, v40, v40
	v_dual_mul_f32 v28, v87, v87 :: v_dual_mul_f32 v35, v82, v82
	v_dual_mul_f32 v32, v84, v84 :: v_dual_mul_f32 v31, v85, v85
	v_dual_mul_f32 v26, v88, v88 :: v_dual_mul_f32 v29, v86, v86
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mul_f32 v25, v89, v89
	v_mul_f32_e32 v24, v90, v90
	v_dual_mul_f32 v20, v92, v92 :: v_dual_mul_f32 v19, v93, v93
	v_dual_mul_f32 v18, v94, v94 :: v_dual_mul_f32 v17, v95, v95
	v_dual_mul_f32 v16, v96, v96 :: v_dual_mul_f32 v15, v97, v97
	v_dual_mul_f32 v14, v98, v98 :: v_dual_mul_f32 v13, v99, v99
	v_dual_mul_f32 v12, v100, v100 :: v_dual_mul_f32 v11, v101, v101
	v_dual_mul_f32 v10, v102, v102 :: v_dual_mul_f32 v9, v103, v103
	v_mov_b32_e32 v5, v65
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v6, 7, v105
	v_and_b32_e32 v8, 0x80, v105
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v76, v77, v79
	v_max_f32_e32 v30, v45, v45
	v_max_f32_e32 v40, v26, v26
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v6
	v_or_b32_e32 v2, 60, v6
	v_or_b32_e32 v4, 58, v6
	v_or_b32_e32 v21, 50, v6
	s_mov_b32 s26, 0x76543210
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_u32 v82, s1, s66, v4
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v6
	v_or_b32_e32 v4, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v82, s10, s66, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v6
	v_or_b32_e32 v3, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s14
	v_add_co_u32 v2, s14, s66, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 42, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s14
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s18, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s18
	v_add_co_u32 v82, s18, s66, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v6
	v_or_b32_e32 v3, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[0:1]
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v61, v61 :: v_dual_max_f32 v33, v46, v46
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s22, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s22
	v_add_co_u32 v84, s22, s66, v3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v81, v81 :: v_dual_max_f32 v21, v62, v62
	v_max_f32_e32 v3, v64, v64
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[0:1]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v70, v73, v74
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 36, v6
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v3, v2
	v_max3_f32 v2, v78, v75, v72
	v_max3_f32 v3, v71, v68, v67
.Ltmp12:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s22
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v69, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v1, v2, v3, v66
	v_max_f32_e32 v2, v21, v4
	v_max3_f32 v3, v59, v58, v57
	v_max3_f32 v4, v53, v52, v51
	v_max3_f32 v21, v50, v49, v48
	v_max3_f32 v0, v0, v27, v1
	v_max3_f32 v1, v56, v55, v54
	v_max3_f32 v2, v2, v60, v3
	v_max3_f32 v27, v36, v35, v34
	v_max3_f32 v3, v4, v21, v47
	v_max_f32_e32 v4, v33, v30
	v_max3_f32 v21, v43, v42, v41
	v_max3_f32 v30, v32, v31, v29
	v_max_f32_e32 v33, v25, v25
	v_max3_f32 v1, v2, v1, v3
	v_max3_f32 v2, v39, v38, v37
	v_max3_f32 v3, v4, v44, v21
	v_max3_f32 v4, v27, v30, v28
	v_max_f32_e32 v21, v40, v33
	v_max3_f32 v27, v22, v20, v19
	v_max3_f32 v30, v15, v14, v13
	v_max3_f32 v33, v12, v11, v10
	v_max3_f32 v2, v3, v2, v4
.Ltmp14:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[82:83]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v21, v24, v27
.Ltmp16:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s27, s66, v23
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v30, v33, v9
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v30, v1, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v2, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v18, v17, v16
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v63, 8, v105
	v_lshrrev_b32_e32 v86, 3, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v23, v30, v30 :: v_dual_max_f32 v30, v33, v33
	v_max3_f32 v3, v4, v3, v21
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v4, 3, v105
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v23
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v40, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v30
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v3, s26, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v33, v4, 9, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v40, v40 :: v_dual_lshlrev_b32 v30, 4, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v21, v21, v21 :: v_dual_lshlrev_b32 v40, 5, v4
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 0x60, v105
	v_lshlrev_b32_e32 v80, 1, v8
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v27 :: v_dual_and_b32 v27, 4, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v65, 0x680, v30, v40
	v_xor_b32_e32 v40, v40, v23
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v21
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_lshl_add_u32 v33, v27, 2, v33
	v_xor_b32_e32 v65, v65, v23
	v_lshl_add_u32 v87, v27, 6, 0
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v33, v63, 4, v33
.Ltmp35:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[84:85]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v105, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[82:83]
.Ltmp36:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v33, v80, v40
	v_add3_u32 v40, v87, v86, v65
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 34, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v21, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v40
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v86, s26, s66, v33
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 30, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s67, 0, s26
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v82, s31, s66, v21
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[84:85]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s31
	v_add_co_u32 v84, s31, s66, v33
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v40, 28, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[82:83]
.Ltmp40:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v21, v0
	v_dual_mov_b32 v33, v1 :: v_dual_max_f32 v80, v3, v3
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v65, v2 :: v_dual_max_f32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v21, v21, v21
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v80, v3
	v_max_f32_e32 v33, v33, v33
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp45:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[84:85]
.Ltmp46:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v3 :: v_dual_max_f32 v33, v1, v33
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v0, v21
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s36, s66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s36
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v21
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[0:1]
.Ltmp51:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[86:87]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v40, v40
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 26, v6
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v21, v0
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v1, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s38, s66, v40
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v40, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v65
	v_max_f32_e32 v1, v33, v1
	v_max_f32_e32 v33, v80, v80
.Ltmp59:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v80, 24, v6
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v65, v2
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v33 :: v_dual_max_f32 v40, v40, v40
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s39, s66, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v33, v3 :: v_dual_max_f32 v0, v0, v40
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v65, v65
.Ltmp67:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[82:83]
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v21
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp71:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[84:85]
.Ltmp72:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v40, v33, v33 :: v_dual_lshlrev_b32 v33, 4, v4
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v65, v1 :: v_dual_lshlrev_b32 v4, 3, v63
	v_mov_b32_e32 v21, v2
	v_add_nc_u32_e32 v63, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v40
.Ltmp75:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 3, v8
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v7, v33
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v1, v1, v65
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v65, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v21 :: v_dual_lshlrev_b32 v21, 5, v27
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v27, 0, v33
	v_add3_u32 v40, v63, v65, v4
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v63, 22, v6
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v27, v21, v4
.Ltmp84:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 18, v6
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v40, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp86:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v86, s39, s66, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v87, null, s67, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s44, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v83, null, s67, 0, s44
	v_add_co_u32 v84, s44, s66, v21
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[82:83]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s48, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v21, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v6
	v_or_b32_e32 v4, 12, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[86:87]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s48, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v85, null, s67, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v86, s48, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s67, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s54, s66, v4
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v27, v0, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[84:85]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v40, v0
	v_div_scale_f32 v40, vcc_lo, v21, 0x40e00000, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s54, s66, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v40, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s67, 0, s54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v65, v63
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v27, v4, v40
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v83, 0x2b8cbccc, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[84:85]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v80, v0
	v_max_f32_e32 v80, 0x2b8cbccc, v3
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v83
	v_fma_f32 v1, -v63, v65, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v82, 6, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v27, v4, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v3
	v_div_scale_f32 v40, s60, v2, 0x40e00000, v2
	v_fmac_f32_e32 v65, v1, v65
	v_div_fmas_f32 v4, v27, v0, v4
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s66, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v40, v65
	v_fma_f32 v82, -v3, v84, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[86:87]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v21
	v_fma_f32 v21, -v63, v27, v40
	v_rcp_f32_e32 v86, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v82, v84
	v_div_scale_f32 v82, s61, v83, 0x40e00000, v83
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v21, v65
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v4.h
	v_mov_b16_e32 v21.h, v87.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v88, v82, v84
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v89, -v85, v86, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v21
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v21, -v3, v88, v82
	v_fma_f32 v0, -v63, v27, v40
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v40, s62, v80, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v88, v21, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v4, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v0, v65, v27
	v_mul_f32_e32 v27, v40, v86
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v89, 0xffff0000, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_fma_f32 v2, -v3, v88, v82
	v_fma_f32 v3, -v85, v27, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v89, v89, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v84, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v3, v86
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v65
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v1, -v85, v27, v40
	v_div_fixup_f32 v2, v2, 0x40e00000, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v89, v89, v81
	v_div_scale_f32 v91, null, v89, v89, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v86, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v65, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v86, vcc_lo, v64, v89, v64
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v63, v1, 0x40e00000, v80
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v2.h
	v_mov_b16_e32 v80.h, v87.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v40, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v0, v27, 0x7fff
	v_mov_b16_e32 v87.l, v63.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v86, v84
	v_fma_f32 v80, -v83, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, s60, v81, v89, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v65, v88, v86
	v_fmac_f32_e32 v85, v80, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v63, v82, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v1
	v_and_b32_e32 v82, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v0, v84
	v_rcp_f32_e32 v0, v91
	v_mul_f32_e32 v93, v92, v85
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 2, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v65, v88, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v83, v93, v92
	v_div_fmas_f32 v65, v65, v84, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v91, v0, 1.0
	v_fmac_f32_e32 v93, v86, v85
	v_div_scale_f32 v88, s62, v70, v89, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v64, v65, v89, v64
	v_fmac_f32_e32 v0, v95, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v83, v93, v92
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v92, v88, v0
	v_div_scale_f32 v90, null, v89, v89, v69
	v_div_scale_f32 v95, null, v89, v89, v74
	v_div_scale_f32 v96, null, v89, v89, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v90
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v65, v65, v85, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v96
	v_div_scale_f32 v85, s60, v73, v89, v73
	v_div_fixup_f32 v65, v65, v89, v81
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v94, -v90, v87, 1.0
	v_fma_f32 v93, -v95, v97, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v98, -v96, v86, 1.0
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s61, v69, v89, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v93, null, v89, v89, v76
	v_mul_f32_e32 v84, v94, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v86, v98, v86
	v_div_scale_f32 v98, null, v89, v89, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v90, v84, v94
	v_fmac_f32_e32 v84, v83, v87
	v_fma_f32 v83, -v91, v92, v88
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v63, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v90, v84, v94
	v_fmac_f32_e32 v92, v83, v0
	v_div_scale_f32 v90, s63, v74, v89, v74
	v_div_scale_f32 v94, null, v89, v89, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v91, v92, v88
	v_rcp_f32_e32 v88, v93
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v91, v90, v97
	v_div_fixup_f32 v69, v81, v89, v69
	v_div_fmas_f32 v0, v84, v0, v92
	v_rcp_f32_e32 v84, v94
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v81, s61, v76, v89, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v70, v0, v89, v70
	v_fma_f32 v92, -v93, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v92, v88 :: v_dual_mul_f32 v83, v85, v86
	v_div_scale_f32 v92, null, v89, v89, v78
	v_fma_f32 v87, -v96, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v87, v86
	v_fma_f32 v87, -v95, v91, v90
	v_fma_f32 v0, -v96, v83, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v87, v97
	v_fma_f32 v85, -v94, v84, 1.0
	v_div_scale_f32 v87, null, v89, v89, v79
	v_div_fmas_f32 v0, v0, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v91, v90
	v_fmac_f32_e32 v84, v85, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v87
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v86, v81, v88
	v_div_scale_f32 v90, s60, v77, v89, v77
	v_div_fmas_f32 v83, v83, v97, v91
	v_div_fixup_f32 v73, v0, v89, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v91, -v93, v86, v81
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v97, v92
	v_fma_f32 v96, -v87, v85, 1.0
	v_div_fixup_f32 v74, v83, v89, v74
	v_div_scale_f32 v83, s62, v79, v89, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v91, v88 :: v_dual_fmac_f32 v85, v96, v85
	v_mul_f32_e32 v95, v90, v84
	v_div_scale_f32 v91, null, v89, v89, v75
	v_fma_f32 v81, -v93, v86, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v92, v97, 1.0
	v_fma_f32 v0, -v94, v95, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v81, v81, v88, v86
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v0, v84 :: v_dual_mul_f32 v0, v83, v85
	v_fmac_f32_e32 v97, v96, v97
	v_div_fixup_f32 v76, v81, v89, v76
	v_div_scale_f32 v96, s63, v78, v89, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v86, -v94, v95, v90
	v_fma_f32 v88, -v87, v0, v83
	v_fma_f32 v94, -v91, v93, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v96, v97
	v_div_fmas_f32 v84, v86, v84, v95
	v_rcp_f32_e32 v86, v98
	v_fmac_f32_e32 v0, v88, v85
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s60, v75, v89, v75
	v_div_fixup_f32 v77, v84, v89, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v87, v0, v83
	v_div_scale_f32 v87, null, v89, v89, v71
	v_fma_f32 v88, -v92, v90, v96
	v_fma_f32 v84, -v98, v86, 1.0
	v_mul_f32_e32 v83, v94, v93
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v88, v97
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v88, s61, v72, v89, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v87, v84, 1.0
	v_fmac_f32_e32 v84, v95, v84
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v85, -v91, v83, v94
	v_fma_f32 v81, -v92, v90, v96
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v92, null, v89, v89, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v93
	v_div_fmas_f32 v81, v81, v97, v90
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v79, v0, v89, v79
	v_div_scale_f32 v95, null, v89, v89, v67
	v_fma_f32 v0, -v91, v83, v94
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v92
	v_div_fixup_f32 v78, v81, v89, v78
	v_fma_f32 v81, -v98, v90, v88
	v_div_fmas_f32 v0, v0, v93, v83
	v_rcp_f32_e32 v83, v95
	v_div_scale_f32 v91, s62, v71, v89, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v81, v86
	v_div_fixup_f32 v75, v0, v89, v75
	v_div_scale_f32 v93, s60, v68, v89, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v85, 1.0
	v_fma_f32 v0, -v98, v90, v88
	v_mul_f32_e32 v81, v91, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v95, v83, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v86, v90
	v_fma_f32 v88, -v87, v81, v91
	v_fmac_f32_e32 v83, v98, v83
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v89, v89, v66
	v_div_fixup_f32 v72, v0, v89, v72
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v96, v93, v85
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v92, v96, v93
	v_fmac_f32_e32 v81, v88, v84
	v_div_scale_f32 v88, s61, v67, v89, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v96, v86, v85
	v_fma_f32 v90, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v87, v81, v91
	v_mul_f32_e32 v86, v88, v83
	v_div_scale_f32 v87, s63, v66, v89, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v90, v97
	v_div_scale_f32 v90, null, v82, v82, v62
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v92, v96, v93
	v_fma_f32 v84, -v95, v86, v88
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, null, v82, v82, v61
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v86, v84, v83
	v_div_fmas_f32 v81, v81, v85, v96
	v_rcp_f32_e32 v84, v93
	v_div_fixup_f32 v71, v0, v89, v71
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v0, -v95, v86, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v90, v91, 1.0
	v_mul_f32_e32 v92, v87, v97
	v_div_fixup_f32 v68, v81, v89, v68
	v_div_scale_f32 v81, s60, v62, v82, v62
	v_fmac_f32_e32 v91, v96, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v94, v92, v87
	v_div_scale_f32 v88, null, v82, v82, v60
	v_div_fmas_f32 v0, v0, v83, v86
	v_mul_f32_e32 v86, v81, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v85, v97
	v_fma_f32 v85, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v67, v0, v89, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v94, v92, v87
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s61, v61, v82, v61
	v_div_scale_f32 v94, null, v82, v82, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v87, v84
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v86, v81
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v96, -v88, v85, 1.0
	v_fma_f32 v0, -v93, v95, v87
	v_div_fixup_f32 v66, v83, v89, v66
	v_fmac_f32_e32 v86, v92, v91
	v_div_scale_f32 v89, null, v82, v82, v58
	v_fmac_f32_e32 v85, v96, v85
	v_div_scale_f32 v83, s62, v60, v82, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v81, -v90, v86, v81
	v_dual_fmac_f32 v95, v0, v84 :: v_dual_mul_f32 v0, v83, v85
	v_rcp_f32_e32 v90, v89
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s63, v59, v82, v59
	v_div_fmas_f32 v81, v81, v91, v86
	v_fma_f32 v86, -v93, v95, v87
	v_div_scale_f32 v96, null, v82, v82, v57
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v88, v0, v83
	v_mul_f32_e32 v91, v92, v97
	v_fma_f32 v93, -v89, v90, 1.0
	v_div_fmas_f32 v84, v86, v84, v95
	v_rcp_f32_e32 v86, v96
	v_div_fixup_f32 v62, v81, v82, v62
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s60, v58, v82, v58
	v_fmac_f32_e32 v0, v87, v85
	v_fma_f32 v87, -v94, v91, v92
	v_div_fixup_f32 v61, v84, v82, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v96, v86, 1.0
	v_fma_f32 v81, -v88, v0, v83
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v87, null, v82, v82, v56
	v_mul_f32_e32 v83, v93, v90
	v_fmac_f32_e32 v86, v84, v86
	v_div_fmas_f32 v0, v81, v85, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_fma_f32 v81, -v94, v91, v92
	v_fma_f32 v85, -v89, v83, v93
	v_div_scale_f32 v92, null, v82, v82, v55
	v_div_fixup_f32 v60, v0, v82, v60
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v85, v90
	v_div_fmas_f32 v81, v81, v97, v91
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_scale_f32 v88, s61, v57, v82, v57
	v_fma_f32 v0, -v89, v83, v93
	v_rcp_f32_e32 v85, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v82, v82, v54
	v_div_fmas_f32 v0, v0, v90, v83
	v_mul_f32_e32 v91, v88, v86
	v_div_fixup_f32 v59, v81, v82, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v89, s62, v56, v82, v56
	v_fma_f32 v81, -v96, v91, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v92, v85, 1.0
	v_div_scale_f32 v90, s60, v55, v82, v55
	v_div_fixup_f32 v58, v0, v82, v58
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v93, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_scale_f32 v93, null, v82, v82, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v97, v83
	v_fmac_f32_e32 v91, v81, v86
	v_mul_f32_e32 v81, v89, v84
	v_div_scale_f32 v97, null, v82, v82, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v96, v91, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v88, -v87, v81, v89
	v_rcp_f32_e32 v96, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v86, v91
	v_fmac_f32_e32 v81, v88, v84
	v_fma_f32 v86, -v92, v95, v90
	v_div_scale_f32 v88, s61, v54, v82, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v57, v0, v82, v57
	v_fma_f32 v0, -v87, v81, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v93, v96, 1.0
	v_dual_fmac_f32 v95, v86, v85 :: v_dual_mul_f32 v86, v88, v83
	v_div_scale_f32 v89, null, v82, v82, v52
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v87, s63, v53, v82, v53
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v92, v95, v90
	v_fma_f32 v84, -v94, v86, v88
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v82, v82, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v87
	v_div_fixup_f32 v56, v0, v82, v56
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v0, -v94, v86, v88
	v_div_fixup_f32 v55, v81, v82, v55
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v81, s60, v52, v82, v52
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v88, null, v82, v82, v50
	v_div_fmas_f32 v0, v0, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v81, v90
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v87, s61, v51, v82, v51
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v54, v0, v82, v54
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v89, v86, v81
	v_mul_f32_e32 v94, v87, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v93, null, v82, v82, v49
	v_fmac_f32_e32 v86, v91, v90
	v_fma_f32 v0, -v92, v94, v87
	v_div_scale_f32 v91, null, v82, v82, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v81, -v89, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v94, v0, v84
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v53, v83, v82, v53
	v_div_scale_f32 v83, s62, v50, v82, v50
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v89, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v81, v82, v52
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v97
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v51, v84, v82, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v91, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v97, v86, 1.0
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s60, v48, v82, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v86, v84, v86 :: v_dual_fmac_f32 v85, v95, v85
	v_fma_f32 v95, -v93, v96, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v0, v83, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v49, v82, v49
	v_fma_f32 v87, -v88, v0, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v90, v95, v96
	v_fmac_f32_e32 v0, v87, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v88, v0, v83
	v_mul_f32_e32 v83, v92, v89
	v_fma_f32 v87, -v93, v90, v95
	v_div_scale_f32 v88, s61, v47, v82, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v85, -v91, v83, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v90, v87, v96
	v_div_scale_f32 v87, null, v80, v80, v46
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v0, v0, v82, v50
	v_fma_f32 v81, -v93, v90, v95
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v80, v80, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v86
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v81, v82, v49
	v_fma_f32 v94, -v87, v84, 1.0
	v_fmac_f32_e32 v83, v85, v89
	v_rcp_f32_e32 v85, v93
	v_fma_f32 v81, -v97, v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v50, -v91, v83, v92
	v_div_scale_f32 v94, null, v80, v80, v44
	v_div_scale_f32 v91, s62, v46, v80, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v50, v50, v89, v83
	v_fma_f32 v92, -v93, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v86 :: v_dual_mul_f32 v81, v91, v84
	v_rcp_f32_e32 v83, v94
	v_div_fixup_f32 v48, v50, v82, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, null, v80, v80, v43
	v_fma_f32 v50, -v97, v90, v88
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, s60, v45, v80, v45
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v88, -v87, v81, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_fmas_f32 v50, v50, v86, v90
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v88, v84
	v_div_scale_f32 v88, s61, v44, v80, v44
	v_div_fixup_f32 v47, v50, v82, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v92, v96, 1.0
	v_fma_f32 v50, -v87, v81, v91
	v_div_scale_f32 v87, null, v80, v80, v42
	v_div_scale_f32 v91, null, v80, v80, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v90, v96 :: v_dual_fmac_f32 v83, v97, v83
	v_mul_f32_e32 v95, v89, v85
	v_div_fmas_f32 v50, v50, v84, v81
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v88, v83
	v_fma_f32 v86, -v93, v95, v89
	v_div_fixup_f32 v46, v50, v80, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v94, v82, v88
	v_fmac_f32_e32 v95, v86, v85
	v_div_scale_f32 v86, s63, v43, v80, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v86, v96
	v_fmac_f32_e32 v82, v84, v83
	v_fma_f32 v81, -v93, v95, v89
	v_rcp_f32_e32 v89, v87
	v_rcp_f32_e32 v84, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v94, v82, v88
	v_div_fmas_f32 v81, v81, v85, v95
	v_fma_f32 v85, -v92, v90, v86
	v_div_scale_f32 v88, null, v80, v80, v39
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v45, v81, v80, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v90, v85, v96
	v_div_scale_f32 v81, s60, v42, v80, v42
	v_fma_f32 v85, -v91, v84, 1.0
	v_fmac_f32_e32 v89, v93, v89
	v_div_fmas_f32 v50, v50, v83, v82
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v81, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_fixup_f32 v44, v50, v80, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v88, v85, 1.0
	v_fmac_f32_e32 v85, v94, v85
	v_fma_f32 v82, -v92, v90, v86
	v_div_scale_f32 v86, s61, v41, v80, v41
	v_div_scale_f32 v92, null, v80, v80, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v96, v90
	v_fma_f32 v90, -v87, v83, v81
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v96, null, v80, v80, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v90, v89
	v_mul_f32_e32 v93, v86, v84
	v_div_scale_f32 v90, null, v80, v80, v37
	v_div_fixup_f32 v43, v82, v80, v43
	v_fma_f32 v81, -v87, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v91, v93, v86
	v_div_scale_f32 v82, s62, v39, v80, v39
	v_fma_f32 v94, -v92, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v89, v83
	v_fmac_f32_e32 v93, v50, v84
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v87, v90
	v_mul_f32_e32 v50, v82, v85
	v_div_fixup_f32 v42, v81, v80, v42
	v_fma_f32 v83, -v91, v93, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v88, v50, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v50, v86, v85
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v41, v83, v80, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s60, v37, v80, v37
	v_fma_f32 v81, -v88, v50, v82
	v_fma_f32 v83, -v96, v84, 1.0
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v38, v80, v38
	v_mul_f32_e32 v82, v91, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v83, v84
	v_div_fmas_f32 v50, v81, v85, v50
	v_mul_f32_e32 v89, v94, v95
	v_div_scale_f32 v88, s61, v36, v80, v36
	v_fma_f32 v85, -v90, v82, v91
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v39, v50, v80, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v85, v87
	v_fmac_f32_e32 v89, v86, v95
	v_div_scale_f32 v86, null, v80, v80, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v90, v82, v91
	v_div_scale_f32 v90, s62, v35, v80, v35
	v_fma_f32 v81, -v92, v89, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v80, v80, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v38, v81, v80, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v86, v83, 1.0
	v_fma_f32 v81, -v96, v89, v88
	v_div_fmas_f32 v50, v50, v87, v82
	v_div_scale_f32 v87, s60, v34, v80, v34
	v_fmac_f32_e32 v83, v93, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v80, v80, v32
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v80, v80, v31
	v_div_fixup_f32 v37, v50, v80, v37
	v_fma_f32 v50, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_mul_f32_e32 v94, v87, v85
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v93, v82, 1.0
	v_div_fmas_f32 v50, v50, v84, v89
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v88, s61, v32, v80, v32
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v36, v50, v80, v36
	v_fma_f32 v50, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v86, s63, v31, v80, v31
	v_div_scale_f32 v89, null, v80, v80, v29
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v90, v86, v95
	v_div_fmas_f32 v50, v50, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v92, null, v80, v80, v28
	v_div_fmas_f32 v81, v81, v85, v94
	v_fmac_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v35, v50, v80, v35
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v50, -v93, v84, v88
	v_fmac_f32_e32 v90, v85, v95
	v_div_fixup_f32 v34, v81, v80, v34
	v_div_scale_f32 v81, s60, v29, v80, v29
	v_fmac_f32_e32 v87, v94, v87
	v_div_fmas_f32 v50, v50, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v93, null, v63, v63, v25
	v_mul_f32_e32 v84, v81, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v86, s61, v28, v80, v28
	v_fma_f32 v90, -v89, v84, v81
	v_div_fixup_f32 v31, v82, v80, v31
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v63, v63, v26
	v_fmac_f32_e32 v84, v90, v87
	v_div_fixup_f32 v32, v50, v80, v32
	v_div_scale_f32 v95, null, v63, v63, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v81, -v89, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_scale_f32 v89, null, v63, v63, v24
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v81, v81, v87, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s60, v25, v63, v25
	v_fma_f32 v90, -v85, v88, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v29, v81, v80, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v96, v87, v82 :: v_dual_mul_f32 v91, v86, v83
	v_fmac_f32_e32 v88, v90, v88
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v81, -v95, v97, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v92, v91, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v50, v83
	v_div_scale_f32 v50, s62, v26, v63, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v50, v88
	v_fma_f32 v92, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v85, v86, v50
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v24, v63, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v94, v88
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v91, v92, v90
	v_fma_f32 v84, -v93, v96, v87
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v50, -v85, v86, v50
	v_div_fixup_f32 v28, v83, v80, v28
	v_fma_f32 v80, -v89, v91, v92
	v_div_scale_f32 v83, null, v63, v63, v20
	v_fmac_f32_e32 v96, v84, v82
	v_div_fmas_f32 v50, v50, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v63, v63, v19
	v_div_fixup_f32 v26, v50, v63, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v84, v82, v96
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v83, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v25, v82, v63, v25
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s60, v20, v63, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fmac_f32_e32 v97, v81, v97
	v_div_scale_f32 v81, s61, v22, v63, v22
	v_mul_f32_e32 v50, v87, v80
	v_fma_f32 v84, -v89, v91, v92
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s62, v19, v63, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v90, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v24, v84, v63, v24
	v_div_scale_f32 v84, null, v63, v63, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v84
	v_mul_f32_e32 v85, v81, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v85, v89, v97
	v_fma_f32 v89, -v83, v50, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v95, v85, v81
	v_fmac_f32_e32 v50, v89, v80
	v_div_scale_f32 v89, null, v63, v63, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v97, v85
	v_mul_f32_e32 v85, v82, v88
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v22, v81, v63, v22
	v_fma_f32 v81, -v83, v50, v87
	v_fma_f32 v83, -v86, v85, v82
	v_fma_f32 v87, -v84, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v50, v81, v80, v50
	v_div_scale_f32 v81, s60, v18, v63, v18
	v_fmac_f32_e32 v90, v87, v90
	v_fmac_f32_e32 v85, v83, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v50, v63, v20
	v_fma_f32 v50, -v89, v91, 1.0
	v_div_scale_f32 v87, null, v63, v63, v15
	v_fma_f32 v82, -v86, v85, v82
	v_mul_f32_e32 v86, v81, v90
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v80, null, v63, v63, v16
	v_rcp_f32_e32 v93, v87
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_fmac_f32_e32 v91, v50, v91
	v_div_scale_f32 v50, s61, v17, v63, v17
	v_rcp_f32_e32 v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v85, v90
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v88, v50, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v87, v93, 1.0
	v_div_scale_f32 v94, s62, v16, v63, v16
	v_fma_f32 v81, -v84, v86, v81
	v_fma_f32 v85, -v89, v88, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v93, v95, v93
	v_fma_f32 v92, -v80, v83, 1.0
	v_div_scale_f32 v95, s63, v15, v63, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v85, v91
	v_div_fmas_f32 v81, v81, v90, v86
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v63, v63, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v50, -v89, v88, v50
	v_div_scale_f32 v86, null, v63, v63, v13
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v96, v92
	v_dual_mul_f32 v97, v94, v83 :: v_dual_mul_f32 v84, v95, v93
	v_div_fmas_f32 v50, v50, v91, v88
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v19, v82, v63, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v80, v97, v94
	v_div_fixup_f32 v18, v81, v63, v18
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v17, v50, v63, v17
	v_fma_f32 v85, -v92, v96, 1.0
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_div_scale_f32 v90, null, v63, v63, v9
	v_fma_f32 v81, -v86, v88, 1.0
	v_fmac_f32_e32 v96, v85, v96
	v_fma_f32 v80, -v80, v97, v94
	v_div_scale_f32 v85, s60, v14, v63, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v81, v88
	v_fmac_f32_e32 v84, v82, v93
	v_div_fmas_f32 v80, v80, v83, v97
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v82, v85, v96
	v_div_scale_f32 v81, null, v63, v63, v11
	v_fma_f32 v83, -v87, v84, v95
	v_div_fixup_f32 v16, v80, v63, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v92, v82, v85
	v_div_scale_f32 v80, null, v63, v63, v12
	v_div_fmas_f32 v83, v83, v93, v84
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v87, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v83, v63, v15
	v_div_scale_f32 v83, null, v63, v63, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v83, v87, 1.0
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v50, -v92, v82, v85
	v_rcp_f32_e32 v85, v81
	v_div_scale_f32 v94, s62, v10, v63, v10
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v96, v82
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, vcc_lo, v13, v63, v13
	v_mul_f32_e32 v98, v94, v87
	v_div_fixup_f32 v14, v50, v63, v14
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v91, -v81, v85, 1.0
	v_fma_f32 v96, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v80, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s61, v11, v63, v11
	v_fmac_f32_e32 v82, v50, v82
	v_div_scale_f32 v50, s60, v12, v63, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v97, v91, v85
	v_mul_f32_e32 v95, v50, v82
	v_mul_f32_e32 v89, v84, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v86, v89, v84
	v_fmac_f32_e32 v89, v93, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v80, v95, v50
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s63, v9, v63, v9
	v_fma_f32 v84, -v86, v89, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v93, v82
	v_fma_f32 v93, -v83, v98, v94
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v86, -v81, v97, v91
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v50, -v80, v95, v50
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v62, v62, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v93, v87
	v_fma_f32 v80, -v90, v99, v96
	v_div_fixup_f32 v13, v84, v63, v13
	v_div_fmas_f32 v50, v50, v82, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v86, v85
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v80, -v83, v98, v94
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v12, v50, v63, v12
	v_fma_f32 v81, -v81, v97, v91
	v_fma_f32 v82, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v11, v81, v63, v11
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v80, v63, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v82, v63, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v89, v41
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v86, 15, v47
	v_and_b32_e32 v47, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v89, 16, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v64
	v_rndne_f32_e32 v64, v69
	v_rndne_f32_e32 v69, v73
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v76, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v53
	v_cvt_i32_f32_e32 v91, v35
	v_cvt_i32_f32_e32 v93, v20
	v_cvt_i32_f32_e32 v97, v16
	v_and_b32_e32 v53, 15, v74
	v_and_b32_e32 v35, 15, v59
	v_and_b32_e32 v74, 15, v0
	v_and_b32_e32 v59, 15, v37
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v20, 15, v24
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v105
	v_and_b32_e32 v22, 0x2f0, v30
	v_lshlrev_b32_e32 v24, 8, v89
	v_and_b32_e32 v25, 64, v105
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0xe000, v0, v24
	v_xor_b32_e32 v22, v22, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v80, v54
	v_cvt_i32_f32_e32 v84, v46
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v8, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v88, v42
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v101, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v57
	v_cvt_i32_f32_e32 v95, v18
	v_cvt_i32_f32_e32 v102, v11
	v_cvt_i32_f32_e32 v103, v10
	v_cvt_i32_f32_e32 v104, v9
	v_and_b32_e32 v9, 15, v50
	v_and_b32_e32 v57, 15, v76
	v_and_b32_e32 v10, 15, v62
	v_and_b32_e32 v18, 15, v60
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v58, 15, v80
	v_and_b32_e32 v11, 15, v84
	v_and_b32_e32 v12, 15, v26
	v_and_b32_e32 v60, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v8, 0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_cvt_i32_f32_e32 v83, v49
	v_cvt_i32_f32_e32 v90, v36
	v_cvt_i32_f32_e32 v92, v34
	v_cvt_i32_f32_e32 v94, v19
	v_and_b32_e32 v34, 15, v65
	v_and_b32_e32 v41, 15, v69
	v_and_b32_e32 v49, 15, v73
	v_and_b32_e32 v65, 15, v75
	v_and_b32_e32 v73, 15, v71
	v_and_b32_e32 v19, 15, v44
	v_and_b32_e32 v36, 15, v43
	v_and_b32_e32 v43, 15, v88
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v44, 15, v93
	v_and_b32_e32 v76, 15, v101
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v78, v61
	v_cvt_i32_f32_e32 v87, v45
	v_cvt_i32_f32_e32 v98, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[9:12]
	ds_store_b128 v8, v[41:44] offset:256
	ds_store_b128 v8, v[57:60] offset:2048
	ds_store_b128 v8, v[73:76] offset:2304
	v_lshlrev_b32_e32 v8, 6, v105
	v_lshlrev_b32_e32 v10, 5, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_cvt_i32_f32_e32 v96, v17
	v_cvt_i32_f32_e32 v99, v14
	v_cvt_i32_f32_e32 v100, v13
	v_and_b32_e32 v13, 15, v63
	v_and_b32_e32 v17, 15, v64
	v_and_b32_e32 v61, 15, v77
	v_and_b32_e32 v14, 15, v78
	v_and_b32_e32 v62, 15, v82
	v_and_b32_e32 v15, 15, v87
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v9, v0, 16, 0
	v_xad_u32 v11, v0, 32, 0
	v_lshlrev_b32_e32 v12, 2, v89
	v_and_or_b32 v8, 0x300, v8, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v70
	v_and_b32_e32 v77, 15, v68
	v_and_b32_e32 v85, 15, v66
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v66, 15, v52
	v_and_b32_e32 v70, 15, v51
	v_and_b32_e32 v78, 15, v83
	v_and_b32_e32 v82, 15, v48
	v_and_b32_e32 v51, 15, v39
	v_and_b32_e32 v79, 15, v31
	v_and_b32_e32 v48, 15, v94
	v_and_b32_e32 v52, 15, v95
	v_and_b32_e32 v80, 15, v102
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[45:48] offset:256
	ds_store_b128 v9, v[61:64] offset:2048
	ds_store_b128 v9, v[77:80] offset:2304
	ds_store_b128 v11, v[17:20]
	ds_store_b128 v11, v[49:52] offset:256
	v_or3_b32 v19, v7, v8, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v69, 15, v72
	v_and_b32_e32 v81, 15, v67
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v71, 15, v92
	v_and_b32_e32 v68, 15, v99
	v_and_b32_e32 v72, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v83, 15, v29
	v_and_b32_e32 v87, 15, v28
	v_and_b32_e32 v84, 15, v103
	v_and_b32_e32 v88, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v20, 0, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v38
	v_and_b32_e32 v56, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[65:68] offset:2048
	ds_store_b128 v11, v[81:84] offset:2304
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[53:56] offset:256
	ds_store_b128 v0, v[69:72] offset:2048
	ds_store_b128 v0, v[85:88] offset:2304
	v_xad_u32 v0, 0x4020, v19, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v20
	ds_load_b128 v[11:14], v20 offset:128
	ds_load_b128 v[15:18], v20 offset:4096
	ds_load_b128 v[22:25], v20 offset:4224
	v_xad_u32 v20, 0x8040, v19, 0
	ds_load_b128 v[28:31], v0
	ds_load_b128 v[32:35], v0 offset:128
	ds_load_b128 v[36:39], v0 offset:4096
	ds_load_b128 v[41:44], v0 offset:4224
	v_xad_u32 v0, 0xc060, v19, 0
	ds_load_b128 v[45:48], v20
	ds_load_b128 v[49:52], v20 offset:128
	ds_load_b128 v[53:56], v20 offset:4096
	ds_load_b128 v[57:60], v20 offset:4224
	ds_load_b128 v[61:64], v0 offset:4096
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[69:72], v0 offset:128
	ds_load_b128 v[73:76], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s60, s66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s67, 0, s60
	v_add_co_u32 v77, s60, s66, v6
	v_add_co_ci_u32_e64 v78, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v0, 0x7f, v105
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[19:20]
	v_cmp_le_i64_e64 s63, s[64:65], v[77:78]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	v_lshl_or_b32 v0, s75, 7, v0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v45, v53, 4, v45
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[19:20]
	v_cmp_gt_i64_e64 s64, s[72:73], v[77:78]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v61, v22, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v77, v15, 4, v7
	v_lshl_or_b32 v62, v23, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v78, v36, 4, v28
	v_lshl_or_b32 v63, v24, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v28, 38, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v38, 4, v30
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v64, v25, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v37, 4, v29
	v_lshl_or_b32 v43, v43, 4, v34
	v_lshl_or_b32 v44, v44, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v22, 30, v3
	v_add_nc_u32_e32 v24, 32, v3
	v_add_nc_u32_e32 v25, 34, v3
	v_add_nc_u32_e32 v26, 36, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v68, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v28, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v20, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v68, s72, v[0:1]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[24:25], null, v25, s72, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[25:26], null, v26, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v77, v20, s[64:67], 0 offen
	buffer_store_b8 v78, v0, s[64:67], 0 offen
	buffer_store_b8 v45, v4, s[64:67], 0 offen
	buffer_store_b8 v53, v6, s[64:67], 0 offen
	buffer_store_b8 v61, v7, s[64:67], 0 offen
	buffer_store_b8 v41, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v21.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v0, s[64:67], 0 offen
	buffer_store_b8 v57, v4, s[64:67], 0 offen
	buffer_store_b8 v65, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v46, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v0, s[64:67], 0 offen
	buffer_store_b8 v62, v4, s[64:67], 0 offen
	buffer_store_b8 v42, v6, s[64:67], 0 offen
	buffer_store_b8 v50, v7, s[64:67], 0 offen
	buffer_store_b8 v58, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v0, s[64:67], 0 offen
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v47, v6, s[64:67], 0 offen
	buffer_store_b8 v55, v7, s[64:67], 0 offen
	buffer_store_b8 v63, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v43, v0, s[64:67], 0 offen
	buffer_store_b8 v51, v4, s[64:67], 0 offen
	buffer_store_b8 v59, v6, s[64:67], 0 offen
	buffer_store_b8 v67, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v48, v0, s[64:67], 0 offen
	buffer_store_b8 v56, v4, s[64:67], 0 offen
	buffer_store_b8 v64, v6, s[64:67], 0 offen
	buffer_store_b8 v44, v7, s[64:67], 0 offen
	buffer_store_b8 v52, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v105
	v_lshrrev_b32_e32 v6, 2, v89
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v106
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v105
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 316
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
		.amdhsa_next_free_sgpr 76
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 316
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21896
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 316
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
    .private_segment_fixed_size: 316
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 78
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
