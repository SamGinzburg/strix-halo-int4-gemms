	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
	v_and_b32_e32 v44, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v4, 4, v44
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s82, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s5, s82
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v48, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v41, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v33, 0x60, v0
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v89, 16, v0
	v_lshlrev_b32_e32 v49, 2, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v41, 30, v48
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[180:181], null, s71, v1, v[4:5]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s71, v4
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
	v_mad_u64_u32 v[1:2], null, s71, s8, v[180:181]
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
	s_min_i32 s9, s9, 0x200
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s61, 0, v89
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s83, s10, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v33
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s100, s9, s11
	s_mov_b32 s9, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v1, v65
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s100, s100, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s100
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s5, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v43, v6, v4
	ds_bpermute_b32 v45, v6, v5
	ds_bpermute_b32 v40, v8, v2
	ds_bpermute_b32 v42, v8, v3
	ds_bpermute_b32 v46, v8, v4
	ds_bpermute_b32 v47, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v34, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x1054, v2, s61
	v_cndmask_b32_e64 v3, 0x3276, v3, s61
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
	v_and_b32_e32 v112, 0x5040504, v2
	v_and_b32_e32 v118, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr118
.LBB0_3:                                ; %Flow179
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s70, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v66, 0x78, v0
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v109, v8
	v_mov_b32_e32 v107, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v106, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v36, 7, v0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_lshlrev_b32 v13, 3, v0
	v_cndmask_b32_e64 v4, 0x1020, 0, vcc_lo
	v_bfe_i32 v5, v0, 2, 1
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_and_b32 v6, 8, v0
	v_lshlrev_b32_e32 v7, 6, v89
	v_bfe_i32 v8, v0, 5, 1
	v_bfe_i32 v44, v0, 3, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s13, 0xffff
	s_mov_b32 s88, s12
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 3, v66
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v34, v1, s[88:91], 0 offen
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v63, off offset:120
	scratch_store_b32 off, v49, off offset:136
	scratch_store_b32 off, v0, off offset:124
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_and_b32 v1, 12, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v101, v39, v42, s61
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_and_b32 v37, 24, v0
	v_cndmask_b32_e64 v100, v38, v40, s61
	v_cndmask_b32_e64 v105, v42, v39, s61
	v_cndmask_b32_e64 v104, v40, v38, s61
	v_or_b32_e32 v119, s82, v48
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_and_b32 v40, 3, v0
	v_dual_mov_b32 v123, 0xff800000 :: v_dual_and_b32 v42, 28, v0
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_and_b32 v10, 4, v0
	v_lshlrev_b32_e32 v48, 4, v36
	v_dual_mov_b32 v25, v9 :: v_dual_and_b32 v0, 0x310, v13
	v_and_or_b32 v53, 0x2040, v5, v4
	v_dual_mov_b32 v30, v9 :: v_dual_and_b32 v55, 0x2040, v8
	v_cndmask_b32_e64 v57, 0x3276, v12, s61
	v_dual_mov_b32 v32, v9 :: v_dual_and_b32 v59, 0x410, v44
	v_mul_u32_u24_e32 v60, 0x90, v36
	v_mov_b32_e32 v12, v9
	v_lshl_or_b32 v54, v6, 4, v7
	v_cndmask_b32_e64 v98, v43, v46, s61
	v_cndmask_b32_e64 v102, v46, v43, s61
	v_and_b32_e32 v3, 0x7c, v49
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v46, s5, v35
	v_xor_b32_e32 v67, v2, v37
	v_dual_mov_b32 v26, v9 :: v_dual_lshlrev_b32 v49, 5, v1
	v_mov_b32_e32 v13, v9
	v_or3_b32 v134, v53, v54, v0
	v_and_or_b32 v0, 0x1020, v44, v55
	v_xor_b32_e32 v44, v48, v66
	v_xor_b32_e32 v135, v60, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v99, v45, v47, s61
	v_cndmask_b32_e64 v103, v47, v45, s61
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_lshlrev_b32 v38, 2, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 1, v66
	v_lshlrev_b32_e32 v110, 3, v36
	v_cndmask_b32_e64 v39, 0x2040, 0, s61
	v_dual_mov_b32 v16, v9 :: v_dual_lshlrev_b32 v47, 1, v1
	v_dual_mov_b32 v28, v9 :: v_dual_and_b32 v51, 0x630, v2
	v_dual_mov_b32 v15, v9 :: v_dual_lshlrev_b32 v52, 5, v40
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v64, s20, v46
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v61, 16, v46
	v_or_b32_e32 v62, 32, v46
	v_or_b32_e32 v63, 48, v46
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v46
	v_xor_b32_e32 v46, 8, v67
	v_lshl_or_b32 v40, v40, 11, v49
	v_lshl_or_b32 v141, v36, 10, v44
	v_xor_b32_e32 v36, 16, v135
	v_lshl_or_b32 v50, v37, 1, v38
	v_cndmask_b32_e64 v56, 0x1054, v11, s61
	v_mov_b32_e32 v11, v9
	v_lshl_or_b32 v37, v37, 8, v48
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[48:49], null, s70, v45, v[110:111]
	v_lshrrev_b32_e32 v43, 3, v33
	v_lshl_add_u32 v58, v10, 9, 0
	v_mov_b32_e32 v10, v9
	v_lshl_or_b32 v33, v33, 4, v3
	v_mov_b32_e32 v31, v9
	v_dual_mov_b32 v3, v9 :: v_dual_add_nc_u32 v36, 0, v36
	v_lshl_or_b32 v132, v65, 5, v47
	v_lshl_or_b32 v47, v42, 7, v52
	v_or3_b32 v139, v51, v39, v40
	v_xor_b32_e32 v39, v0, v52
	v_xor_b32_e32 v44, 32, v135
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v0, 0, v46
	.loc	1 762 27                        ; attention.py:762:27
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v67, off
	scratch_store_b64 off, v[48:49], off offset:4
	scratch_store_b32 off, v36, off offset:16
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v65, off offset:128
	v_or3_b32 v140, v47, v38, v42
	v_xor_b32_e32 v47, 48, v135
	v_dual_mov_b32 v7, v9 :: v_dual_add_nc_u32 v36, 0, v44
	scratch_store_b32 off, v66, off offset:132 ; 4-byte Folded Spill
	v_xor_b32_e32 v138, v37, v50
	v_xor_b32_e32 v50, 64, v135
	scratch_store_b32 off, v36, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v47
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	v_mov_b32_e32 v107, v9
	v_xor_b32_e32 v51, 0x50, v135
	v_mov_b32_e32 v109, v9
	scratch_store_b32 off, v36, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v50
	v_xor_b32_e32 v52, 0x60, v135
	v_xor_b32_e32 v133, v33, v43
	v_lshl_or_b32 v33, v56, 8, v56
	v_xor_b32_e32 v56, 0x70, v135
	scratch_store_b32 off, v36, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v51
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshl_or_b32 v43, v57, 8, v57
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v57, 0x820, v135
	scratch_store_b32 off, v36, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v52
	s_add_i32 s0, s3, s0
	v_xor_b32_e32 v59, 0x830, v135
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_xor_b32_e32 v60, 0x810, v135
	scratch_store_b32 off, v36, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v56
	s_sub_i32 s1, s3, s1
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s3, s16, 0x3fb8aa3b
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v45, s20, v61
	scratch_store_b32 off, v36, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v57
	v_xor_b32_e32 v61, 0x860, v135
	v_dual_mov_b32 v29, v9 :: v_dual_add_nc_u32 v48, s20, v62
	v_xor_b32_e32 v62, 0x870, v135
	scratch_store_b32 off, v36, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v59
	v_xor_b32_e32 v46, 0x840, v135
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v49, s20, v63
	v_xor_b32_e32 v63, 0x850, v135
	scratch_store_b32 off, v36, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v60
	v_dual_mov_b32 v22, v9 :: v_dual_add_nc_u32 v137, s7, v64
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v136, s6, v64
	v_xor_b32_e32 v64, 0x1040, v135
	scratch_store_b32 off, v36, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v61
	v_xor_b32_e32 v65, 0x1050, v135
	v_xor_b32_e32 v66, 0x1060, v135
	v_xor_b32_e32 v67, 0x1070, v135
	v_xor_b32_e32 v68, 0x1010, v135
	scratch_store_b32 off, v36, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v62
	v_xor_b32_e32 v69, 0x1020, v135
	v_xor_b32_e32 v70, 0x1030, v135
	v_xor_b32_e32 v71, 0x1860, v135
	v_xor_b32_e32 v72, 0x1870, v135
	scratch_store_b32 off, v36, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v46
	v_xor_b32_e32 v73, 0x1840, v135
	v_xor_b32_e32 v74, 0x1850, v135
	v_xor_b32_e32 v75, 0x1820, v135
	v_mul_lo_u32 v0, s19, v35
	scratch_store_b32 off, v36, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v63
	v_dual_mov_b32 v24, v9 :: v_dual_and_b32 v33, 0x540054, v33
	v_xor_b32_e32 v40, 64, v134
	v_mov_b32_e32 v1, v9
	scratch_store_b32 off, v36, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v64
	v_xor_b32_e32 v35, 0x2040, v138
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v41, 0x80, v41
	v_dual_mov_b32 v2, v9 :: v_dual_and_b32 v43, 0x760076, v43
	scratch_store_b32 off, v36, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v65
	v_xor_b32_e32 v37, 0x810, v133
	v_xor_b32_e32 v38, 32, v134
	v_xor_b32_e32 v42, 0x60, v134
	v_lshl_or_b32 v33, v33, 4, v33
	scratch_store_b32 off, v36, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v66
	v_add_nc_u32_e32 v154, 0, v40
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v184, 0, v35
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v146, s7, v45
	scratch_store_b32 off, v36, off offset:80 ; 4-byte Folded Spill
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v36, 0, v67
	v_dual_mov_b32 v23, v9 :: v_dual_add_nc_u32 v148, s7, v49
	v_add_nc_u32_e32 v152, 0, v37
	scratch_store_b32 off, v36, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v68
	v_dual_mov_b32 v4, v9 :: v_dual_add_nc_u32 v147, s7, v48
	v_dual_mov_b32 v106, v9 :: v_dual_add_nc_u32 v153, 0, v38
	scratch_store_b32 off, v36, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v69
	v_dual_mov_b32 v108, v9 :: v_dual_add_nc_u32 v155, 0, v42
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v90, 1, v110
	v_or_b32_e32 v91, 2, v110
	scratch_store_b32 off, v36, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v70
	v_or_b32_e32 v92, 3, v110
	v_or_b32_e32 v93, 4, v110
	v_or_b32_e32 v94, 5, v110
	v_or_b32_e32 v95, 6, v110
	scratch_store_b32 off, v36, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v71
	v_or_b32_e32 v96, 7, v110
	v_xor_b32_e32 v53, 8, v132
	v_xor_b32_e32 v54, 16, v132
	v_xor_b32_e32 v55, 24, v132
	scratch_store_b32 off, v36, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v72
	v_xor_b32_e32 v76, 0x1830, v135
	v_xor_b32_e32 v77, 0x1810, v135
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v143, s6, v45
	v_subrev_nc_u32_e32 v144, s6, v48
	scratch_store_b32 off, v36, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v73
	v_subrev_nc_u32_e32 v145, s6, v49
	v_xor_b32_e32 v45, 16, v139
	v_xor_b32_e32 v48, 32, v139
	v_xor_b32_e32 v49, 48, v139
	scratch_store_b32 off, v36, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v74
	v_xor_b32_e32 v78, 64, v139
	v_xor_b32_e32 v79, 0x50, v139
	v_xor_b32_e32 v80, 0x60, v139
	v_xor_b32_e32 v81, 0x70, v139
	scratch_store_b32 off, v36, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v36, 0, v75
	v_xor_b32_e32 v82, 4, v140
	v_xor_b32_e32 v83, 8, v140
	v_xor_b32_e32 v84, 12, v140
	v_xor_b32_e32 v85, 16, v140
	scratch_store_b32 off, v36, off offset:116 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, 0x120, v141
	v_xor_b32_e32 v86, 20, v140
	v_xor_b32_e32 v87, 24, v140
	v_xor_b32_e32 v88, 28, v140
	v_add3_u32 v39, v58, v41, v39
	v_add_nc_u32_e32 v201, 0, v36
	v_mad_u64_u32 v[35:36], null, s19, 48, v[0:1]
	v_lshl_or_b32 v41, v43, 4, v43
	v_xor_b32_e32 v43, 0x90, v141
	v_xor_b32_e32 v37, 0x1b0, v141
	v_xor_b32_e32 v38, 0x240, v141
	v_xor_b32_e32 v40, 0x2d0, v141
	v_xor_b32_e32 v42, 0x360, v141
	v_xor_b32_e32 v44, 0x3f0, v141
	v_and_b32_e32 v112, 0x5040504, v33
	v_lshl_add_u32 v33, s19, 4, v0
	v_lshl_add_u32 v36, s19, 5, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v207, v0, v110
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s12
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v150, 0, v54
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v149, 0, v53
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v151, 0, v55
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s70, v110
	v_add_nc_u32_e32 v182, 0, v76
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v183, 0, v77
	v_and_b32_e32 v118, 0x7060706, v41
	v_add_nc_u32_e32 v185, 0, v45
	v_add_nc_u32_e32 v186, 0, v48
	v_add_nc_u32_e32 v187, 0, v49
	v_add_nc_u32_e32 v188, 0, v78
	v_add_nc_u32_e32 v189, 0, v79
	v_add_nc_u32_e32 v190, 0, v80
	v_add_nc_u32_e32 v191, 0, v81
	v_add_nc_u32_e32 v192, 0, v82
	v_add_nc_u32_e32 v193, 0, v83
	v_add_nc_u32_e32 v194, 0, v84
	v_add_nc_u32_e32 v195, 0, v85
	v_add_nc_u32_e32 v196, 0, v86
	v_add_nc_u32_e32 v197, 0, v87
	v_add_nc_u32_e32 v198, 0, v88
	v_add_nc_u32_e32 v199, v39, v89
	v_add_nc_u32_e32 v200, 0, v43
	v_add_nc_u32_e32 v202, 0, v37
	v_add_nc_u32_e32 v203, 0, v38
	v_add_nc_u32_e32 v204, 0, v40
	v_add_nc_u32_e32 v205, 0, v42
	v_add_nc_u32_e32 v206, 0, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v208, v33, v110
	v_add_nc_u32_e32 v209, v33, v90
	v_add_nc_u32_e32 v210, v33, v91
	v_add_nc_u32_e32 v211, v33, v92
	v_add_nc_u32_e32 v212, v33, v93
	v_add_nc_u32_e32 v213, v33, v94
	v_add_nc_u32_e32 v214, v33, v95
	v_add_nc_u32_e32 v215, v33, v96
	v_add_nc_u32_e32 v216, v36, v110
	v_add_nc_u32_e32 v217, v36, v90
	v_add_nc_u32_e32 v218, v36, v91
	v_add_nc_u32_e32 v219, v36, v92
	v_add_nc_u32_e32 v220, v36, v93
	v_add_nc_u32_e32 v222, v36, v94
	v_add_nc_u32_e32 v223, v36, v95
	v_add_nc_u32_e32 v224, v36, v96
	v_add_nc_u32_e32 v225, v35, v110
	v_add_nc_u32_e32 v226, v35, v90
	v_add_nc_u32_e32 v227, v35, v91
	v_add_nc_u32_e32 v228, v35, v92
	v_add_nc_u32_e32 v229, v35, v93
	v_add_nc_u32_e32 v230, v35, v94
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v34
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v231, v35, v95
	v_add_nc_u32_e32 v232, v35, v96
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s5, s19, s5
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v233, s3, v0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s103, s1, s6
	s_lshl_b32 s101, s70, 1
	s_mov_b32 s102, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s86, s90
	s_mov_b32 s87, s91
	s_and_b32 s85, s85, 0xffff
	s_and_b32 s97, s11, 0xffff
	s_mov_b32 s92, s14
	s_mov_b32 s96, s10
	s_mov_b32 s88, s8
	s_mov_b32 s89, s9
	s_mov_b32 s93, s15
	s_add_i32 s103, s103, s5
	s_mov_b32 s98, s90
	s_mov_b32 s99, s91
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s104, s83, s82
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s69, s103, s83
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s104, s71, v[180:181]
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v124, 0, v138
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v0, 0x80000000, v33, s4
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v0, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr180 killed $vgpr180 def $vgpr181
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b64 v0, v[33:34]
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s72 :: v_dual_add_nc_u32 v0, 0, v132
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v35, s74
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v0 offset1:1
	ds_load_2addr_stride64_b64 v[79:82], v0 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[53:56], v149 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v149 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v110
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[57:60], v150 offset1:1
	ds_load_2addr_stride64_b64 v[87:90], v150 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v37, s76
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v39, s78
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v0, v136
	v_cmp_ge_i32_e64 s6, v0, v143
	v_cmp_ge_i32_e64 s13, v0, v144
	v_cmp_ge_i32_e64 s3, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v0, v137
	v_cmp_le_i32_e64 s7, v0, v146
	v_cmp_le_i32_e64 s15, v0, v147
	v_cmp_le_i32_e64 s12, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 1, v110
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v38, s77
	v_mov_b32_e32 v40, s79
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[71:74], v151 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v151 offset0:2 offset1:3
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s5
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, vcc_lo, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v0, v136
	v_cmp_ge_i32_e64 s8, v0, v143
	v_cmp_ge_i32_e64 s21, v0, v144
	v_cmp_ge_i32_e64 s17, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v0, v137
	v_cmp_le_i32_e64 s9, v0, v146
	v_cmp_le_i32_e64 s25, v0, v147
	v_cmp_le_i32_e64 s20, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 2, v110
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s14, s16
	s_and_b32 s7, s8, s9
	s_and_b32 s14, vcc_lo, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[100:101], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s13, s13, s15
	s_and_b32 s15, s21, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v0, v136
	v_cmp_ge_i32_e64 s22, v0, v143
	v_cmp_ge_i32_e64 s29, v0, v144
	v_cmp_ge_i32_e64 s27, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v0, v137
	v_cmp_le_i32_e64 s23, v0, v146
	v_cmp_le_i32_e64 s30, v0, v147
	v_cmp_le_i32_e64 s28, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 3, v110
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[98:99], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s18, s19
	s_and_b32 s8, s22, s23
	s_and_b32 s5, vcc_lo, s5
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v72, v41
	v_cvt_f32_i32_e32 v71, v42
	v_cvt_f32_i32_e32 v70, v43
	v_cvt_f32_i32_e32 v69, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v0, v136
	v_cmp_ge_i32_e64 s24, v0, v143
	v_cmp_ge_i32_e64 s34, v0, v144
	v_cmp_ge_i32_e64 s31, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v0, v137
	v_cmp_le_i32_e64 s26, v0, v146
	v_cmp_le_i32_e64 s35, v0, v147
	v_cmp_le_i32_e64 s33, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 4, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v68, v45
	v_cvt_f32_i32_e32 v67, v46
	v_cvt_f32_i32_e32 v65, v47
	v_cvt_f32_i32_e32 v63, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s63, s64
	s_and_b32 s9, s24, s26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v0, v136
	v_cmp_ge_i32_e64 s42, v0, v143
	v_cmp_ge_i32_e64 s38, v0, v144
	v_cmp_ge_i32_e64 s36, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v0, v137
	v_cmp_le_i32_e64 s44, v0, v146
	v_cmp_le_i32_e64 s39, v0, v147
	v_cmp_le_i32_e64 s37, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 5, v110
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, vcc_lo, s16
	s_and_b32 s10, s10, s62
	s_and_b32 s22, vcc_lo, s7
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[100:101], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s7, vcc_lo, s8
	s_and_b32 s23, vcc_lo, s9
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v0, v136
	v_cmp_ge_i32_e64 s56, v0, v143
	v_cmp_ge_i32_e64 s43, v0, v144
	v_cmp_ge_i32_e64 s40, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v0, v137
	v_cmp_le_i32_e64 s57, v0, v146
	v_cmp_le_i32_e64 s45, v0, v147
	v_cmp_le_i32_e64 s41, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 6, v110
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[98:99], v[41:48] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s65, s66
	s_and_b32 s24, s56, s57
	s_and_b32 s18, vcc_lo, s18
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v66, v41
	v_cvt_f32_i32_e32 v64, v42
	v_cvt_f32_i32_e32 v62, v43
	v_cvt_f32_i32_e32 v61, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v0, v136
	v_cmp_ge_i32_e64 s51, v0, v143
	v_cmp_ge_i32_e64 s48, v0, v144
	v_cmp_ge_i32_e64 s46, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v0, v137
	v_cmp_le_i32_e64 s53, v0, v146
	v_cmp_le_i32_e64 s49, v0, v147
	v_cmp_le_i32_e64 s47, v0, v148
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 7, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v60, v45
	v_cvt_f32_i32_e32 v59, v46
	v_cvt_f32_i32_e32 v57, v47
	v_cvt_f32_i32_e32 v55, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s83, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v33, 2, v207
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[102:103], v[73:80] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v37, 7, v207
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s67, v0, v136
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s68, v0, v137
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v36, 5, v207
	v_add_nc_u32_e32 v35, 3, v207
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[100:101], v[73:80] neg_lo:[1,1,0]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v0, v143
	v_cmp_ge_i32_e64 s54, v0, v144
	v_cmp_ge_i32_e64 s50, v0, v145
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v0, v146
	v_cmp_le_i32_e64 s55, v0, v147
	v_cmp_le_i32_e64 s52, v0, v148
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s69, v207, 2
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 1, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s69, v33, 2
	v_add_lshl_u32 v37, s69, v37, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s67, s68
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s69, v36, 2
	v_add_lshl_u32 v35, s69, v35, 2
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[98:99], v[73:80] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v34, s69, v34, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v37, 0x80000000, v37, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v44
	v_cvt_f32_i32_e32 v52, v45
	v_cvt_f32_i32_e32 v51, v46
	v_cvt_f32_i32_e32 v49, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v74
	v_cvt_f32_i32_e32 v46, v75
	v_cvt_f32_i32_e32 v45, v76
	v_cvt_f32_i32_e32 v44, v77
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s14
	s_clause 0x5
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	buffer_load_b32 v38, v33, s[84:87], 0 offen
	buffer_load_b32 v74, v37, s[84:87], 0 offen
	buffer_load_b32 v75, v36, s[84:87], 0 offen
	buffer_load_b32 v76, v35, s[84:87], 0 offen
	buffer_load_b32 v77, v34, s[84:87], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s11, s59
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v73
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s69, v215, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s58, s60
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s69, v213, 2
	v_add_lshl_u32 v39, s69, v211, 2
	v_add_lshl_u32 v37, s69, v209, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, vcc_lo, s26
	s_and_b32 s24, vcc_lo, s24
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s26
	v_cndmask_b32_e64 v40, 0x80000000, v40, s24
	v_cndmask_b32_e64 v39, 0x80000000, v39, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v41
	v_cvt_f32_i32_e32 v56, v42
	v_cvt_f32_i32_e32 v54, v43
	v_cvt_f32_i32_e32 v43, v78
	v_cvt_f32_i32_e32 v42, v79
	v_cvt_f32_i32_e32 v41, v80
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s42, s44
	s_and_b32 s9, s51, s53
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v90, s69, v228, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s29, s30
	s_and_b32 s29, s38, s39
	s_and_b32 s39, s54, s55
	s_and_b32 s31, s31, s33
	s_and_b32 s30, s43, s45
	s_and_b32 s43, vcc_lo, s39
	s_and_b32 s39, vcc_lo, s31
	s_and_b32 s33, s36, s37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v111, 0x80000000, v90, s39
	v_add_lshl_u32 v90, s69, v229, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, vcc_lo, s33
	s_and_b32 s36, s40, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v89, s69, v226, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, vcc_lo, s36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v92, 0x80000000, v90, s33
	v_add_lshl_u32 v90, s69, v230, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s17, s20
	s_and_b32 s25, s34, s35
	s_and_b32 s34, s48, s49
	s_and_b32 s42, s46, s47
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v113, 0x80000000, v90, s40
	v_add_lshl_u32 v90, s69, v231, 2
	v_add_lshl_u32 v82, s69, v218, 2
	v_add_lshl_u32 v84, s69, v220, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, vcc_lo, s17
	s_and_b32 s3, s3, s12
	s_and_b32 s12, vcc_lo, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v86, s69, v223, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, vcc_lo, s34
	s_and_b32 s34, vcc_lo, s42
	s_and_b32 s20, s27, s28
	s_and_b32 s28, vcc_lo, s21
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v83, s69, v219, 2
	v_add_lshl_u32 v85, s69, v222, 2
	v_add_lshl_u32 v87, s69, v224, 2
	v_add_lshl_u32 v88, s69, v225, 2
	v_cndmask_b32_e64 v97, 0x80000000, v89, s37
	v_add_lshl_u32 v89, s69, v227, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, vcc_lo, s29
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v93, 0x80000000, v90, s34
	v_add_lshl_u32 v90, s69, v232, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s50, s52
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v82, 0x80000000, v82, s28
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, vcc_lo, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v84, 0x80000000, v84, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s30
	s_and_b32 s25, vcc_lo, s3
	s_and_b32 s29, vcc_lo, s20
	s_and_b32 s27, vcc_lo, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v86, 0x80000000, v86, s35
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, vcc_lo, s44
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v83, 0x80000000, v83, s38
	v_cndmask_b32_e64 v85, 0x80000000, v85, s41
	v_cndmask_b32_e64 v87, 0x80000000, v87, s43
	v_cndmask_b32_e64 v88, 0x80000000, v88, s25
	v_cndmask_b32_e64 v89, 0x80000000, v89, s29
	v_cndmask_b32_e64 v114, 0x80000000, v90, s42
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v33, 0xff800000, v0, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, 4, v207
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v34, 0xff800000, v38, s5
	v_add_lshl_u32 v38, s69, v210, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s69, v0, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s10
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s5, s30
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v35, 0xff800000, v0, s10
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, 6, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v0, s69, v0, 2
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s10, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s11
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, 0xff800000, v0, s11
	v_add_lshl_u32 v0, s69, v208, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	s_clause 0x5
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	buffer_load_b32 v38, v38, s[84:87], 0 offen
	buffer_load_b32 v78, v73, s[84:87], 0 offen
	buffer_load_b32 v79, v40, s[84:87], 0 offen
	buffer_load_b32 v80, v39, s[84:87], 0 offen
	buffer_load_b32 v81, v37, s[84:87], 0 offen
	v_add_lshl_u32 v73, s69, v217, 2
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s11, s31
	s_and_b32 s31, s1, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s27
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v37, 0xff800000, v0, s6
	v_add_lshl_u32 v0, s69, v212, 2
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v38, 0xff800000, v38, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s58, 0xff800000, v38
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s17, s6, s15
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s7, s58
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v39, 0xff800000, v0, s8
	v_add_lshl_u32 v0, s69, v214, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s62, 0xff800000, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s9
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, s8, s62
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, 0xff800000, v0, s9
	v_add_lshl_u32 v0, s69, v216, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s63, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	s_clause 0xf
	buffer_load_b32 v94, v0, s[84:87], 0 offen
	buffer_load_b32 v95, v82, s[84:87], 0 offen
	buffer_load_b32 v96, v84, s[84:87], 0 offen
	buffer_load_b32 v238, v86, s[84:87], 0 offen
	buffer_load_b32 v90, v88, s[84:87], 0 offen
	buffer_load_b32 v91, v89, s[84:87], 0 offen
	buffer_load_b32 v92, v92, s[84:87], 0 offen
	buffer_load_b32 v93, v93, s[84:87], 0 offen
	buffer_load_b32 v86, v87, s[84:87], 0 offen
	buffer_load_b32 v87, v85, s[84:87], 0 offen
	buffer_load_b32 v88, v83, s[84:87], 0 offen
	buffer_load_b32 v89, v73, s[84:87], 0 offen
	buffer_load_b32 v82, v114, s[84:87], 0 offen
	buffer_load_b32 v83, v113, s[84:87], 0 offen
	buffer_load_b32 v84, v111, s[84:87], 0 offen
	buffer_load_b32 v85, v97, s[84:87], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v0, s83, v119, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, s9, s63
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v73, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 2, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v241, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 4, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v242, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 6, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v243, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 8, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v244, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 10, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v245, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 12, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v246, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 14, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v247, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 16, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v248, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 18, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v249, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 20, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v250, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 22, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v251, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 24, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v252, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 26, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v253, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 28, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v254, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 30, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v255, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 32, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v117, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 34, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v114, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 36, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v115, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 38, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v116, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 40, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v113, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 42, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v125, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 44, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v126, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 46, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v127, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 48, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v128, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 50, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v129, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 52, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v130, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 54, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v131, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 56, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v97, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 58, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v111, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 60, v119
	v_add_lshl_u32 v0, v0, s83, 1
	buffer_load_u16 v142, v0, s[92:95], 0 offen
	v_or_b32_e32 v0, 62, v119
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v0, v0, s83, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 64
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v0, v0, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v124, v[33:36]
	ds_store_b128 v124, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v77, s14
	v_cndmask_b32_e64 v34, 0xff800000, v76, s16
	v_cndmask_b32_e64 v35, 0xff800000, v75, s18
	v_cndmask_b32_e64 v36, 0xff800000, v74, s19
	v_cndmask_b32_e64 v37, 0xff800000, v81, s22
	v_cndmask_b32_e64 v38, 0xff800000, v80, s23
	v_cndmask_b32_e64 v39, 0xff800000, v79, s24
	v_cndmask_b32_e64 v40, 0xff800000, v78, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v33
	v_cmp_neq_f32_e64 s49, 0xff800000, v34
	v_cmp_neq_f32_e64 s54, 0xff800000, v35
	v_cmp_neq_f32_e64 s55, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v184, v[33:36]
	ds_store_b128 v184, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(47)
	v_cndmask_b32_e64 v33, 0xff800000, v94, s12
	s_waitcnt vmcnt(46)
	v_cndmask_b32_e64 v34, 0xff800000, v95, s28
	s_waitcnt vmcnt(45)
	v_cndmask_b32_e64 v35, 0xff800000, v96, s13
	s_waitcnt vmcnt(44)
	v_cndmask_b32_e64 v36, 0xff800000, v238, s35
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v37
	v_cmp_neq_f32_e64 s44, 0xff800000, v38
	v_cmp_neq_f32_e64 s47, 0xff800000, v39
	v_cmp_neq_f32_e64 s48, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(43)
	v_cndmask_b32_e64 v37, 0xff800000, v90, s25
	s_waitcnt vmcnt(42)
	v_cndmask_b32_e64 v38, 0xff800000, v91, s29
	s_waitcnt vmcnt(41)
	v_cndmask_b32_e64 v39, 0xff800000, v92, s33
	s_waitcnt vmcnt(40)
	v_cndmask_b32_e64 v40, 0xff800000, v93, s34
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s64, 0xff800000, v33
	v_cmp_neq_f32_e64 s65, 0xff800000, v34
	v_cmp_neq_f32_e64 s68, 0xff800000, v35
	v_cmp_neq_f32_e64 s69, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v124, v[33:36] offset:1024
	ds_store_b128 v124, v[37:40] offset:1536
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(36)
	v_cndmask_b32_e64 v33, 0xff800000, v89, s27
	v_cndmask_b32_e64 v34, 0xff800000, v88, s38
	v_cndmask_b32_e64 v35, 0xff800000, v87, s41
	v_cndmask_b32_e64 v36, 0xff800000, v86, s43
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s59, 0xff800000, v37
	v_cmp_neq_f32_e64 s60, 0xff800000, v38
	v_cmp_neq_f32_e64 s66, 0xff800000, v39
	v_cmp_neq_f32_e64 s67, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v37, 0xff800000, v85, s37
	v_cndmask_b32_e64 v38, 0xff800000, v84, s39
	v_cndmask_b32_e64 v39, 0xff800000, v83, s40
	v_cndmask_b32_e64 v40, 0xff800000, v82, s42
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s52, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v184, v[33:36] offset:1024
	ds_store_b128 v184, v[37:40] offset:1536
	v_add_nc_u32_e32 v33, 0, v139
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v37
	v_cmp_neq_f32_e64 s46, 0xff800000, v38
	v_cmp_neq_f32_e64 s50, 0xff800000, v39
	v_cmp_neq_f32_e64 s51, 0xff800000, v40
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v33
	ds_load_b128 v[74:77], v185
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s53, 0xff800000, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s56, 0xff800000, v35
	v_cmp_neq_f32_e64 s57, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b128 v[156:159], v190
	ds_load_b128 v[160:163], v191
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s35, s69
	s_and_b32 s9, s13, s68
	s_and_b32 s13, s12, s64
	v_or_b16 v124.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s30
	v_cndmask_b32_e64 v34, 0, 1, s31
	s_and_b32 s12, s28, s65
	s_and_b32 s1, s34, s67
	s_and_b32 s5, s33, s66
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s6, s29, s60
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v35, 0x3fb8aa3b, v37
	v_dual_mul_f32 v81, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v36, 0x3fb8aa3b, v40
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v37, 0x3fb8aa3b, v74 :: v_dual_mul_f32 v74, 0x3fb8aa3b, v75
	v_dual_mul_f32 v39, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v77
	ds_load_b128 v[75:78], v186
	ds_load_b128 v[89:92], v187
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v124.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s10
	v_cndmask_b32_e64 v34, 0, 1, s11
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v239, 0x3fb8aa3b, v156 :: v_dual_mul_f32 v240, 0x3fb8aa3b, v158
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s25, s59
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s33, s19, s55
	s_and_b32 s34, s18, s54
	s_and_b32 s35, s16, s49
	s_and_b32 s36, s14, s36
	v_or_b16 v156.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s17
	s_and_b32 s25, s24, s47
	s_and_b32 s24, s26, s48
	s_and_b32 s28, s23, s44
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v83, 0x3fb8aa3b, v75
	v_dual_mul_f32 v75, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v88, 0x3fb8aa3b, v77
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v87, 0x3fb8aa3b, v91 :: v_dual_mul_f32 v84, 0x3fb8aa3b, v78
	v_dual_mul_f32 v85, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v90
	v_mul_f32_e32 v82, 0x3fb8aa3b, v92
	ds_load_b128 v[77:80], v188
	ds_load_b128 v[89:92], v189
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v156.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s8
	v_cndmask_b32_e64 v34, 0, 1, s9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s29, s22, s3
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s22, s43, s57
	s_and_b32 s23, s41, s56
	s_and_b32 s26, s38, s53
	s_and_b32 s27, s27, s52
	s_and_b32 s14, s42, s51
	s_and_b32 s16, s40, s50
	s_and_b32 s18, s39, s46
	s_and_b32 s19, s37, s45
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	v_mul_f32_e32 v94, 0x3fb8aa3b, v162
	s_mul_i32 s3, s70, 3
	v_dual_mul_f32 v238, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v89, 0x3fb8aa3b, v89
	v_dual_mul_f32 v86, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v157
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v157.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s12
	v_cndmask_b32_e64 v34, 0, 1, s13
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v92, 0x3fb8aa3b, v160
	v_mul_f32_e32 v93, 0x3fb8aa3b, v80
	v_mul_f32_e32 v95, 0x3fb8aa3b, v77
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v77, 0x3fb8aa3b, v78
	v_dual_mul_f32 v78, 0x3fb8aa3b, v90 :: v_dual_mul_f32 v91, 0x3fb8aa3b, v91
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v157.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s1
	v_cndmask_b32_e64 v34, 0, 1, s5
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s6
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.l, v34.l, v33.l
	v_add_nc_u32_e32 v34, 0, v133
	ds_store_2addr_b32 v34, v124, v156 offset1:32
	ds_store_2addr_b32 v34, v157, v33 offset0:64 offset1:96
	v_cndmask_b32_e64 v33, 0, 1, s33
	v_cndmask_b32_e64 v34, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v124.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s35
	v_cndmask_b32_e64 v34, 0, 1, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v124.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s24
	v_cndmask_b32_e64 v34, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v156.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s28
	v_cndmask_b32_e64 v34, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v156.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s22
	v_cndmask_b32_e64 v34, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v157.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s26
	v_cndmask_b32_e64 v34, 0, 1, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v157.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s14
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s19
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v72
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v72, 16, v73
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v96, 0x3fb8aa3b, v159
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v152, v124, v156 offset1:32
	ds_store_2addr_b32 v152, v157, v33 offset0:64 offset1:96
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v35, v34, v72 :: v_dual_mul_f32 v34, v233, v71
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v71, 16, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v34, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v70
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v70, 16, v242
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v80, 0x3fb8aa3b, v161 :: v_dual_fmac_f32 v81, v34, v70
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v34, v233, v69 :: v_dual_lshlrev_b32 v69, 16, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v34, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v68
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v68, 16, v244
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v90, 0x3fb8aa3b, v163 :: v_dual_fmac_f32 v37, v34, v68
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v34, v233, v67 :: v_dual_lshlrev_b32 v67, 16, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v74, v34, v67
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v34, v233, v65 :: v_dual_lshlrev_b32 v65, 16, v246
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v34, v65 :: v_dual_mul_f32 v34, v233, v63
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v63, 16, v247
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v40, v34, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v66 :: v_dual_lshlrev_b32 v63, 16, v248
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v83, v34, v63 :: v_dual_mul_f32 v34, v233, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, v34, v63 :: v_dual_mul_f32 v34, v233, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v62, 16, v250
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v88, v34, v62
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v61 :: v_dual_lshlrev_b32 v61, 16, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v84, v34, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v252
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v85, v34, v60 :: v_dual_mul_f32 v34, v233, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, v34, v59
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v57 :: v_dual_lshlrev_b32 v57, 16, v254
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, v34, v57 :: v_dual_mul_f32 v34, v233, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, v34, v55
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v58 :: v_dual_lshlrev_b32 v55, 16, v117
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v95, v34, v55 :: v_dual_mul_f32 v34, v233, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, v34, v55 :: v_dual_mul_f32 v34, v233, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v115
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v238, v34, v54
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v53 :: v_dual_lshlrev_b32 v53, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v93, v34, v53 :: v_dual_mul_f32 v34, v233, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v113
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v89, v34, v52 :: v_dual_mul_f32 v34, v233, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v51, 16, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v78, v34, v51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v49 :: v_dual_lshlrev_b32 v49, 16, v126
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v91, v34, v49 :: v_dual_mul_f32 v34, v233, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, v34, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v50 :: v_dual_lshlrev_b32 v47, 16, v128
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v239, v34, v47 :: v_dual_mul_f32 v34, v233, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, v34, v47 :: v_dual_mul_f32 v34, v233, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v130
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v240, v34, v46
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v233, v45 :: v_dual_lshlrev_b32 v45, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v96, v34, v45
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v97
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v92, v34, v44
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v43, 16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v80, v34, v43
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v42
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v42, 16, v142
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v94, v34, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v233, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, v34, v0
	scratch_load_b64 v[33:34], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v0, 0, v140
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	ds_load_b32 v42, v192
	ds_load_b32 v46, v193
	ds_load_b32 v50, v194
	ds_load_b32 v54, v195
	ds_load_b32 v61, v196
	ds_load_b32 v62, v197
	ds_load_b32 v63, v198
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[33:34], null, s104, s70, v[33:34]
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v34, 0x1000000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s65, 0, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v57, 1, v33
	v_add_lshl_u32 v58, v33, s70, 1
	v_add_lshl_u32 v59, v33, s101, 1
	v_add_lshl_u32 v60, v33, s3, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v33, 0x10000, v0
	v_and_b32_e32 v34, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s63, 0, v33
	v_and_b32_e32 v33, 0x10000, v42
	v_cmp_eq_u32_e64 s64, 1, v34
	v_and_b32_e32 v34, 0x1000000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s3, 0, v33
	v_and_b32_e32 v33, 0x10000, v46
	v_cmp_ne_u32_e64 s62, 0, v34
	v_and_b32_e32 v34, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s64
	v_cndmask_b32_e64 v39, 0xff800000, v39, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v33
	v_and_b32_e32 v33, 0x10000, v50
	v_cmp_eq_u32_e64 s58, 1, v34
	v_and_b32_e32 v34, 0x1000000, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v33
	v_and_b32_e32 v33, 0x10000, v54
	v_cmp_ne_u32_e64 s57, 0, v34
	v_and_b32_e32 v34, 1, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v33
	v_and_b32_e32 v33, 0x10000, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s56, 1, v34
	v_and_b32_e32 v34, 0x1000000, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v33
	v_and_b32_e32 v33, 0x10000, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s53, 0, v34
	v_and_b32_e32 v34, 1, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s56
	v_cndmask_b32_e64 v55, 0xff800000, v91, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v33
	v_and_b32_e32 v33, 0x10000, v63
	v_cmp_eq_u32_e64 s51, 1, v34
	v_and_b32_e32 v34, 0x1000000, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v238, s46
	v_cndmask_b32_e64 v43, 0xff800000, v240, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v33
	v_and_b32_e32 v33, 1, v0
	v_lshrrev_b16 v0.l, 8, v0.l
	v_cmp_ne_u32_e64 s49, 0, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v95, s51
	v_cndmask_b32_e64 v47, 0xff800000, v94, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s66, 1, v33
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v93, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0xff800000, v35, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s68, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v81, s63
	v_cndmask_b32_e64 v81, 0xff800000, v83, s58
	v_cndmask_b32_e64 v83, 0xff800000, v88, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v34, 1, v61
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v82, s53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s48, 1, v34
	v_cmp_eq_u16_e64 s67, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v46.l
	v_and_b32_e32 v34, 0x1000000, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v89, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s47, 0, v34
	v_and_b32_e32 v34, 1, v62
	v_cmp_eq_u16_e64 s60, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v50.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s42, 1, v34
	v_and_b32_e32 v34, 0x1000000, v62
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v86, s47
	v_cndmask_b32_e64 v82, 0xff800000, v75, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v239, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v34
	v_and_b32_e32 v34, 1, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v239.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v54.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v96, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v76, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v92, s40
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v85, v86, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s55, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v61.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v77, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_and_b32_e32 v34, 0x1000000, v63
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v88, v49, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s52, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v62.l
	v_cmp_ne_u32_e64 s39, 0, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v38, s68
	v_cndmask_b32_e64 v38, 0xff800000, v74, s67
	v_cndmask_b32_e64 v54, 0xff800000, v78, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v90, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v0.l
	v_lshrrev_b16 v0.l, 8, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v79, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s43, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v0, 0, v134
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[49:52] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v0, 0x80000000, v57, s0
	v_cndmask_b32_e64 v57, 0x80000000, v58, s0
	v_cndmask_b32_e64 v58, 0x80000000, v59, s0
	v_cndmask_b32_e64 v59, 0x80000000, v60, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v80, s43
	ds_store_b128 v153, v[37:40]
	ds_store_b128 v153, v[53:56] offset:2048
	ds_store_b128 v154, v[81:84]
	ds_store_b128 v154, v[41:44] offset:2048
	ds_store_b128 v155, v[85:88]
	ds_store_b128 v155, v[45:48] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[128:131], v0, s[96:99], 0 offen
	buffer_load_b128 v[156:159], v58, s[96:99], 0 offen
	buffer_load_b128 v[114:117], v59, s[96:99], 0 offen
	buffer_load_b128 v[124:127], v57, s[96:99], 0 offen
	v_add_nc_u32_e32 v0, 0, v141
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[93:96], v199
	ds_load_b128 v[77:80], v199 offset:256
	ds_load_b128 v[89:92], v199 offset:1024
	ds_load_b128 v[73:76], v199 offset:1280
	ds_load_b128 v[69:72], v199 offset:512
	ds_load_b128 v[61:64], v199 offset:768
	ds_load_b128 v[65:68], v199 offset:1536
	ds_load_b128 v[57:60], v199 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v160.l, v128.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v161.l, v156.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v161.h, v114.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v160.h, v124.l
	v_mov_b16_e64 v124.l, v128.h
	v_mov_b16_e64 v114.l, v156.h
	v_mov_b16_e64 v128.l, v130.l
	v_mov_b16_e64 v128.h, v126.l
	ds_store_b64 v0, v[160:161]
	v_mov_b16_e64 v160.h, v125.l
	v_mov_b32_e32 v113, v124
	v_mov_b16_e64 v125.l, v129.h
	v_mov_b16_e64 v161.l, v157.l
	v_mov_b16_e64 v161.h, v115.l
	v_mov_b16_e64 v160.l, v129.l
	ds_store_b64 v200, v[113:114]
	ds_store_b64 v201, v[160:161]
	v_mov_b16_e64 v115.l, v157.h
	v_mov_b32_e32 v114, v125
	v_mov_b16_e64 v129.l, v158.l
	v_mov_b16_e64 v129.h, v116.l
	v_mov_b16_e64 v126.l, v130.h
	ds_store_b64 v202, v[114:115]
	ds_store_b64 v203, v[128:129]
	v_mov_b16_e32 v114.h, v117.l
	v_mov_b16_e64 v117.l, v159.h
	v_mov_b16_e64 v116.l, v158.h
	v_mov_b32_e32 v115, v126
	v_mov_b16_e64 v114.l, v159.l
	v_mov_b16_e64 v113.l, v131.l
	v_mov_b16_e32 v113.h, v127.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v82, v83, v84
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v128, v117
	v_mov_b16_e64 v127.l, v131.h
	ds_store_b64 v204, v[115:116]
	ds_store_b64 v205, v[113:114]
	ds_store_b64 v206, v[127:128]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v0, v97, v111
	v_max3_f32 v97, v51, v52, v53
	v_max3_f32 v111, v54, v55, v56
	v_max3_f32 v113, v41, v42, v43
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v117, 0, v135
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v97, v111, v113
	v_max_f32_e32 v111, v33, v34
	v_max3_f32 v113, v36, v37, v38
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[240:243], v117
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v111, v35, v113
	v_max3_f32 v113, v39, v40, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v111, v113, v0
	v_max_f32_e32 v111, v44, v45
	v_max_f32_e32 v113, v47, v48
	v_max3_f32 v111, v111, v46, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, v97, v111
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v97, v0, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v238, v237, v0, v97
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v33, v238
	v_sub_f32_e32 v33, v34, v238
	v_sub_f32_e32 v35, v35, v238
	v_sub_f32_e32 v36, v36, v238
	v_sub_f32_e32 v37, v37, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v238
	v_sub_f32_e32 v39, v39, v238
	v_sub_f32_e32 v40, v40, v238
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s66
	v_cndmask_b32_e64 v33, 0, v33, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s66, v0, v0
	v_mov_b16_e64 v239.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s68, v33, v33
	v_and_b32_e32 v34, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	v_mov_b16_e64 v34.h, v239.h
	v_mov_b16_e32 v34.l, v0.h
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s68
	v_cndmask_b16 v34.l, 0x7fff, v0.h, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v0, v34, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v0, v34, v112
	v_perm_b32 v34, v0, v34, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s63, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s65, v35, v35
	v_and_b32_e32 v36, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v112
	v_perm_b32 v36, v36, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s64
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s63, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s64, v37, v37
	v_and_b32_e32 v38, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v112
	v_perm_b32 v38, v38, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v237
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v39, v39
	v_and_b32_e32 v40, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v112
	v_perm_b32 v40, v40, v0, v118
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v0, v237, v238 :: v_dual_mov_b32 v237, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v97, 0, v0, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v97
	v_mul_f32_e32 v10, v10, v97
	v_mul_f32_e32 v11, v11, v97
	v_mul_f32_e32 v12, v12, v97
	v_mul_f32_e32 v13, v13, v97
	v_mul_f32_e32 v14, v14, v97
	v_mul_f32_e32 v15, v15, v97
	v_mul_f32_e32 v16, v16, v97
	v_mul_f32_e32 v25, v25, v97
	v_mul_f32_e32 v26, v26, v97
	v_mul_f32_e32 v27, v27, v97
	v_mul_f32_e32 v28, v28, v97
	v_mul_f32_e32 v29, v29, v97
	v_mul_f32_e32 v30, v30, v97
	v_mul_f32_e32 v31, v31, v97
	v_mul_f32_e32 v32, v32, v97
	v_mul_f32_e32 v17, v17, v97
	v_mul_f32_e32 v18, v18, v97
	v_mul_f32_e32 v19, v19, v97
	v_mul_f32_e32 v20, v20, v97
	v_mul_f32_e32 v21, v21, v97
	v_mul_f32_e32 v22, v22, v97
	v_mul_f32_e32 v23, v23, v97
	v_mul_f32_e32 v24, v24, v97
	v_mul_f32_e32 v1, v1, v97
	v_mul_f32_e32 v2, v2, v97
	v_mul_f32_e32 v3, v3, v97
	v_mul_f32_e32 v4, v4, v97
	v_mul_f32_e32 v5, v5, v97
	v_mul_f32_e32 v6, v6, v97
	v_mul_f32_e32 v7, v7, v97
	v_mul_f32_e32 v8, v8, v97
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[244:247], v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[248:251], v0
	ds_load_b128 v[156:159], v117 offset:2048
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[240:247], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[240:243], v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[244:247], v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[240:247], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[160:163], v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[168:171], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[240:243], v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[244:247], v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[240:247], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[240:243], v0
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[244:247], v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[240:247], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v82, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v239.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v83, v238
	v_sub_f32_e32 v36, v84, v238
	v_sub_f32_e32 v37, v85, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v86, v238
	v_sub_f32_e32 v39, v87, v238
	v_sub_f32_e32 v40, v88, v238
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v239.l, v33.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[124:127], v0
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[176:179], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v81, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s58, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v0, v0, v34, 0x7fff
	v_and_b32_e32 v34, 1, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	v_add3_u32 v33, v33, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s58
	v_permlanex16_b32 v34, v0, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v33, v34, v0, v112
	v_perm_b32 v34, v34, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v239.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v35.h
	v_cmp_o_f32_e64 s54, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v239
	v_add3_u32 v35, v35, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s54
	v_permlanex16_b32 v36, v0, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v35, v36, v0, v112
	v_perm_b32 v36, v36, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v239.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v37.h
	v_cmp_o_f32_e64 s54, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v239
	v_add3_u32 v37, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s54
	v_permlanex16_b32 v38, v0, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v37, v38, v0, v112
	v_perm_b32 v38, v38, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v239.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v39.h
	v_cmp_o_f32_e64 s50, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v239
	v_add3_u32 v39, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s50
	v_permlanex16_b32 v40, v0, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v40, v0, v112
	v_perm_b32 v40, v40, v0, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[156:163], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[252:255], v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[156:159], v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[160:163], v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[156:163], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[128:131], v0
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v50, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v239.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v51, v238
	v_sub_f32_e32 v36, v52, v238
	v_sub_f32_e32 v37, v53, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v54, v238
	v_sub_f32_e32 v39, v55, v238
	v_sub_f32_e32 v40, v56, v238
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v239.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s50, v33, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[156:159], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v49, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v34, 0x7fff
	v_and_b32_e32 v34, 1, v239
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v0, v112
	v_perm_b32 v34, v34, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s46, v35, v35
	v_and_b32_e32 v36, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v112
	v_perm_b32 v36, v36, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s46, v37, v37
	v_and_b32_e32 v38, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v112
	v_perm_b32 v38, v38, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v39, v39
	v_and_b32_e32 v40, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v112
	v_perm_b32 v40, v40, v0, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[85:88], v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[160:163], v182
	ds_load_b128 v[85:88], v183
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[156:163], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[164:167], v0
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v117 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[172:175], v0
	ds_load_b128 v[81:84], v117 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[33:40], v[17:24]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v68, v68
	v_max_f32_e32 v51, v72, v72
	v_max3_f32 v52, v66, v71, v67
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v42, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v239.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v43, v238
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v51, v50
	v_max3_f32 v51, v69, v65, v70
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v37, v45, v238
	v_sub_f32_e32 v39, v47, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v51, v52, v50
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s44
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v33.h
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v51
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v51
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v51
.Ltmp28:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v51, v122, v122
	v_max_f32_e32 v122, v51, v50
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v65, v122
	v_sub_f32_e32 v56, v66, v122
	v_sub_f32_e32 v65, v67, v122
	v_sub_f32_e32 v66, v68, v122
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v60, v60
	v_max_f32_e32 v68, v64, v64
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v41, v238
	v_sub_f32_e32 v51, v69, v122
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v58, v63, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v52, v70, v122 :: v_dual_max_f32 v67, v68, v67
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v61, v57, v62
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v71, v122
	v_sub_f32_e32 v54, v72, v122
.Ltmp35:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v68, v69, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v68, v67
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v44, v238 :: v_dual_max_f32 v67, v67, v68
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v38, v46, v238 :: v_dual_max_f32 v67, v67, v68
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v40, v48, v238 :: v_dual_max_f32 v67, v67, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v123, v123
	v_dual_max_f32 v123, v68, v67 :: v_dual_and_b32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v0, v0, v34, 0x7fff
	v_and_b32_e32 v34, 1, v239
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v123
	v_sub_f32_e32 v64, v64, v123
	v_sub_f32_e32 v60, v60, v123
	v_sub_f32_e32 v61, v61, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v123
	v_sub_f32_e32 v57, v57, v123
	v_sub_f32_e32 v59, v59, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v0, v112
	v_perm_b32 v34, v34, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v35, v35
	v_and_b32_e32 v36, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v112
	v_perm_b32 v36, v36, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v37, v37
	v_and_b32_e32 v38, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v112
	v_perm_b32 v38, v38, v0, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v239.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v39, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v239.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v39, v39
	v_and_b32_e32 v40, 1, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v112
	v_perm_b32 v40, v40, v0, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[164:171], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[172:179], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v0
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v92, v92
.Ltmp49:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v96, v96
	v_max3_f32 v34, v90, v95, v91
	v_max_f32_e32 v41, v76, v76
	v_max_f32_e32 v42, v80, v80
	v_max3_f32 v43, v74, v79, v75
	v_max_f32_e32 v0, v33, v0
	v_max3_f32 v33, v93, v89, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v41, v42, v41
	v_max3_f32 v42, v77, v73, v78
	v_max3_f32 v0, v33, v34, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v41, v42, v43, v41
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, v0 :: v_dual_mov_b32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v42, v42, v42
	v_dual_max_f32 v0, v0, v33 :: v_dual_max_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, v0 :: v_dual_mov_b32 v42, v41
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v0, v0, v33 :: v_dual_max_f32 v41, v41, v42
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, v0 :: v_dual_mov_b32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v42, v42, v42
	v_max_f32_e32 v0, v0, v33
.Ltmp57:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v120, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v42
.Ltmp59:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v121, v121
	v_dual_max_f32 v120, v33, v0 :: v_dual_max_f32 v121, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v93, v120
	v_sub_f32_e32 v37, v89, v120
	v_dual_sub_f32 v38, v90, v120 :: v_dual_sub_f32 v49, v76, v121
	v_sub_f32_e32 v35, v95, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v91, v120
	v_sub_f32_e32 v36, v96, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v92, v120
	v_sub_f32_e32 v42, v77, v121
	v_sub_f32_e32 v46, v73, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v78, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s31
	v_cndmask_b32_e64 v37, 0, v37, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v74, v121
	v_sub_f32_e32 v44, v79, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v75, v121
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v37
.Ltmp61:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v38
	v_exp_f32_e32 v38, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v80, v121
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s35
	v_cndmask_b32_e64 v38, 0, v38, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v94, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v39
	v_exp_f32_e32 v39, v66
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp65:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s34
	v_cndmask_b32_e64 v39, 0, v39, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v40
	v_exp_f32_e32 v40, v60
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v40, 0, v40, s14
.Ltmp68:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp69:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v35, v36 :: v_dual_mov_b32 v35, v106
.Ltmp71:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v47
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s25
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s28
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v33, v34
.Ltmp82:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v42
	v_exp_f32_e32 v34, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0, v34, s29
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp84:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s15
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v36
.Ltmp86:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp88:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp90:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp92:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v65
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v36, v37
	v_mov_b32_e32 v36, v108
.Ltmp94:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp96:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp98:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v33, v34
.Ltmp105:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v51
	v_exp_f32_e32 v34, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s13
	v_cndmask_b32_e64 v34, 0, v34, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp107:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp109:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v53
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s9
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v37, v38 :: v_dual_mov_b32 v37, v107
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v58
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s16
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s18
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v33, v34
.Ltmp128:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v61
	v_exp_f32_e32 v34, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0, v34, s19
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp130:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s6
.Ltmp131:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp132:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp134:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
	v_add_f32_e32 v34, v38, v39
	v_mov_b32_e32 v38, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v33, v33, v34
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v33, v34
.Ltmp144:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v235, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v33, v0
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v235, v0
	v_mov_b32_e32 v235, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v33, 0, v33, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v106, v35, v33 :: v_dual_max_f32 v33, v234, v234
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v33, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v34, v234, v33
	v_mov_b32_e32 v234, v33
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v221
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v108, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v50
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v221, v34
	v_mov_b32_e32 v221, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v107, v37, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v236, v236
	v_max_f32_e32 v35, v35, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v236, v35
	v_mov_b32_e32 v236, v35
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v109, v38, v36
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v34, off, off offset:136
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v63, off, off offset:120
	scratch_load_b32 v65, off, off offset:128
	scratch_load_b32 v66, off, off offset:132
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v89, 16, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v34
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v65, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v66
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s81, s81, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[106:107], v[108:109] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v12
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_fma_f32 v58, -v41, v49, 1.0
	v_mul_f32_e32 v54, v34, v45
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
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
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fixup_f32 v10, v34, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v12, v33, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v35, v0, v11
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v16, v0, v16
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
	v_div_fixup_f32 v13, v39, v0, v13
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v34, v0, v14
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
	v_div_fixup_f32 v15, v33, v0, v15
	v_div_fixup_f32 v16, v34, v0, v16
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
	v_div_scale_f32 v45, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v17
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
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
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v20, v0, v20
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v22
	v_div_fixup_f32 v18, v35, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v19, v38, v0, v19
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v21, v0, v21
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v24
	v_div_fixup_f32 v20, v36, v0, v20
	v_div_scale_f32 v35, s4, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
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
	v_div_fixup_f32 v22, v35, v0, v22
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
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
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v24, v33, v0, v24
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
	v_cndmask_b32_e64 v23, 0, v23, s0
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
	v_cndmask_b32_e64 v24, 0, v24, s0
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
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v9, 16, 1
	v_bfe_u32 v39, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v9, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v9, v10, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v12, 16, 1
	v_bfe_u32 v38, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s6
	v_add3_u32 v11, v12, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_add3_u32 v12, v13, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v13, v15, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v16, 16, 1
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_add3_u32 v13, v15, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_bfe_u32 v14, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v26, 16, 1
	v_bfe_u32 v15, v27, 16, 1
	v_add3_u32 v14, v25, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v13, v26, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v15, v27, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s4
	v_bfe_u32 v14, v28, 16, 1
	v_bfe_u32 v16, v29, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_bfe_u32 v15, v30, 16, 1
	v_add3_u32 v14, v28, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v16, v29, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_bfe_u32 v25, v31, 16, 1
	v_add3_u32 v15, v30, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s4
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v17, 16, 1
	v_bfe_u32 v26, v18, 16, 1
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_add3_u32 v16, v17, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v15.h, 0x7fff, v25.h, s4
	v_bfe_u32 v18, v19, 16, 1
	v_bfe_u32 v25, v20, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	v_add3_u32 v19, v20, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v17, v21, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v21, v24, 16, 1
	v_add3_u32 v20, v22, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v21, v24, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v1, 16, 1
	v_bfe_u32 v22, v2, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v3, 16, 1
	v_add3_u32 v20, v1, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v1, v2, v22, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_cmp_o_f32_e64 s4, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v20, v5, v20, 0x7fff
	v_bfe_u32 v21, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v0, v0
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v89
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v11, v8, s61
	v_cndmask_b32_e64 v5, v8, v11, s61
	v_cndmask_b32_e64 v6, v10, v9, s61
	v_cndmask_b32_e64 v7, v9, v10, s61
	v_cndmask_b32_e64 v8, v14, v12, s61
	v_cndmask_b32_e64 v9, v12, v14, s61
	v_cndmask_b32_e64 v10, v15, v13, s61
	v_cndmask_b32_e64 v11, v13, v15, s61
	v_cndmask_b32_e64 v12, v17, v16, s61
	v_cndmask_b32_e64 v13, v16, v17, s61
	v_cndmask_b32_e64 v15, v18, v19, s61
	v_cndmask_b32_e64 v16, v0, v1, s61
	v_cndmask_b32_e64 v0, v1, v0, s61
	v_cndmask_b32_e64 v1, v2, v3, s61
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s70, v63
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v19, v18, s61
	v_cndmask_b32_e64 v17, v3, v2, s61
	v_permlanex16_b32 v2, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v9, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s70, v33
	v_cmp_gt_i32_e64 s3, s70, v32
	v_cmp_gt_i32_e64 s0, s70, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v112
	v_perm_b32 v1, v2, v4, v118
	v_perm_b32 v2, v3, v6, v112
	v_perm_b32 v3, v3, v6, v118
	v_perm_b32 v6, v7, v10, v112
	v_perm_b32 v7, v7, v10, v118
	v_perm_b32 v10, v11, v14, v112
	v_perm_b32 v11, v11, v14, v118
	v_perm_b32 v14, v15, v17, v112
	v_perm_b32 v15, v15, v17, v118
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v5, v8, v112
	v_perm_b32 v5, v5, v8, v118
	v_perm_b32 v8, v9, v12, v112
	v_perm_b32 v9, v9, v12, v118
	v_perm_b32 v12, v13, v16, v112
	v_perm_b32 v13, v13, v16, v118
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s70, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
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
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 144
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 144
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20560
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 144
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
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
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 144
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 35
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
