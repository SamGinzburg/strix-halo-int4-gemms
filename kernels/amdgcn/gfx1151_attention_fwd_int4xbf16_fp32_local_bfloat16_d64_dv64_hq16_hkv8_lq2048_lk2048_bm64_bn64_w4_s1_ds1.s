	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s20, s[0:1], 0x84
	s_load_b32 s71, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v38, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v38
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s5, s2
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 0x60, v0
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v64, 16, v0
	v_lshlrev_b32_e32 v47, 2, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v37, 30, v33
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s71, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s71, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s5, s6
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s71, s8, v[105:106]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x800
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s67, 0, v64
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s82, s10, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v35
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s83, s9, s11
	s_mov_b32 s9, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v1, v65
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s83, s83, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s82, s83
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s5, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v39, v6, v2
	ds_bpermute_b32 v40, v6, v3
	ds_bpermute_b32 v41, v6, v4
	ds_bpermute_b32 v45, v6, v5
	ds_bpermute_b32 v42, v8, v2
	ds_bpermute_b32 v43, v8, v3
	ds_bpermute_b32 v44, v8, v4
	ds_bpermute_b32 v46, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v34, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x1054, v2, s67
	v_cndmask_b32_e64 v3, 0x3276, v3, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v120, 0x5040504, v2
	v_and_b32_e32 v123, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr123
.LBB0_3:                                ; %Flow398
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s70, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v36, 0x78, v0
	v_or_b32_e32 v63, s8, v1
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v117, v8
	v_mov_b32_e32 v115, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v114, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v109, v40, v43, s67
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v2, 12, v0
	v_cndmask_b32_e64 v113, v43, v40, s67
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 3, v0
	v_and_b32_e32 v3, 0x7c, v47
	v_bfe_i32 v6, v0, 5, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v106, v41, v44, s67
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s85, s13, 0xffff
	s_mov_b32 s84, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v108, v39, v42, s67
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v34, v1, s[84:87], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v110, v44, v41, s67
	v_cndmask_b32_e64 v112, v42, v39, s67
	v_dual_mov_b32 v18, v17 :: v_dual_lshlrev_b32 v39, 2, v35
	v_lshrrev_b32_e32 v43, 3, v35
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_and_b32 v44, 28, v0
	v_bfe_i32 v38, v0, 3, 1
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v52, 5, v40
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v54, 0x2040, v6
	v_cndmask_b32_e64 v57, 0x1054, v11, s67
	v_mov_b32_e32 v20, v17
	v_lshl_or_b32 v35, v35, 4, v3
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 3, v36
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_and_b32 v1, 7, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v107, v45, v46, s67
	v_cndmask_b32_e64 v111, v46, v45, s67
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_lshlrev_b32 v13, 4, v0
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v45, 24, v0
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v0
	v_cndmask_b32_e64 v5, 0x1020, 0, vcc_lo
	v_bfe_i32 v8, v0, 2, 1
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v9, 8, v0
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_lshlrev_b32 v10, 6, v64
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s13, s1, 0x10007
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v7, 4, v0
	v_xor_b32_e32 v142, v35, v43
	v_lshl_or_b32 v35, v44, 7, v52
	v_and_or_b32 v38, 0x1020, v38, v54
	v_lshl_or_b32 v43, v57, 8, v57
	s_add_i32 s13, s1, s13
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_lshlrev_b32 v48, 4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v46, s5, v36
	v_xor_b32_e32 v133, v13, v45
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v47, 1, v2
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v49, 5, v2
	v_and_b32_e32 v53, 0x310, v4
	v_and_or_b32 v55, 0x2040, v8, v5
	v_lshl_or_b32 v56, v9, 4, v10
	v_cndmask_b32_e64 v58, 0x3276, v12, s67
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s13, s13, 0x80000
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v37, 0x80, v37
	v_dual_mov_b32 v201, 0xff800000 :: v_dual_lshlrev_b32 v118, 3, v1
	v_lshl_or_b32 v50, v45, 1, v39
	v_lshl_add_u32 v59, v7, 9, 0
	v_mov_b32_e32 v4, v17
	v_xor_b32_e32 v38, v38, v52
	v_or3_b32 v148, v35, v39, v44
	v_and_b32_e32 v39, 0x540054, v43
	s_sext_i32_i16 s13, s13
	v_mul_lo_u32 v35, s19, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 4
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s13, s13, 10
	scratch_store_b32 off, v63, off         ; 4-byte Folded Spill
	v_cndmask_b32_e64 v42, 0x2040, 0, s67
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v51, 0x630, v13
	v_mov_b32_e32 v10, v17
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v63, s20, v46
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v60, 16, v46
	v_or_b32_e32 v61, 32, v46
	v_or_b32_e32 v62, 48, v46
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v46
	v_xor_b32_e32 v46, 8, v133
	v_lshl_or_b32 v141, v65, 5, v47
	v_lshl_or_b32 v45, v45, 8, v48
	v_lshl_or_b32 v40, v40, 11, v49
	v_lshl_or_b32 v47, v58, 8, v58
	v_or3_b32 v143, v55, v56, v53
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s12, 14
	s_and_b32 s103, s13, 0xfffff800
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[119:120], null, s70, v36, v[118:119]
	v_add3_u32 v36, v59, v37, v38
	v_lshl_or_b32 v37, v39, 4, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s103, s103, s3
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v48, s20, v60
	v_mov_b32_e32 v25, v17
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v49, s20, v61
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v53, s20, v62
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v149, 0, v46
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 1, v118
	v_or_b32_e32 v135, 2, v118
	v_or_b32_e32 v136, 3, v118
	v_or_b32_e32 v137, 4, v118
	v_or_b32_e32 v138, 5, v118
	v_or_b32_e32 v139, 6, v118
	v_or_b32_e32 v140, 7, v118
	v_xor_b32_e32 v146, v45, v50
	v_or3_b32 v147, v51, v42, v40
	v_and_b32_e32 v40, 0x760076, v47
	v_xor_b32_e32 v42, 8, v141
	v_xor_b32_e32 v43, 16, v141
	v_xor_b32_e32 v44, 24, v141
	v_xor_b32_e32 v45, 0x810, v142
	v_xor_b32_e32 v46, 32, v143
	v_xor_b32_e32 v47, 64, v143
	v_xor_b32_e32 v50, 0x60, v143
	v_or_b32_e32 v163, s103, v33
	v_lshl_add_u32 v33, s19, 4, v35
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v120, 0x5040504, v37
	v_add_nc_u32_e32 v179, v36, v64
	v_mad_u64_u32 v[36:37], null, s19, 48, v[35:36]
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v154, s7, v49
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v156, 0, v42
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v158, 0, v44
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v160, 0, v46
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v162, 0, v50
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v153, s7, v48
	v_dual_mov_b32 v114, v17 :: v_dual_add_nc_u32 v155, s7, v53
	v_dual_mov_b32 v116, v17 :: v_dual_add_nc_u32 v157, 0, v43
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v150, s6, v48
	v_subrev_nc_u32_e32 v151, s6, v49
	v_subrev_nc_u32_e32 v152, s6, v53
	v_lshl_or_b32 v38, v40, 4, v40
	v_add_nc_u32_e32 v159, 0, v45
	v_add_nc_u32_e32 v161, 0, v47
	v_xor_b32_e32 v39, 0x2040, v146
	v_xor_b32_e32 v40, 16, v147
	v_xor_b32_e32 v42, 32, v147
	v_xor_b32_e32 v43, 48, v147
	v_xor_b32_e32 v44, 64, v147
	v_xor_b32_e32 v45, 0x50, v147
	v_xor_b32_e32 v46, 0x60, v147
	v_xor_b32_e32 v47, 0x70, v147
	v_xor_b32_e32 v48, 4, v148
	v_xor_b32_e32 v49, 8, v148
	v_xor_b32_e32 v50, 12, v148
	v_xor_b32_e32 v51, 16, v148
	v_xor_b32_e32 v52, 20, v148
	v_xor_b32_e32 v53, 24, v148
	v_xor_b32_e32 v54, 28, v148
	v_lshl_add_u32 v37, s19, 5, v35
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v206, v33, v118
	v_add_nc_u32_e32 v127, v33, v66
	v_add_nc_u32_e32 v207, v33, v135
	v_add_nc_u32_e32 v208, v33, v136
	v_add_nc_u32_e32 v209, v33, v137
	v_add_nc_u32_e32 v210, v33, v138
	v_add_nc_u32_e32 v211, v33, v139
	v_add_nc_u32_e32 v212, v33, v140
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s13, s16, 0x3fb8aa3b
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v144, s6, v63
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s12
	v_lshl_add_u32 v128, v65, 1, 0
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v164, 0, v39
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v254, 0, v42
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v145, s7, v63
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v126, 0, v44
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v122, 0, v45
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v124, 0, v48
	v_dual_mov_b32 v115, v17 :: v_dual_add_nc_u32 v174, 0, v50
	v_dual_mov_b32 v117, v17 :: v_dual_add_nc_u32 v176, 0, v52
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s70, v118
	v_and_b32_e32 v123, 0x7060706, v38
	v_add_nc_u32_e32 v253, 0, v40
	v_add_nc_u32_e32 v255, 0, v43
	v_add_nc_u32_e32 v125, 0, v46
	v_add_nc_u32_e32 v121, 0, v47
	v_add_nc_u32_e32 v173, 0, v49
	v_add_nc_u32_e32 v175, 0, v51
	v_add_nc_u32_e32 v177, 0, v53
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_add_nc_u32 v180, v35, v118
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v134, v37, v118
	v_add_nc_u32_e32 v198, v37, v66
	v_add_nc_u32_e32 v199, v37, v135
	v_add_nc_u32_e32 v200, v37, v136
	v_add_nc_u32_e32 v202, v37, v137
	v_add_nc_u32_e32 v203, v37, v138
	v_add_nc_u32_e32 v204, v37, v139
	v_add_nc_u32_e32 v205, v37, v140
	v_add_nc_u32_e32 v213, v36, v118
	v_add_nc_u32_e32 v214, v36, v66
	v_add_nc_u32_e32 v215, v36, v135
	v_add_nc_u32_e32 v216, v36, v136
	v_add_nc_u32_e32 v217, v36, v137
	v_add_nc_u32_e32 v218, v36, v138
	v_add_nc_u32_e32 v219, v36, v139
	v_add_nc_u32_e32 v220, v36, v140
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s5, s19, s5
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s104, s1, s6
	s_lshl_b32 s100, s70, 4
	s_lshl_b32 s101, s70, 5
	s_mov_b32 s102, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s98, s86
	s_mov_b32 s99, s87
	s_and_b32 s89, s89, 0xffff
	s_and_b32 s97, s11, 0xffff
	s_mov_b32 s92, s14
	s_mov_b32 s96, s10
	s_mov_b32 s84, s8
	s_mov_b32 s85, s9
	s_mov_b32 s93, s15
	s_add_i32 s104, s104, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v221, s13, v33 :: v_dual_add_nc_u32 v178, 0, v54
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 vcc_hi, s82, s103
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v133
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, vcc_hi, s71, v[105:106]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s69, s104, s82
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v149, v[35:36]
	v_add_nc_u32_e32 v33, 0, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[58:61], v157 offset1:1
	ds_load_2addr_stride64_b64 v[88:91], v157 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[50:53], v33 offset1:1
	ds_load_2addr_stride64_b64 v[80:83], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[54:57], v156 offset1:1
	ds_load_2addr_stride64_b64 v[84:87], v156 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s72 :: v_dual_mov_b32 v38, s77
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v35, s74
	v_mov_b32_e32 v40, s79
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v37, s76
	v_mov_b32_e32 v39, s78
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[72:75], v158 offset1:1
	ds_load_2addr_stride64_b64 v[92:95], v158 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[112:113], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[54:55], v[110:111], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[58:59], v[108:109], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[106:107], v[42:49] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v73, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v72, v43
	v_cvt_f32_i32_e32 v71, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v45
	v_cvt_f32_i32_e32 v69, v46
	v_cvt_f32_i32_e32 v68, v47
	v_cvt_f32_i32_e32 v66, v48
	v_cvt_f32_i32_e32 v64, v49
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[52:53], v[112:113], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[56:57], v[110:111], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[60:61], v[108:109], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[74:75], v[106:107], v[42:49] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v65, v43
	v_cvt_f32_i32_e32 v63, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v60, v47
	v_cvt_f32_i32_e32 v58, v48
	v_cvt_f32_i32_e32 v56, v49
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[80:81], v[112:113], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[82:83], v[112:113], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[84:85], v[110:111], v[42:49] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v34, 2, v180
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[74:81], v[86:87], v[110:111], v[74:81] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v38, 7, v180
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v33, v144
	v_cmp_ge_i32_e64 s6, v33, v150
	v_cmp_ge_i32_e64 s11, v33, v151
	v_cmp_ge_i32_e64 s3, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v33, v145
	v_cmp_le_i32_e64 s7, v33, v153
	v_cmp_le_i32_e64 s12, v33, v154
	v_cmp_le_i32_e64 s10, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 1, v118
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v37, 5, v180
	v_add_nc_u32_e32 v36, 3, v180
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[88:89], v[108:109], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[90:91], v[108:109], v[74:81] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v35, 1, v180
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s69, v34, 2
	v_add_lshl_u32 v38, s69, v38, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v33, v144
	v_cmp_ge_i32_e64 s8, v33, v150
	v_cmp_ge_i32_e64 s25, v33, v151
	v_cmp_ge_i32_e64 s15, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v33, v145
	v_cmp_le_i32_e64 s13, v33, v153
	v_cmp_le_i32_e64 s26, v33, v154
	v_cmp_le_i32_e64 s24, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v135
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, vcc_lo, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s69, v37, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s9, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s69, v36, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v33, v144
	v_cmp_ge_i32_e64 s19, v33, v150
	v_cmp_ge_i32_e64 s29, v33, v151
	v_cmp_ge_i32_e64 s27, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v33, v145
	v_cmp_le_i32_e64 s21, v33, v153
	v_cmp_le_i32_e64 s30, v33, v154
	v_cmp_le_i32_e64 s28, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v136
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s17, s20
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[92:93], v[106:107], v[42:49] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[74:81], v[94:95], v[106:107], v[74:81] neg_lo:[1,1,0]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v33, v144
	v_cmp_ge_i32_e64 s22, v33, v150
	v_cmp_ge_i32_e64 s34, v33, v151
	v_cmp_ge_i32_e64 s31, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v33, v145
	v_cmp_le_i32_e64 s23, v33, v153
	v_cmp_le_i32_e64 s35, v33, v154
	v_cmp_le_i32_e64 s33, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v137
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s16, s18
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s69, v35, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, vcc_lo, s14
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v33, v144
	v_cmp_ge_i32_e64 s42, v33, v150
	v_cmp_ge_i32_e64 s38, v33, v151
	v_cmp_ge_i32_e64 s36, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s54, v33, v145
	v_cmp_le_i32_e64 s44, v33, v153
	v_cmp_le_i32_e64 s39, v33, v154
	v_cmp_le_i32_e64 s37, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v138
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, vcc_lo, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v45
	v_cvt_f32_i32_e32 v53, v46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v33, v144
	v_cmp_ge_i32_e64 s53, v33, v150
	v_cmp_ge_i32_e64 s43, v33, v151
	v_cmp_ge_i32_e64 s40, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v33, v145
	v_cmp_le_i32_e64 s55, v33, v153
	v_cmp_le_i32_e64 s45, v33, v154
	v_cmp_le_i32_e64 s41, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v139
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s58, s59
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v47
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, vcc_lo, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v33, v144
	v_cmp_ge_i32_e64 s50, v33, v150
	v_cmp_ge_i32_e64 s48, v33, v151
	v_cmp_ge_i32_e64 s46, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v33, v145
	v_cmp_le_i32_e64 s51, v33, v153
	v_cmp_le_i32_e64 s49, v33, v154
	v_cmp_le_i32_e64 s47, v33, v155
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s82, v140
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v75
	v_cvt_f32_i32_e32 v47, v76
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v33, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v33, v145
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s61, v33, v150
	v_cmp_ge_i32_e64 s62, v33, v151
	v_cmp_ge_i32_e64 s64, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v33, v153
	v_cmp_le_i32_e64 s66, v33, v154
	v_cmp_le_i32_e64 s68, v33, v155
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s69, v180, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s60, s63
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v77
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v78
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s20
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	s_clause 0x5
	buffer_load_b32 v33, v33, s[88:91], 0 offen
	buffer_load_b32 v34, v34, s[88:91], 0 offen
	buffer_load_b32 v75, v38, s[88:91], 0 offen
	buffer_load_b32 v76, v37, s[88:91], 0 offen
	buffer_load_b32 v77, v36, s[88:91], 0 offen
	buffer_load_b32 v78, v35, s[88:91], 0 offen
	v_add_lshl_u32 v37, s69, v206, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v39, s69, v207, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v44
	v_cvt_f32_i32_e32 v44, v79
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s8, s13
	s_and_b32 s8, s19, s21
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v79, s69, v212, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s22, s23
	s_and_b32 s23, s61, s65
	s_and_b32 s6, vcc_lo, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v74, s69, v210, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s53, s55
	s_and_b32 s19, vcc_lo, s7
	s_and_b32 s7, vcc_lo, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s69, v208, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s6
	v_add_lshl_u32 v38, s69, v127, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, vcc_lo, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s22, vcc_lo, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s23
	v_cndmask_b32_e64 v74, 0x80000000, v74, s21
	v_cndmask_b32_e64 v40, 0x80000000, v40, s22
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v42
	v_cvt_f32_i32_e32 v57, v43
	v_cvt_f32_i32_e32 v43, v80
	v_cvt_f32_i32_e32 v42, v81
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s19
	s_clause 0x5
	buffer_load_b32 v37, v37, s[88:91], 0 offen
	buffer_load_b32 v39, v39, s[88:91], 0 offen
	buffer_load_b32 v79, v79, s[88:91], 0 offen
	buffer_load_b32 v80, v74, s[88:91], 0 offen
	buffer_load_b32 v81, v40, s[88:91], 0 offen
	buffer_load_b32 v82, v38, s[88:91], 0 offen
	v_add_lshl_u32 v91, s69, v214, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s15, s24
	s_and_b32 s36, s36, s37
	s_and_b32 s37, vcc_lo, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v35, 4, v180
	v_add_nc_u32_e32 v36, 6, v180
	v_cndmask_b32_e64 v99, 0x80000000, v91, s37
	v_add_lshl_u32 v91, s69, v215, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s28
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s69, v35, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, vcc_lo, s27
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s69, v36, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s52, s54
	s_and_b32 s14, s56, s57
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s69, v211, 2
	v_cndmask_b32_e64 v92, 0x80000000, v91, s28
	v_add_lshl_u32 v91, s69, v216, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s42, s44
	s_and_b32 s13, s50, s51
	s_and_b32 s11, s11, s12
	s_and_b32 s12, s25, s26
	s_and_b32 s25, s29, s30
	s_and_b32 s29, s38, s39
	s_and_b32 s39, s62, s66
	s_and_b32 s31, s31, s33
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s42, vcc_lo, s39
	s_and_b32 s39, vcc_lo, s31
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s14
	v_cndmask_b32_e64 v40, 0x80000000, v40, s13
	v_cndmask_b32_e64 v100, 0x80000000, v91, s39
	v_add_lshl_u32 v91, s69, v217, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, vcc_lo, s29
	s_and_b32 s29, vcc_lo, s36
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2
	buffer_load_b32 v35, v35, s[88:91], 0 offen
	buffer_load_b32 v36, v36, s[88:91], 0 offen
	buffer_load_b32 v40, v40, s[88:91], 0 offen
	v_cndmask_b32_e64 v93, 0x80000000, v91, s29
	v_add_lshl_u32 v91, s69, v218, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v87, s69, v203, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, vcc_lo, s40
	s_and_b32 s26, s34, s35
	s_and_b32 s30, s43, s45
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v74, s69, v134, 2
	v_cndmask_b32_e64 v101, 0x80000000, v91, s40
	v_add_lshl_u32 v91, s69, v219, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s48, s49
	s_and_b32 s41, s46, s47
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v84, s69, v199, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, vcc_lo, s26
	s_and_b32 s26, vcc_lo, s30
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v86, s69, v202, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s10
	s_and_b32 s10, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v88, 0x80000000, v87, s26
	v_add_lshl_u32 v87, s69, v204, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, vcc_lo, s34
	s_and_b32 s34, vcc_lo, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v83, s69, v198, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v85, s69, v200, 2
	v_add_lshl_u32 v89, s69, v205, 2
	v_add_lshl_u32 v90, s69, v213, 2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s10
	v_cndmask_b32_e64 v94, 0x80000000, v91, s34
	v_add_lshl_u32 v91, s69, v220, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s64, s68
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v84, 0x80000000, v84, s12
	v_cndmask_b32_e64 v86, 0x80000000, v86, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v87, 0x80000000, v87, s35
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s43
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v83, 0x80000000, v83, s24
	v_cndmask_b32_e64 v85, 0x80000000, v85, s38
	v_cndmask_b32_e64 v89, 0x80000000, v89, s42
	v_cndmask_b32_e64 v90, 0x80000000, v90, s11
	v_cndmask_b32_e64 v102, 0x80000000, v91, s41
	s_clause 0xf
	buffer_load_b32 v95, v74, s[88:91], 0 offen
	buffer_load_b32 v96, v84, s[88:91], 0 offen
	buffer_load_b32 v97, v86, s[88:91], 0 offen
	buffer_load_b32 v98, v87, s[88:91], 0 offen
	buffer_load_b32 v91, v90, s[88:91], 0 offen
	buffer_load_b32 v92, v92, s[88:91], 0 offen
	buffer_load_b32 v93, v93, s[88:91], 0 offen
	buffer_load_b32 v94, v94, s[88:91], 0 offen
	buffer_load_b32 v87, v89, s[88:91], 0 offen
	buffer_load_b32 v88, v88, s[88:91], 0 offen
	buffer_load_b32 v89, v85, s[88:91], 0 offen
	buffer_load_b32 v90, v83, s[88:91], 0 offen
	buffer_load_b32 v83, v102, s[88:91], 0 offen
	buffer_load_b32 v84, v101, s[88:91], 0 offen
	buffer_load_b32 v85, v100, s[88:91], 0 offen
	buffer_load_b32 v86, v99, s[88:91], 0 offen
	v_or_b32_e32 v99, 2, v163
	v_or_b32_e32 v100, 4, v163
	v_or_b32_e32 v101, 6, v163
	v_or_b32_e32 v102, 8, v163
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v74, s82, v163, 1
	v_add_lshl_u32 v99, v99, s82, 1
	v_add_lshl_u32 v100, v100, s82, 1
	v_add_lshl_u32 v101, v101, s82, 1
	v_add_lshl_u32 v102, v102, s82, 1
	s_clause 0x4
	buffer_load_u16 v74, v74, s[92:95], 0 offen
	buffer_load_u16 v99, v99, s[92:95], 0 offen
	buffer_load_u16 v100, v100, s[92:95], 0 offen
	buffer_load_u16 v101, v101, s[92:95], 0 offen
	buffer_load_u16 v103, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 10, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v104, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 12, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v227, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 14, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v228, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 16, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v229, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 18, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v230, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 20, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v231, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 22, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v232, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 24, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v233, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 26, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v234, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 28, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v235, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 30, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v236, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 32, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v237, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 34, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v238, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 36, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v239, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 38, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v240, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 40, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v241, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 42, v163
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(51)
	v_cndmask_b32_e64 v33, 0xff800000, v33, s1
	s_waitcnt vmcnt(50)
	v_cndmask_b32_e64 v34, 0xff800000, v34, s5
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v242, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 44, v163
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v33
	v_cmp_neq_f32_e64 s60, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v243, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 46, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v244, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 48, v163
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(48)
	v_cndmask_b32_e64 v37, 0xff800000, v37, s6
	s_waitcnt vmcnt(47)
	v_cndmask_b32_e64 v38, 0xff800000, v39, s7
	v_add_lshl_u32 v39, s69, v209, 2
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v252, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 50, v163
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v37
	v_cmp_neq_f32_e64 s57, 0xff800000, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s6, s15
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b32 v39, v39, s[88:91], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v251, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 52, v163
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v250, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 54, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v249, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 56, v163
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(47)
	v_cndmask_b32_e64 v35, 0xff800000, v35, s9
	s_waitcnt vmcnt(46)
	v_cndmask_b32_e64 v36, 0xff800000, v36, s14
	s_waitcnt vmcnt(45)
	v_cndmask_b32_e64 v40, 0xff800000, v40, s13
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v248, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 58, v163
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v35
	v_cmp_neq_f32_e64 s31, 0xff800000, v36
	v_cmp_neq_f32_e64 s62, 0xff800000, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, s9, s25
	s_and_b32 s25, s14, s31
	s_and_b32 s31, s1, s30
	s_and_b32 s30, s5, s60
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v247, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 60, v163
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s7, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s82, 1
	buffer_load_u16 v246, v102, s[92:95], 0 offen
	v_or_b32_e32 v102, 62, v163
	v_add_lshl_u32 v102, v102, s82, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s82, s82, 64
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v245, v102, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v102, 0, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s8
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v102, v[33:36]
	ds_store_b128 v102, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v78, s16
	v_cndmask_b32_e64 v34, 0xff800000, v77, s17
	v_cndmask_b32_e64 v35, 0xff800000, v76, s18
	v_cndmask_b32_e64 v36, 0xff800000, v75, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s61, 0xff800000, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0xff800000, v82, s19
	v_cndmask_b32_e64 v38, 0xff800000, v81, s22
	v_cndmask_b32_e64 v39, 0xff800000, v80, s21
	v_cndmask_b32_e64 v40, 0xff800000, v79, s23
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v33
	v_cmp_neq_f32_e64 s46, 0xff800000, v34
	v_cmp_neq_f32_e64 s49, 0xff800000, v35
	v_cmp_neq_f32_e64 s50, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v164, v[33:36]
	ds_store_b128 v164, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v95, s10
	v_cndmask_b32_e64 v34, 0xff800000, v96, s12
	v_cndmask_b32_e64 v35, 0xff800000, v97, s33
	v_cndmask_b32_e64 v36, 0xff800000, v98, s35
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v37
	v_cmp_neq_f32_e64 s43, 0xff800000, v38
	v_cmp_neq_f32_e64 s44, 0xff800000, v39
	v_cmp_neq_f32_e64 s45, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0xff800000, v91, s11
	v_cndmask_b32_e64 v38, 0xff800000, v92, s28
	v_cndmask_b32_e64 v39, 0xff800000, v93, s29
	v_cndmask_b32_e64 v40, 0xff800000, v94, s34
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s65, 0xff800000, v33
	v_cmp_neq_f32_e64 s66, 0xff800000, v34
	v_cmp_neq_f32_e64 s68, 0xff800000, v35
	v_cmp_neq_f32_e64 s69, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v102, v[33:36] offset:1024
	ds_store_b128 v102, v[37:40] offset:1536
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v90, s24
	v_cndmask_b32_e64 v34, 0xff800000, v89, s38
	v_cndmask_b32_e64 v35, 0xff800000, v88, s26
	v_cndmask_b32_e64 v36, 0xff800000, v87, s42
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s58, 0xff800000, v37
	v_cmp_neq_f32_e64 s59, 0xff800000, v38
	v_cmp_neq_f32_e64 s63, 0xff800000, v39
	v_cmp_neq_f32_e64 s64, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0xff800000, v86, s37
	v_cndmask_b32_e64 v38, 0xff800000, v85, s39
	v_cndmask_b32_e64 v39, 0xff800000, v84, s40
	v_cndmask_b32_e64 v40, 0xff800000, v83, s41
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s53, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v164, v[33:36] offset:1024
	ds_store_b128 v164, v[37:40] offset:1536
	v_add_nc_u32_e32 v33, 0, v147
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v37
	v_cmp_neq_f32_e64 s48, 0xff800000, v38
	v_cmp_neq_f32_e64 s51, 0xff800000, v39
	v_cmp_neq_f32_e64 s52, 0xff800000, v40
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v33
	ds_load_b128 v[75:78], v253
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s55, 0xff800000, v35
	v_cmp_neq_f32_e64 s56, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[165:168], v125
	ds_load_b128 v[169:172], v121
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s25
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s54, 0xff800000, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s27
	s_and_b32 s9, s8, s61
	s_and_b32 s8, s13, s62
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s6, s35, s69
	s_and_b32 s7, s33, s68
	s_and_b32 s12, s12, s66
	s_and_b32 s13, s10, s65
	s_and_b32 s1, s34, s64
	s_and_b32 s5, s29, s63
	s_and_b32 s10, s28, s59
	s_and_b32 s11, s11, s58
	s_and_b32 s33, s20, s50
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v35, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v39
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v36, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v75
	v_mul_f32_e32 v75, 0x3fb8aa3b, v76
	v_dual_mul_f32 v39, 0x3fb8aa3b, v77 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v78
	ds_load_b128 v[76:79], v254
	ds_load_b128 v[89:92], v255
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v225, 0x3fb8aa3b, v165 :: v_dual_mul_f32 v102, 0x3fb8aa3b, v171
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s18, s49
	s_and_b32 s35, s17, s46
	s_and_b32 s36, s16, s36
	s_and_b32 s20, s23, s45
	s_and_b32 s21, s21, s44
	s_and_b32 s28, s22, s43
	s_and_b32 s29, s19, s3
	s_and_b32 s18, s42, s56
	s_and_b32 s19, s26, s55
	s_and_b32 s26, s24, s53
	s_and_b32 s24, s38, s54
	s_and_b32 s16, s41, s52
	s_and_b32 s17, s40, s51
	s_and_b32 s22, s39, s48
	s_and_b32 s23, s37, s47
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v76
	v_mul_f32_e32 v76, 0x3fb8aa3b, v77
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v83, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v84, 0x3fb8aa3b, v91
	v_mul_f32_e32 v77, 0x3fb8aa3b, v90
	v_dual_mul_f32 v81, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v82, 0x3fb8aa3b, v166
	ds_load_b128 v[89:92], v126
	ds_load_b128 v[93:96], v122
	v_dual_mul_f32 v88, 0x3fb8aa3b, v78 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v79
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v224, 0x3fb8aa3b, v168
	v_mul_f32_e32 v226, 0x3fb8aa3b, v167
	v_mul_f32_e32 v98, 0x3fb8aa3b, v169
	v_mul_f32_e32 v86, 0x3fb8aa3b, v170
	s_mul_i32 s3, s70, 48
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s82, s83
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v89, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v78, 0x3fb8aa3b, v90
	v_mul_f32_e32 v90, 0x3fb8aa3b, v96
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v96.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s30
	v_cndmask_b32_e64 v34, 0, 1, s31
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v79, 0x3fb8aa3b, v94 :: v_dual_mul_f32 v94, 0x3fb8aa3b, v172
	v_mul_f32_e32 v92, 0x3fb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v91, 0x3fb8aa3b, v91
	v_mul_f32_e32 v93, 0x3fb8aa3b, v93
	v_mul_f32_e32 v95, 0x3fb8aa3b, v95
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v96.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s8
	v_cndmask_b32_e64 v34, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v97.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s14
	v_cndmask_b32_e64 v34, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v97.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s6
	v_cndmask_b32_e64 v34, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v165.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s12
	v_cndmask_b32_e64 v34, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v165.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s1
	v_cndmask_b32_e64 v34, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s11
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	v_add_nc_u32_e32 v34, 0, v142
	ds_store_2addr_b32 v34, v96, v97 offset1:32
	ds_store_2addr_b32 v34, v165, v33 offset0:64 offset1:96
	v_cndmask_b32_e64 v33, 0, 1, s33
	v_cndmask_b32_e64 v34, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v96.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s35
	v_cndmask_b32_e64 v34, 0, 1, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v96.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s20
	v_cndmask_b32_e64 v34, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v97.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s28
	v_cndmask_b32_e64 v34, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v97.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s18
	v_cndmask_b32_e64 v34, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v165.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s24
	v_cndmask_b32_e64 v34, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v165.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s16
	v_cndmask_b32_e64 v34, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s23
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v221, v73 :: v_dual_lshlrev_b32 v73, 16, v74
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v159, v96, v97 offset1:32
	ds_store_2addr_b32 v159, v165, v33 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v35, v34, v73 :: v_dual_mul_f32 v34, v221, v72
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v72, 16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v34, v72
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v221, v71 :: v_dual_lshlrev_b32 v71, 16, v100
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v80, v34, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v34, v70
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v221, v69 :: v_dual_lshlrev_b32 v69, 16, v103
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v37, v34, v69 :: v_dual_mul_f32 v34, v221, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, v34, v68 :: v_dual_mul_f32 v34, v221, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v227
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v34, v66 :: v_dual_mul_f32 v34, v221, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v40, v34, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v229
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, v34, v64 :: v_dual_mul_f32 v34, v221, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, v34, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v231
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v88, v34, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v62, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v85, v34, v62 :: v_dual_mul_f32 v34, v221, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v233
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v83, v34, v61 :: v_dual_mul_f32 v34, v221, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, v34, v60 :: v_dual_mul_f32 v34, v221, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v235
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v84, v34, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v81, v34, v56 :: v_dual_mul_f32 v34, v221, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v237
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v89, v34, v56 :: v_dual_mul_f32 v34, v221, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v78, v34, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v239
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v91, v34, v55 :: v_dual_mul_f32 v34, v221, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v92, v34, v54
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v241
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v93, v34, v53 :: v_dual_mul_f32 v34, v221, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, v34, v52 :: v_dual_mul_f32 v34, v221, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v50, 16, v243
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v95, v34, v50 :: v_dual_mul_f32 v34, v221, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, v34, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v252
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v225, v34, v48 :: v_dual_mul_f32 v34, v221, v49
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v48, 16, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, v34, v48
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v34, v221, v47 :: v_dual_lshlrev_b32 v47, 16, v250
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v226, v34, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v46
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v224, v34, v46
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v34, v221, v45 :: v_dual_lshlrev_b32 v45, 16, v248
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v98, v34, v45
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v44
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v44, 16, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, v34, v44
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v34, v221, v43 :: v_dual_lshlrev_b32 v43, 16, v246
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v102, v34, v43
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v221, v42
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v94, v34, v42
	v_mad_u64_u32 v[33:34], null, vcc_hi, s70, v[119:120]
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v33
	v_add_lshl_u32 v43, v33, s100, 1
	v_add_lshl_u32 v44, v33, s101, 1
	v_add_lshl_u32 v46, v33, s3, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v33, 0, v148
	ds_load_b32 v34, v33
	ds_load_b32 v45, v124
	ds_load_b32 v47, v173
	ds_load_b32 v48, v174
	ds_load_b32 v49, v175
	ds_load_b32 v50, v176
	ds_load_b32 v51, v177
	ds_load_b32 v52, v178
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v33, 0x10000, v34
	v_and_b32_e32 v53, 0x1000000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s64, 0, v33
	v_and_b32_e32 v33, 0x10000, v45
	v_cmp_ne_u32_e64 s65, 0, v53
	v_and_b32_e32 v53, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s62, 0, v33
	v_and_b32_e32 v33, 0x10000, v47
	v_cmp_eq_u32_e64 s63, 1, v53
	v_and_b32_e32 v53, 0x1000000, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s65
	v_cndmask_b32_e64 v39, 0xff800000, v39, s62
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s55, 0, v33
	v_and_b32_e32 v33, 0x10000, v48
	v_cmp_ne_u32_e64 s61, 0, v53
	v_and_b32_e32 v53, 1, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s53, 0, v33
	v_and_b32_e32 v33, 0x10000, v49
	v_cmp_eq_u32_e64 s58, 1, v53
	v_and_b32_e32 v53, 0x1000000, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s61
	v_cndmask_b32_e64 v103, 0xff800000, v84, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v33
	v_and_b32_e32 v33, 0x10000, v50
	v_cmp_ne_u32_e64 s57, 0, v53
	v_and_b32_e32 v53, 1, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v88, s55
	v_cndmask_b32_e64 v91, 0xff800000, v91, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v33
	v_and_b32_e32 v33, 0x10000, v51
	v_cmp_eq_u32_e64 s56, 1, v53
	v_and_b32_e32 v53, 0x1000000, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v87, s58
	v_cndmask_b32_e64 v95, 0xff800000, v95, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v33
	v_and_b32_e32 v33, 0x10000, v52
	v_cmp_ne_u32_e64 s54, 0, v53
	v_and_b32_e32 v53, 1, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v85, s57
	v_cndmask_b32_e64 v101, 0xff800000, v83, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v33
	v_and_b32_e32 v33, 1, v34
	v_lshrrev_b16 v34.l, 8, v34.l
	v_cmp_eq_u32_e64 s50, 1, v53
	v_and_b32_e32 v53, 0x1000000, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v81, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s3, 1, v33
	v_and_b16 v34.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v89, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s49, 0, v53
	v_and_b32_e32 v53, 1, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v35, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s68, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v80, s64
	v_cndmask_b32_e64 v83, 0xff800000, v226, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s48, 1, v53
	v_and_b32_e32 v53, 0x1000000, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v38, s68
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v38.l, 8, v45.l
	v_lshrrev_b16 v45.l, 8, v47.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v93, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v53
	v_and_b32_e32 v53, 1, v51
	v_and_b16 v38.l, 1, v38.l
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v92, s49
	v_cndmask_b32_e64 v96, 0xff800000, v90, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s42, 1, v53
	v_and_b32_e32 v53, 0x1000000, v51
	v_cmp_eq_u16_e64 s60, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v48.l
	v_cmp_eq_u16_e64 s66, 1, v38.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v43, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v53
	v_and_b32_e32 v53, 1, v52
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v75, s66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v48, 0x80000000, v44, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v225, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v53
	v_cmp_eq_u16_e64 s59, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v49.l
	v_and_b32_e32 v53, 0x1000000, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v224, s41
	v_cndmask_b32_e64 v85, 0xff800000, v98, s40
	v_cndmask_b32_e64 v98, 0xff800000, v76, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v45.l, 1, v45.l
	v_cmp_ne_u32_e64 s39, 0, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v102, s37
	v_cndmask_b32_e64 v102, 0xff800000, v77, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v225.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s52, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v50.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v94, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v90, 0xff800000, v78, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s51, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v51.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v79, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v45.l, 1, v45.l
	v_cmp_eq_u16_e64 s44, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v52.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v45, 0, v143
	ds_store_b128 v45, v[33:36]
	ds_store_b128 v45, v[89:92] offset:2048
	v_cndmask_b32_e64 v86, 0xff800000, v86, s43
	ds_store_b128 v160, v[37:40]
	ds_store_b128 v160, v[93:96] offset:2048
	ds_store_b128 v161, v[97:100]
	ds_store_b128 v161, v[81:84] offset:2048
	ds_store_b128 v162, v[101:104]
	ds_store_b128 v162, v[85:88] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[42:45], v42, s[96:99], 0 offen
	buffer_load_b128 v[165:168], v47, s[96:99], 0 offen
	buffer_load_b128 v[169:172], v48, s[96:99], 0 offen
	buffer_load_b128 v[181:184], v46, s[96:99], 0 offen
	v_lshlrev_b32_e32 v46, 4, v0
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[77:80], v179
	ds_load_b128 v[69:72], v179 offset:256
	ds_load_b128 v[73:76], v179 offset:1024
	ds_load_b128 v[65:68], v179 offset:1280
	ds_load_b128 v[61:64], v179 offset:512
	ds_load_b128 v[53:56], v179 offset:768
	ds_load_b128 v[57:60], v179 offset:1536
	ds_load_b128 v[49:52], v179 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v46, 0, v46
	s_waitcnt vmcnt(3)
	ds_store_b128 v46, v[42:45]
	s_waitcnt vmcnt(2)
	ds_store_b128 v46, v[165:168] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[169:172] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[181:184] offset:6144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v98, v99, v100
	v_max3_f32 v43, v101, v102, v103
	v_max3_f32 v44, v104, v89, v90
	v_max3_f32 v45, v81, v82, v83
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v91, v92, v93
	v_max3_f32 v44, v94, v95, v96
	v_max3_f32 v43, v43, v44, v45
	v_max_f32_e32 v44, v33, v34
	v_max3_f32 v45, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v35, v45
	v_max3_f32 v45, v39, v40, v97
	v_max3_f32 v42, v44, v45, v42
	v_dual_max_f32 v44, v84, v85 :: v_dual_max_f32 v45, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v86, v45
	v_max3_f32 v42, v42, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s102, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v224, v41, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v224
	v_sub_f32_e32 v33, v33, v224
	v_sub_f32_e32 v35, v35, v224
	v_sub_f32_e32 v36, v36, v224
	v_sub_f32_e32 v37, v37, v224
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v224
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v224
	v_sub_f32_e32 v40, v40, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s68
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_cndmask_b32_e64 v35, 0, v35, s64
	v_cndmask_b32_e64 v36, 0, v36, s65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v225.l, v34.h
	v_cmp_o_f32_e64 s68, v34, v34
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s64, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s66
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v33.h
	v_cmp_o_f32_e64 s63, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s68
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v40, v40
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v34, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v42, v34, v120
	v_perm_b32 v34, v42, v34, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s64
	v_permlanex16_b32 v42, v36, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v120
	v_perm_b32 v36, v42, v36, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v37.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v40.h
	v_add3_u32 v38, v38, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v38, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v42, v38, v120
	v_perm_b32 v38, v42, v38, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v39, v39, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s61
	v_permlanex16_b32 v42, v40, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v42, v40, v120
	v_perm_b32 v40, v42, v40, v123
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v41, v224
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v226, 0, v42, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v43, v128 offset:608
	ds_load_u16_d16 v42, v128 offset:352
	ds_load_u16_d16 v230, v128 offset:768
	ds_load_u16_d16 v227, v128
	ds_load_u16_d16 v237, v128 offset:576
	ds_load_u16_d16 v238, v128 offset:832
	ds_load_u16_d16 v231, v128 offset:1024
	ds_load_u16_d16 v239, v128 offset:1088
	ds_load_u16_d16 v232, v128 offset:1280
	ds_load_u16_d16 v240, v128 offset:1344
	ds_load_u16_d16 v233, v128 offset:1536
	ds_load_u16_d16 v241, v128 offset:1600
	ds_load_u16_d16 v234, v128 offset:1792
	ds_load_u16_d16 v229, v128 offset:512
	ds_load_u16_d16 v228, v128 offset:256
	ds_load_u16_d16 v242, v128 offset:1856
	ds_load_u16_d16 v244, v128 offset:288
	ds_load_u16_d16 v243, v128 offset:32
	ds_load_u16_d16 v235, v128 offset:64
	ds_load_u16_d16 v236, v128 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v42, v128 offset:480
	ds_load_u16_d16 v41, v128 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v227, v128 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v237, v128 offset:704
	ds_load_u16_d16_hi v230, v128 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v238, v128 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v231, v128 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v239, v128 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v232, v128 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v240, v128 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v233, v128 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v241, v128 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v234, v128 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v128 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v228, v128 offset:384
	ds_load_u16_d16 v245, v128 offset:544
	ds_load_u16_d16 v44, v128 offset:864
	ds_load_u16_d16 v45, v128 offset:1120
	ds_load_u16_d16 v46, v128 offset:1376
	ds_load_u16_d16 v47, v128 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v242, v128 offset:1984
	ds_load_u16_d16 v165, v128 offset:2048
	ds_load_u16_d16 v181, v128 offset:2112
	ds_load_u16_d16 v48, v128 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v243, v128 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v235, v128 offset:192
	ds_load_u16_d16 v246, v128 offset:800
	ds_load_u16_d16 v247, v128 offset:1056
	ds_load_u16_d16 v248, v128 offset:1312
	ds_load_u16_d16 v249, v128 offset:1568
	ds_load_u16_d16 v250, v128 offset:1824
	ds_load_u16_d16 v182, v128 offset:2368
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v245, v128 offset:672
	ds_load_u16_d16_hi v43, v128 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v226
	v_mul_f32_e32 v18, v18, v226
	v_mul_f32_e32 v19, v19, v226
	v_mul_f32_e32 v20, v20, v226
	v_mul_f32_e32 v21, v21, v226
	v_mul_f32_e32 v22, v22, v226
	v_mul_f32_e32 v23, v23, v226
	v_mul_f32_e32 v24, v24, v226
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v41, v128 offset:224
	ds_load_u16_d16_hi v244, v128 offset:416
	ds_load_u16_d16_hi v236, v128 offset:448
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v226
	v_mul_f32_e32 v26, v26, v226
	v_mul_f32_e32 v27, v27, v226
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[227:234], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v246, v128 offset:928
	ds_load_u16_d16_hi v44, v128 offset:992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v247, v128 offset:1184
	ds_load_u16_d16_hi v45, v128 offset:1248
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v248, v128 offset:1440
	ds_load_u16_d16_hi v46, v128 offset:1504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v249, v128 offset:1696
	ds_load_u16_d16_hi v47, v128 offset:1760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v250, v128 offset:1952
	ds_load_u16_d16_hi v48, v128 offset:2016
	ds_load_u16_d16_hi v181, v128 offset:2240
	ds_load_u16_d16 v227, v128 offset:2080
	ds_load_u16_d16 v190, v128 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v226
	v_mul_f32_e32 v29, v29, v226
	v_mul_f32_e32 v30, v30, v226
	v_mul_f32_e32 v31, v31, v226
	v_mul_f32_e32 v32, v32, v226
	v_mul_f32_e32 v9, v9, v226
	v_mul_f32_e32 v10, v10, v226
	v_mul_f32_e32 v11, v11, v226
	v_mul_f32_e32 v12, v12, v226
	v_mul_f32_e32 v13, v13, v226
	v_mul_f32_e32 v14, v14, v226
	v_mul_f32_e32 v15, v15, v226
	v_mul_f32_e32 v16, v16, v226
	v_mul_f32_e32 v1, v1, v226
	v_mul_f32_e32 v2, v2, v226
	v_mul_f32_e32 v3, v3, v226
	v_mul_f32_e32 v4, v4, v226
	v_mul_f32_e32 v5, v5, v226
	v_mul_f32_e32 v6, v6, v226
	v_mul_f32_e32 v7, v7, v226
	v_mul_f32_e32 v8, v8, v226
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[243:250], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[235:242], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v166, v128 offset:2304
	ds_load_u16_d16 v167, v128 offset:2560
	ds_load_u16_d16 v183, v128 offset:2624
	ds_load_u16_d16 v168, v128 offset:2816
	ds_load_u16_d16 v184, v128 offset:2880
	ds_load_u16_d16 v169, v128 offset:3072
	ds_load_u16_d16 v185, v128 offset:3136
	ds_load_u16_d16 v170, v128 offset:3328
	ds_load_u16_d16 v186, v128 offset:3392
	ds_load_u16_d16 v171, v128 offset:3584
	ds_load_u16_d16 v187, v128 offset:3648
	ds_load_u16_d16 v172, v128 offset:3840
	ds_load_u16_d16 v188, v128 offset:3904
	ds_load_u16_d16_hi v165, v128 offset:2176
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v97, v224
	v_sub_f32_e32 v34, v98, v224
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v225.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v99, v224
	v_sub_f32_e32 v36, v100, v224
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v101, v224
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v102, v224
	v_sub_f32_e32 v39, v103, v224
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v104, v224
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v228, v128 offset:2336
	ds_load_u16_d16 v229, v128 offset:2592
	ds_load_u16_d16 v230, v128 offset:2848
	ds_load_u16_d16 v231, v128 offset:3104
	ds_load_u16_d16 v232, v128 offset:3360
	ds_load_u16_d16 v233, v128 offset:3616
	ds_load_u16_d16 v234, v128 offset:3872
	ds_load_u16_d16 v98, v128 offset:4416
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v227, v128 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v190, v128 offset:2272
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s58
	v_cndmask_b32_e64 v34, 0, v34, s60
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s55
	v_cndmask_b32_e64 v36, 0, v36, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e64 v225.l, v34.h
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s58, v34, v34
	v_cmp_o_f32_e64 s55, v36, v36
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	v_cndmask_b32_e64 v38, 0, v38, s59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	v_and_b32_e32 v41, 1, v225
	v_mov_b16_e64 v225.l, v36.h
	v_mov_b16_e64 v42.h, v225.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v40, 0, v40, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s58
	v_cmp_o_f32_e64 s53, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v34, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v41, v34, v120
	v_perm_b32 v34, v41, v34, v123
	v_mov_b16_e64 v41.h, v225.h
	v_mov_b16_e32 v41.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v225
	v_mov_b16_e64 v225.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s55
	v_cmp_o_f32_e64 s55, v38, v38
	v_permlanex16_b32 v41, v36, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v120
	v_perm_b32 v36, v41, v36, v123
	v_mov_b16_e64 v41.h, v225.h
	v_mov_b16_e32 v41.l, v37.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v225
	v_mov_b16_e64 v225.l, v40.h
	v_add3_u32 v38, v38, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v120
	v_perm_b32 v38, v41, v38, v123
	v_mov_b16_e64 v41.h, v225.h
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s53
	v_permlanex16_b32 v41, v40, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v120
	v_perm_b32 v40, v41, v40, v123
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v166, v128 offset:2432
	ds_load_u16_d16_hi v182, v128 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v167, v128 offset:2688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v183, v128 offset:2752
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v168, v128 offset:2944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v184, v128 offset:3008
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v169, v128 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v185, v128 offset:3264
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v170, v128 offset:3456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v186, v128 offset:3520
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v171, v128 offset:3712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v187, v128 offset:3776
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v172, v128 offset:3968
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v188, v128 offset:4032
	ds_load_u16_d16 v191, v128 offset:2400
	ds_load_u16_d16 v192, v128 offset:2656
	ds_load_u16_d16 v193, v128 offset:2912
	ds_load_u16_d16 v194, v128 offset:3168
	ds_load_u16_d16 v195, v128 offset:3424
	ds_load_u16_d16 v196, v128 offset:3680
	ds_load_u16_d16 v41, v128 offset:4096
	ds_load_u16_d16 v97, v128 offset:4160
	ds_load_u16_d16 v197, v128 offset:3936
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[165:172], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[181:188], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v228, v128 offset:2464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v191, v128 offset:2528
	ds_load_u16_d16_hi v229, v128 offset:2720
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v192, v128 offset:2784
	ds_load_u16_d16_hi v230, v128 offset:2976
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v193, v128 offset:3040
	ds_load_u16_d16_hi v231, v128 offset:3232
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v194, v128 offset:3296
	ds_load_u16_d16_hi v232, v128 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v195, v128 offset:3552
	ds_load_u16_d16_hi v233, v128 offset:3744
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v196, v128 offset:3808
	ds_load_u16_d16_hi v234, v128 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v197, v128 offset:4064
	ds_load_u16_d16_hi v97, v128 offset:4288
	ds_load_u16_d16 v165, v128 offset:4128
	ds_load_u16_d16 v181, v128 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[227:234], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[190:197], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v89, v224
	v_sub_f32_e32 v34, v90, v224
	v_sub_f32_e32 v35, v91, v224
	v_sub_f32_e32 v36, v92, v224
	v_sub_f32_e32 v37, v93, v224
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v94, v224
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v95, v224
	v_sub_f32_e32 v40, v96, v224
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v166, v128 offset:4384
	ds_load_u16_d16 v167, v128 offset:4640
	ds_load_u16_d16 v168, v128 offset:4896
	ds_load_u16_d16 v169, v128 offset:5152
	ds_load_u16_d16 v170, v128 offset:5408
	ds_load_u16_d16 v171, v128 offset:5664
	ds_load_u16_d16 v172, v128 offset:5920
	ds_load_u16_d16 v191, v128 offset:6464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v165, v128 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v181, v128 offset:4320
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
	v_cndmask_b32_e64 v34, 0, v34, s52
	v_cndmask_b32_e64 v35, 0, v35, s46
	v_cndmask_b32_e64 v36, 0, v36, s49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v33.h
	v_mov_b16_e64 v225.l, v34.h
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s50, v34, v34
	v_cmp_o_f32_e64 s46, v36, v36
	v_and_b32_e32 v42, 1, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s48
	v_cndmask_b32_e64 v38, 0, v38, s51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v42, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v40, v40
	v_permlanex16_b32 v42, v34, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v120
	v_perm_b32 v34, v42, v34, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v35.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v38.h
	v_add3_u32 v36, v36, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s46
	v_cmp_o_f32_e64 s46, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v36, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v42, v36, v120
	v_perm_b32 v36, v42, v36, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v37, v37, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v38, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s46
	v_permlanex16_b32 v42, v38, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v42, v38, v120
	v_perm_b32 v38, v42, v38, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v39.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_add3_u32 v40, v40, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v40, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v120
	v_perm_b32 v40, v42, v40, v123
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v128 offset:4352
	ds_load_u16_d16 v43, v128 offset:4608
	ds_load_u16_d16 v99, v128 offset:4672
	ds_load_u16_d16 v44, v128 offset:4864
	ds_load_u16_d16 v100, v128 offset:4928
	ds_load_u16_d16 v45, v128 offset:5120
	ds_load_u16_d16 v101, v128 offset:5184
	ds_load_u16_d16 v46, v128 offset:5376
	ds_load_u16_d16 v102, v128 offset:5440
	ds_load_u16_d16 v47, v128 offset:5632
	ds_load_u16_d16 v103, v128 offset:5696
	ds_load_u16_d16 v48, v128 offset:5888
	ds_load_u16_d16 v104, v128 offset:5952
	ds_load_u16_d16_hi v41, v128 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v42, v128 offset:4480
	ds_load_u16_d16_hi v98, v128 offset:4544
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v43, v128 offset:4736
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v99, v128 offset:4800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v128 offset:4992
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v100, v128 offset:5056
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v128 offset:5248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v101, v128 offset:5312
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v128 offset:5504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v102, v128 offset:5568
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v128 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v103, v128 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v128 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v104, v128 offset:6080
	ds_load_u16_d16 v182, v128 offset:4448
	ds_load_u16_d16 v183, v128 offset:4704
	ds_load_u16_d16 v184, v128 offset:4960
	ds_load_u16_d16 v185, v128 offset:5216
	ds_load_u16_d16 v186, v128 offset:5472
	ds_load_u16_d16 v187, v128 offset:5728
	ds_load_u16_d16 v89, v128 offset:6144
	ds_load_u16_d16 v190, v128 offset:6208
	ds_load_u16_d16 v188, v128 offset:5984
	ds_load_u16_d16 v90, v128 offset:6400
	ds_load_u16_d16 v91, v128 offset:6656
	ds_load_u16_d16 v192, v128 offset:6720
	ds_load_u16_d16 v92, v128 offset:6912
	ds_load_u16_d16 v193, v128 offset:6976
	ds_load_u16_d16 v93, v128 offset:7168
	ds_load_u16_d16 v194, v128 offset:7232
	ds_load_u16_d16 v94, v128 offset:7424
	ds_load_u16_d16 v195, v128 offset:7488
	ds_load_u16_d16 v95, v128 offset:7680
	ds_load_u16_d16 v196, v128 offset:7744
	ds_load_u16_d16 v96, v128 offset:7936
	ds_load_u16_d16 v197, v128 offset:8000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v128 offset:6272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v166, v128 offset:4512
	ds_load_u16_d16_hi v182, v128 offset:4576
	ds_load_u16_d16_hi v167, v128 offset:4768
	ds_load_u16_d16_hi v183, v128 offset:4832
	ds_load_u16_d16_hi v168, v128 offset:5024
	ds_load_u16_d16_hi v184, v128 offset:5088
	ds_load_u16_d16_hi v169, v128 offset:5280
	ds_load_u16_d16_hi v185, v128 offset:5344
	ds_load_u16_d16_hi v170, v128 offset:5536
	ds_load_u16_d16_hi v186, v128 offset:5600
	ds_load_u16_d16_hi v171, v128 offset:5792
	ds_load_u16_d16_hi v187, v128 offset:5856
	ds_load_u16_d16_hi v172, v128 offset:6048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v188, v128 offset:6112
	ds_load_u16_d16_hi v190, v128 offset:6336
	ds_load_u16_d16 v41, v128 offset:6176
	ds_load_u16_d16 v97, v128 offset:6240
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v225.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v90, v128 offset:6528
	ds_load_u16_d16_hi v191, v128 offset:6592
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v91, v128 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v192, v128 offset:6848
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v128 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v193, v128 offset:7104
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v128 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v194, v128 offset:7360
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v94, v128 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v195, v128 offset:7616
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v95, v128 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v196, v128 offset:7872
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v96, v128 offset:8064
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v197, v128 offset:8128
	ds_load_u16_d16 v98, v128 offset:6496
	ds_load_u16_d16 v99, v128 offset:6752
	ds_load_u16_d16 v100, v128 offset:7008
	ds_load_u16_d16 v101, v128 offset:7264
	ds_load_u16_d16 v102, v128 offset:7520
	ds_load_u16_d16 v103, v128 offset:7776
	ds_load_u16_d16 v104, v128 offset:8032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[165:172], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[181:188], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v81, v224
	v_sub_f32_e32 v34, v82, v224
	v_sub_f32_e32 v35, v83, v224
	v_sub_f32_e32 v36, v84, v224
	v_sub_f32_e32 v37, v85, v224
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v86, v224
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v87, v224
	v_sub_f32_e32 v40, v88, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s42
	v_cndmask_b32_e64 v34, 0, v34, s44
	v_cndmask_b32_e64 v35, 0, v35, s38
	v_cndmask_b32_e64 v36, 0, v36, s41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v33.h
	v_mov_b16_e64 v225.l, v34.h
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s42, v34, v34
	v_cmp_o_f32_e64 s38, v36, v36
	v_and_b32_e32 v42, 1, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	v_cndmask_b32_e64 v38, 0, v38, s43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v42, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v40, v40
	v_permlanex16_b32 v42, v34, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v120
	v_perm_b32 v34, v42, v34, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v35.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v38.h
	v_add3_u32 v36, v36, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s38
	v_cmp_o_f32_e64 s38, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v36, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v42, v36, v120
	v_perm_b32 v36, v42, v36, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v37, v37, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_mov_b16_e64 v225.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v38, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s38
	v_permlanex16_b32 v42, v38, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v42, v38, v120
	v_perm_b32 v38, v42, v38, v123
	v_mov_b16_e64 v42.h, v225.h
	v_mov_b16_e32 v42.l, v39.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v42, 0x7fff
	v_and_b32_e32 v42, 1, v225
	v_add3_u32 v40, v40, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v40, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v120
	v_perm_b32 v40, v42, v40, v123
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v128 offset:6432
	ds_load_u16_d16 v43, v128 offset:6688
	ds_load_u16_d16 v44, v128 offset:6944
	ds_load_u16_d16 v45, v128 offset:7200
	ds_load_u16_d16 v46, v128 offset:7456
	ds_load_u16_d16 v47, v128 offset:7712
	ds_load_u16_d16 v48, v128 offset:7968
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v41, v128 offset:6304
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v97, v128 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v42, v128 offset:6560
	ds_load_u16_d16_hi v98, v128 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v43, v128 offset:6816
	ds_load_u16_d16_hi v99, v128 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v44, v128 offset:7072
	ds_load_u16_d16_hi v100, v128 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v45, v128 offset:7328
	ds_load_u16_d16_hi v101, v128 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v46, v128 offset:7584
	ds_load_u16_d16_hi v102, v128 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v47, v128 offset:7840
	ds_load_u16_d16_hi v103, v128 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v128 offset:8096
	ds_load_u16_d16_hi v104, v128 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[190:197], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[33:40], v[1:8]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v76, v76
	v_max_f32_e32 v34, v80, v80
	v_max3_f32 v35, v74, v79, v75
	v_max3_f32 v36, v66, v71, v67
	v_max3_f32 v37, v58, v63, v59
	v_max3_f32 v38, v50, v55, v51
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v77, v73, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v34, v35, v33
	v_dual_max_f32 v35, v72, v72 :: v_dual_mov_b32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v129, v129
	v_dual_max_f32 v129, v34, v33 :: v_dual_max_f32 v34, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v41, v77, v129 :: v_dual_max_f32 v34, v35, v34
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v69, v65, v70
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v73, v129
	v_sub_f32_e32 v46, v74, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v79, v129
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v35, v36, v34
	v_max_f32_e32 v36, v64, v64
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v47, v75, v129
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
.Ltmp18:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v35, v34 :: v_dual_sub_f32 v48, v76, v129
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s31
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp21:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s36
	v_cndmask_b32_e64 v43, 0, v43, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s35
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp32:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v130, v35, v34 :: v_dual_max_f32 v35, v60, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v130
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
	v_max3_f32 v36, v61, v57, v62
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v130
	v_sub_f32_e32 v65, v65, v130
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v46, v68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v130
.Ltmp35:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v36, v37, v35
	v_max_f32_e32 v37, v56, v56
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v130
	v_sub_f32_e32 v67, v67, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
.Ltmp38:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v42, v78, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s30
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v45
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v80, v129 :: v_dual_add_f32 v41, v41, v42
.Ltmp47:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s34
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v45
.Ltmp53:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v48
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s33
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp58:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v131, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v45
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v131, v36, v35
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v42, v43, v44 :: v_dual_mov_b32 v43, v114
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v66
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp64:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
	v_max3_f32 v37, v53, v49, v54
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp66:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v131
	v_sub_f32_e32 v62, v62, v131
.Ltmp67:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v37, v38, v36
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
.Ltmp69:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v131
	v_sub_f32_e32 v63, v63, v131
.Ltmp70:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v37, v36
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v131
	v_sub_f32_e32 v40, v64, v131
	v_sub_f32_e32 v60, v60, v131
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v37, v36
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v41, v42
.Ltmp89:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v69
	v_exp_f32_e32 v42, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v37, v36
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp91:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s15
	v_cndmask_b32_e64 v42, 0, v42, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v42 :: v_dual_max_f32 v36, v36, v37
.Ltmp94:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v132, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v132, v37, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v55, v132
	v_sub_f32_e32 v37, v56, v132
	v_sub_f32_e32 v38, v52, v132
	v_sub_f32_e32 v53, v53, v132
	v_sub_f32_e32 v49, v49, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v54, v132
	v_sub_f32_e32 v50, v50, v132
	v_sub_f32_e32 v51, v51, v132
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v38, 0, v38, s16
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v222
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp96:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v130
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v44
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v71
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s9
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v45
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s8
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v46
.Ltmp104:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v44, v45
	v_mov_b32_e32 v44, v116
.Ltmp106:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v58
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s19
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp110:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s24
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v41, v42
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v61
	v_exp_f32_e32 v42, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v42, 0, v42, s26
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp119:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s12
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v45
.Ltmp121:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v42 :: v_dual_mov_b32 v42, v115
.Ltmp123:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v46
.Ltmp125:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v60
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v46
	v_add_f32_e32 v40, v45, v40
.Ltmp127:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v41, v40
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s22
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v41, v40
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v40, v41
.Ltmp137:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v53
	v_exp_f32_e32 v41, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0, v41, s23
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp139:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s10
.Ltmp140:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp141:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v40, v41
	v_mov_b32_e32 v41, v224
.Ltmp143:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v45
	v_add_f32_e32 v37, v39, v37
	v_mov_b32_e32 v39, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v37, v38, v37
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v37, v38
.Ltmp151:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v37, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v37, v222, v33 :: v_dual_mov_b32 v222, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v114, v43, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v201, v201
	v_max_f32_e32 v34, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v201, v34
	v_mov_b32_e32 v201, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v189
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v116, v44, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v189, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v37, v35
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v189, v35
	v_mov_b32_e32 v189, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v115, v42, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v223, v223
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v223, v36
	v_mov_b32_e32 v223, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v117, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	scratch_load_b32 v63, off, off          ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v34, 2, v0
	v_and_b32_e32 v64, 16, v0
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v36, 0x78, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v34, v65, 3, 0
	v_add_nc_u32_e32 v35, 0, v36
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s81, s81, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[114:115], v[116:117] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fixup_f32 v18, v34, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v20, v33, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v17, s0
	v_cndmask_b32_e64 v17, 0, v18, s0
	v_cndmask_b32_e64 v18, 0, v19, s0
	v_cndmask_b32_e64 v19, 0, v20, s0
	v_cndmask_b32_e64 v20, 0, v21, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v23, s0
	v_cndmask_b32_e64 v23, 0, v24, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s4
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s5
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v8, v19, s67
	v_cndmask_b32_e64 v6, v18, v17, s67
	v_cndmask_b32_e64 v7, v17, v18, s67
	v_cndmask_b32_e64 v13, v20, v22, s67
	v_cndmask_b32_e64 v16, v12, v9, s67
	v_cndmask_b32_e64 v9, v9, v12, s67
	v_cndmask_b32_e64 v12, v11, v10, s67
	v_cndmask_b32_e64 v10, v10, v11, s67
	v_cndmask_b32_e64 v17, v0, v1, s67
	v_cndmask_b32_e64 v0, v1, v0, s67
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s70, v63
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v21, v23, s67
	v_cndmask_b32_e64 v1, v2, v3, s67
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v18, v3, v2, s67
	v_permlanex16_b32 v2, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s67
	v_cndmask_b32_e64 v8, v22, v20, s67
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v23, v21, s67
	v_permlanex16_b32 v3, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s70, v33
	v_cmp_gt_i32_e64 s3, s70, v32
	v_cmp_gt_i32_e64 s0, s70, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v11, v12, v120
	v_perm_b32 v11, v11, v12, v123
	v_perm_b32 v12, v13, v17, v120
	v_perm_b32 v13, v13, v17, v123
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v120
	v_perm_b32 v1, v2, v4, v123
	v_perm_b32 v4, v5, v8, v120
	v_perm_b32 v5, v5, v8, v123
	v_perm_b32 v8, v9, v16, v120
	v_perm_b32 v9, v9, v16, v123
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s70, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v120
	v_perm_b32 v3, v3, v6, v123
	v_perm_b32 v6, v7, v14, v120
	v_perm_b32 v7, v7, v14, v123
	v_perm_b32 v14, v15, v18, v120
	v_perm_b32 v15, v15, v18, v123
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[80:83], 0 offen
	buffer_store_b128 v[4:7], v17, s[80:83], 0 offen
	buffer_store_b128 v[8:11], v18, s[80:83], 0 offen
	buffer_store_b128 v[12:15], v19, s[80:83], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp152:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21108
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 8
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
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
