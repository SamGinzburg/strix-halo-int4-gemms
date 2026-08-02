	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s93, s[0:1], 0x5c
	v_mov_b32_e32 v67, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
.Ltmp0:
	.loc	1 753 19 prologue_end           ; attention.py:753:19
	s_lshl_b32 s79, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 7, v67
	v_lshrrev_b32_e32 v41, 3, v67
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s78, s79, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v129, 3, v65
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v25, s79, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v25
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[130:131], null, s93, v41, v[129:130]
	s_mul_i32 s8, s93, s78
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s67, s93, v129
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s67
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[142:143], null, s93, 48, v[130:131]
	v_lshl_add_u32 v190, s93, 4, v130
	v_lshl_add_u32 v131, s93, 5, v130
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v0, v130, s8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v1, v190, s8, 1
	v_add_lshl_u32 v2, v131, s8, 1
	v_add_lshl_u32 v3, v142, s8, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_lshlrev_b32_e32 v66, 1, v67
	v_cndmask_b32_e32 v4, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v8, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v12, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[0:3], v0, s[4:7], 0 offen
	buffer_load_b128 v[4:7], v4, s[4:7], 0 offen
	buffer_load_b128 v[8:11], v8, s[4:7], 0 offen
	buffer_load_b128 v[12:15], v12, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s79, s13
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v16, 4, v67
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s14
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v17, 0x70, v66
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 64
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v28, 15, v67
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s79, s12
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v16, v16, v17
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s95, s5, s7
	v_lshlrev_b32_e32 v71, 2, v67
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v146, 0, v16
	v_lshlrev_b32_e32 v72, 3, v28
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s94, s6, 0x7fffffc0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s95, s95, 63
	s_mov_b32 s4, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s94, s95
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v146, v[0:3]
	s_waitcnt vmcnt(2)
	ds_store_b128 v146, v[4:7] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v146, v[8:11] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v146, v[12:15] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v26, 3, v28
	v_lshlrev_b32_e32 v27, 2, v67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
.LBB0_3:                                ; %Flow213
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s92, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0x60, v67
	v_and_b32_e32 v70, 0x78, v67
	v_and_b32_e32 v68, 16, v67
	s_and_not1_b32 vcc_lo, exec_lo, s4
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v135, v8
	v_mov_b32_e32 v133, v8
	v_mov_b32_e32 v134, v8
	v_mov_b32_e32 v132, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, 16, v25
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s8, s4, 28
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v4, 6, v69
	s_add_i32 s15, s3, s8
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s14, v25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, 32, v25
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v0, s14, v0
	v_dual_mov_b32 v64, v57 :: v_dual_lshlrev_b32 v5, 4, v65
	v_mov_b32_e32 v58, v57
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v154, s12, v3
	v_dual_mov_b32 v59, v57 :: v_dual_add_nc_u32 v158, s13, v3
	v_dual_mov_b32 v62, v57 :: v_dual_lshlrev_b32 v3, 7, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 48, v25
	v_dual_mov_b32 v60, v57 :: v_dual_add_nc_u32 v1, s14, v1
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v155, s12, v0
	v_dual_mov_b32 v18, v57 :: v_dual_add_nc_u32 v159, s13, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v0, v3, v4, v5
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s14, v2
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v156, s12, v1
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v160, s13, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v1, 0x70, v0, 0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v157, s12, v2
	v_dual_mov_b32 v20, v57 :: v_dual_add_nc_u32 v161, s13, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v2, 0x60, v0, 0
	v_xad_u32 v4, 0x50, v0, 0
	v_xad_u32 v6, v0, 64, 0
	scratch_store_b32 off, v28, off offset:192 ; 4-byte Folded Spill
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[37:40], v4
	ds_load_b128 v[33:36], v6
	v_xad_u32 v1, v0, 48, 0
	v_xad_u32 v2, v0, 32, 0
	v_xad_u32 v4, v0, 16, 0
	v_dual_mov_b32 v63, v57 :: v_dual_add_nc_u32 v6, 0, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s11, v41
	v_or_b32_e32 v162, v5, v3
	ds_load_b128 v[45:48], v1
	ds_load_b128 v[41:44], v2
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[49:52], v6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v7, 1, v129
	v_or_b32_e32 v12, 5, v129
	v_or_b32_e32 v8, 2, v129
	v_or_b32_e32 v13, 6, v129
	v_mov_b32_e32 v17, v57
	v_lshl_add_u32 v3, s11, 4, v0
	v_mad_u64_u32 v[1:2], null, s11, 48, v[0:1]
	v_lshl_add_u32 v4, s11, 5, v0
	v_dual_mov_b32 v22, v57 :: v_dual_add_nc_u32 v163, v0, v129
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, v3, v129
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v9, 3, v129
	v_mov_b32_e32 v19, v57
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v2, v1, v12
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v11, 4, v129
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v21, v57 :: v_dual_add_nc_u32 v0, v3, v7
	scratch_store_b32 off, v2, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, v1, v13
	v_mov_b32_e32 v23, v57
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v3, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 7, v129
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v2, off offset:72 ; 4-byte Folded Spill
	v_dual_mov_b32 v15, v57 :: v_dual_and_b32 v2, 28, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v67, off offset:188
	v_add_nc_u32_e32 v0, v3, v9
	v_lshlrev_b32_e32 v6, 2, v69
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[80:81], s[0:1], 0x30
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s15, -16
	v_and_b32_e32 v10, 0x80, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v68, off offset:196
	v_add_nc_u32_e32 v0, v3, v11
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s0, s3, s0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s3, s15, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s0, 0x10007
	v_mov_b16_e64 v151.l, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b32 off, v69, off offset:200
	v_add_nc_u32_e32 v0, v3, v12
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s0, s1
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s0, s10, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s15, s3, 14
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v70, off offset:204
	v_add_nc_u32_e32 v0, v3, v13
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s97, s8, 0x3fb8aa3b
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s68, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:24
	scratch_store_b32 off, v71, off offset:208
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v0, v3, v14
	v_lshlrev_b32_e32 v3, 5, v67
	v_mov_b32_e32 v139, 0xff800000
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s96, s1, 0xfffff800
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:28
	scratch_store_b32 off, v72, off offset:212
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v0, v4, v129
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s3
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s11, s79
	s_add_i32 s98, s0, s1
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v4, v7
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_mov_b32 v147, 0xff800000
	v_cmp_eq_u32_e64 s0, 0, v68
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v133, v57 :: v_dual_add_nc_u32 v0, v4, v8
	v_mov_b32_e32 v24, v57
	s_mov_b32 s87, 0x31027000
	v_mov_b32_e32 v135, v57
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v4, v9
	s_mov_b32 s86, 0x7ffffffe
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s96, s96, s15
	s_add_i32 s98, s98, s3
	s_and_b32 s81, s81, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v1, v129
	s_lshl_b32 s99, s92, 1
	v_mov_b32_e32 v16, v57
	s_mul_i32 s100, s92, 3
	s_and_b32 s89, s7, 0xffff
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v1, v7
	v_and_b32_e32 v7, 0x1b8, v71
	s_mov_b32 s84, s4
	s_mov_b32 s85, s5
	s_mov_b32 s69, s68
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v1, v8
	v_lshlrev_b32_e32 v8, 5, v68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v1, v9
	v_bfe_i32 v9, v67, 0, 1
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	v_mov_b32_e32 v132, v57
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v1, v11
	v_add_nc_u32_e32 v1, v1, v14
	s_mov_b32 s75, s68
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:64
	scratch_store_b32 off, v1, off offset:76
	v_and_b32_e32 v0, 1, v67
	v_lshlrev_b32_e32 v1, 9, v67
	s_mov_b32 s101, 0x76543210
	s_mov_b32 s88, s6
	s_mov_b32 s90, s86
	v_lshlrev_b32_e32 v0, 6, v0
	v_mov_b32_e32 v134, v57
	s_mov_b32 s91, s87
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s92, v129
	v_mov_b32_e32 v138, 0xff800000
	v_and_or_b32 v0, 0x1c00, v1, v0
	v_and_b32_e32 v1, 0x60, v3
	v_lshl_or_b32 v3, v2, 7, v6
	v_bfe_i32 v6, v67, 2, 1
	v_mov_b32_e32 v148, 0xff800000
	v_or3_b32 v184, v0, v8, v7
	v_bfe_i32 v0, v67, 5, 1
	v_or3_b32 v185, v3, v1, v2
	v_and_b32_e32 v2, 0x2040, v6
	v_bfe_i32 v6, v67, 3, 1
	v_and_b32_e32 v3, 8, v67
	v_and_b32_e32 v0, 0x2040, v0
	v_lshlrev_b32_e32 v7, 6, v68
	v_and_or_b32 v2, 0x1020, v9, v2
	v_and_b32_e32 v9, 4, v67
	v_lshlrev_b32_e32 v8, 3, v67
	v_and_or_b32 v0, 0x1020, v6, v0
	v_lshl_or_b32 v3, v3, 4, v7
	v_and_b32_e32 v7, 0x70, v67
	v_mov_b32_e32 v140, 0xff800000
	v_and_b32_e32 v8, 0x310, v8
	v_xor_b32_e32 v0, v0, v1
	v_lshl_add_u32 v1, v9, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or3_b32 v186, v2, v3, v8
	v_and_b32_e32 v2, 0x7c, v71
	v_add3_u32 v0, v1, v10, v0
	v_mov_b32_e32 v1, 0x5410
	v_lshrrev_b32_e32 v8, 3, v69
	v_mov_b32_e32 v3, 0x7632
	v_lshl_or_b32 v2, v69, 4, v2
	v_add_nc_u32_e32 v222, v0, v68
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_mov_b32_e32 v10, v57
	v_cndmask_b32_e64 v3, 0x3276, v3, s0
	v_xor_b32_e32 v8, v2, v8
	v_xor_b32_e32 v2, v5, v70
	v_lshl_or_b32 v1, v1, 8, v1
	v_and_b32_e32 v5, 0x410, v6
	v_mul_u32_u24_e32 v6, 0x90, v65
	v_lshl_or_b32 v3, v3, 8, v3
	v_lshl_or_b32 v189, v65, 10, v2
	v_and_b32_e32 v1, 0x540054, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v2, v4, v12
	v_xor_b32_e32 v191, v6, v5
	v_mov_b32_e32 v6, v57
	v_lshrrev_b32_e32 v9, 1, v7
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v7, v7, 6, v72
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 1, v70
	v_xor_b32_e32 v5, 0x70, v162
	v_mov_b32_e32 v12, v57
	v_and_b32_e32 v194, 0x5040504, v1
	v_xor_b32_e32 v1, 16, v162
	v_xor_b32_e32 v7, v7, v9
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v9, v4, v11
	v_mad_u64_u32 v[136:137], null, s92, v65, v[129:130]
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v196, 0, v1
	v_xor_b32_e32 v1, 48, v162
	scratch_store_b32 off, v9, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v202, 0, v5
	v_add_nc_u32_e32 v203, 0, v7
	v_dual_mov_b32 v9, v57 :: v_dual_add_nc_u32 v198, 0, v1
	v_xor_b32_e32 v1, 8, v184
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v137, 0xff800000
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:88 ; 4-byte Folded Spill
	v_and_b32_e32 v2, 0x760076, v3
	v_add_nc_u32_e32 v3, v4, v13
	v_mov_b32_e32 v13, v57
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_lshl_or_b32 v2, v2, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v195, 0x7060706, v2
	v_xor_b32_e32 v2, 64, v162
	v_add_nc_u32_e32 v199, 0, v2
	v_xor_b32_e32 v2, 16, v184
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v2
	scratch_store_b32 off, v3, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v14
	v_xor_b32_e32 v4, 0x60, v162
	v_mov_b32_e32 v14, v57
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v184
	v_add_nc_u32_e32 v201, 0, v4
	v_xor_b32_e32 v4, 56, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:112
	scratch_store_b32 off, v8, off offset:84
	v_xor_b32_e32 v1, 0x810, v8
	v_dual_mov_b32 v8, v57 :: v_dual_add_nc_u32 v211, 0, v1
	v_xor_b32_e32 v1, 8, v185
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:96 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 32, v162
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v197, 0, v3
	v_xor_b32_e32 v3, 0x50, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v200, 0, v3
	v_xor_b32_e32 v3, 24, v184
	v_add_nc_u32_e32 v2, 0, v3
	v_xor_b32_e32 v3, 48, v184
	scratch_store_b32 off, v2, off offset:108 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 40, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v3
	v_xor_b32_e32 v3, 12, v185
	v_add_nc_u32_e32 v1, 0, v3
	scratch_store_b32 off, v2, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v4
	v_xor_b32_e32 v4, 16, v185
	v_xor_b32_e32 v3, 32, v186
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v2, off offset:124 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 4, v185
	v_xor_b32_e32 v4, 64, v186
	v_add_nc_u32_e32 v219, 0, v3
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 24, v185
	v_add_nc_u32_e32 v2, 0, v2
	v_xor_b32_e32 v3, 0x2d0, v189
	v_add_nc_u32_e32 v220, 0, v4
	v_xor_b32_e32 v4, 0x360, v189
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 20, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:144 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 28, v185
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v186
	scratch_store_b32 off, v2, off offset:152 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x90, v189
	v_add_nc_u32_e32 v221, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x240, v189
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v189
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 16, v191
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 32, v191
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 48, v191
	v_add_nc_u32_e32 v143, 0, v2
	v_xor_b32_e32 v2, 0x70, v191
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 64, v191
	v_add_nc_u32_e32 v192, 0, v3
	v_xor_b32_e32 v3, 0x820, v191
	v_add_nc_u32_e32 v205, 0, v2
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x3f0, v189
	v_add_nc_u32_e32 v187, 0, v4
	v_xor_b32_e32 v4, 0x830, v191
	v_add_nc_u32_e32 v206, 0, v3
	v_xor_b32_e32 v2, 0x870, v191
	v_add_nc_u32_e32 v0, 0, v0
	v_xor_b32_e32 v3, 0x840, v191
	v_add_nc_u32_e32 v207, 0, v4
	v_xor_b32_e32 v4, 0x850, v191
	v_add_nc_u32_e32 v210, 0, v2
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x60, v191
	v_add_nc_u32_e32 v212, 0, v3
	v_add_nc_u32_e32 v213, 0, v4
	v_xor_b32_e32 v2, 0x1060, v191
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v191
	v_add_nc_u32_e32 v204, 0, v1
	v_xor_b32_e32 v1, 0x860, v191
	v_xor_b32_e32 v3, 0x1070, v191
	v_xor_b32_e32 v4, 0x1010, v191
	v_add_nc_u32_e32 v193, 0, v0
	v_xor_b32_e32 v0, 0x810, v191
	v_add_nc_u32_e32 v209, 0, v1
	v_xor_b32_e32 v1, 0x1050, v191
	v_add_nc_u32_e32 v216, 0, v2
	v_add_nc_u32_e32 v188, 0, v3
	v_add_nc_u32_e32 v208, 0, v0
	v_xor_b32_e32 v0, 0x1040, v191
	v_add_nc_u32_e32 v215, 0, v1
	v_add_nc_u32_e32 v217, 0, v4
	v_xor_b32_e32 v1, 0x1030, v191
	v_xor_b32_e32 v2, 0x1860, v191
	v_add_nc_u32_e32 v214, 0, v0
	v_xor_b32_e32 v0, 0x1020, v191
	v_xor_b32_e32 v3, 0x1870, v191
	v_xor_b32_e32 v4, 0x1840, v191
	v_add_nc_u32_e32 v180, 0, v2
	v_xor_b32_e32 v2, 0x1820, v191
	v_add_nc_u32_e32 v218, 0, v0
	v_add_nc_u32_e32 v0, 0, v1
	v_add_nc_u32_e32 v181, 0, v3
	v_add_nc_u32_e32 v182, 0, v4
	v_xor_b32_e32 v1, 0x1850, v191
	v_xor_b32_e32 v3, 0x1830, v191
	v_xor_b32_e32 v4, 0x1810, v191
	v_add_nc_u32_e32 v255, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v2, v57 :: v_dual_add_nc_u32 v183, 0, v1
	v_add_nc_u32_e32 v145, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v1, v57 :: v_dual_add_nc_u32 v144, 0, v4
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v4, v57
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s66, s96, s94
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v120, s75 :: v_dual_add_nc_u32 v81, 0, v162
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s66, s93
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v119, s74 :: v_dual_mov_b32 v118, s73
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s0, v190, 1
	v_add_lshl_u32 v65, s0, v130, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v117, s72 :: v_dual_mov_b32 v116, s71
	v_dual_mov_b32 v115, s70 :: v_dual_mov_b32 v114, s69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v66, s67
	v_add_lshl_u32 v66, s0, v131, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s67
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v113, s68
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s102, s98, s94
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v66, s67
	v_add_lshl_u32 v66, s0, v142, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v66, s67
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[84:87], 0 offen
	buffer_load_b128 v[69:72], v69, s[84:87], 0 offen
	buffer_load_b128 v[73:76], v73, s[84:87], 0 offen
	buffer_load_b128 v[77:80], v77, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v146, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v146, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v146, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v146, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v196
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v196 offset:2048
	ds_load_b128 v[101:104], v196 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v196 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[65:72], v[49:56], v[113:120]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[73:80], v[49:56], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[49:56], v[113:120]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[49:56], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v198
	ds_load_b128 v[97:100], v197
	ds_load_b128 v[105:108], v197 offset:2048
	ds_load_b128 v[109:112], v198 offset:2048
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v116, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[105:112], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v198 offset:4096
	ds_load_b128 v[97:100], v197 offset:4096
	ds_load_b128 v[105:108], v197 offset:6144
	ds_load_b128 v[109:112], v198 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v200
	ds_load_b128 v[97:100], v199
	ds_load_b128 v[105:108], v199 offset:2048
	ds_load_b128 v[109:112], v200 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[33:40], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[105:112], v[33:40], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v200 offset:4096
	ds_load_b128 v[97:100], v199 offset:4096
	ds_load_b128 v[105:108], v199 offset:6144
	ds_load_b128 v[109:112], v200 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v202
	ds_load_b128 v[97:100], v201
	ds_load_b128 v[105:108], v201 offset:2048
	ds_load_b128 v[109:112], v202 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[25:32], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[105:112], v[25:32], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v202 offset:4096
	ds_load_b128 v[97:100], v201 offset:4096
	ds_load_b128 v[105:108], v201 offset:6144
	ds_load_b128 v[109:112], v202 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[25:32], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v129
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, 2, v163
	v_add_nc_u32_e32 v100, 3, v163
	v_add_nc_u32_e32 v101, 4, v163
	v_add_nc_u32_e32 v99, 1, v163
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v97, v154
	v_cmp_ge_i32_e64 s7, v97, v155
	v_cmp_ge_i32_e64 s25, v97, v156
	v_cmp_ge_i32_e64 s1, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v97, v158
	v_cmp_le_i32_e64 s8, v97, v159
	v_cmp_le_i32_e64 s29, v97, v160
	v_cmp_le_i32_e64 s9, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 1, v129
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v102, 5, v163
	v_add_nc_u32_e32 v103, 6, v163
	v_add_nc_u32_e32 v104, 7, v163
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s0, s0, s4
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v98, s102, v98, 1
	v_add_lshl_u32 v100, s102, v100, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v101, s102, v101, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v97, v154
	v_cmp_ge_i32_e64 s10, v97, v155
	v_cmp_ge_i32_e64 s30, v97, v156
	v_cmp_ge_i32_e64 s12, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v97, v158
	v_cmp_le_i32_e64 s11, v97, v159
	v_cmp_le_i32_e64 s35, v97, v160
	v_cmp_le_i32_e64 s13, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 2, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v99, s102, v99, 1
	v_add_lshl_u32 v102, s102, v102, 1
	v_add_lshl_u32 v103, s102, v103, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v104, s102, v104, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[25:32], v[73:80]
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:24
	scratch_load_b32 v108, off, off offset:28
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v97, v154
	v_cmp_ge_i32_e64 s22, v97, v155
	v_cmp_ge_i32_e64 s45, v97, v156
	v_cmp_ge_i32_e64 s31, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v97, v158
	v_cmp_le_i32_e64 s26, v97, v159
	v_cmp_le_i32_e64 s47, v97, v160
	v_cmp_le_i32_e64 s34, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 3, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s18
	s_and_b32 s18, s2, s3
	s_and_b32 s5, s2, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v99, 0x80000000, v99, s18
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s7, s8
	s_and_b32 s7, s22, s26
	s_and_b32 s8, s2, s3
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v97, v154
	v_cmp_ge_i32_e64 s27, v97, v155
	v_cmp_ge_i32_e64 s36, v97, v156
	v_cmp_ge_i32_e64 s14, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v97, v158
	v_cmp_le_i32_e64 s28, v97, v159
	v_cmp_le_i32_e64 s37, v97, v160
	v_cmp_le_i32_e64 s15, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 4, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s19, s20
	s_and_b32 s22, s27, s28
	s_and_b32 s19, s2, s19
	s_and_b32 s11, s10, s11
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v100, 0x80000000, v100, s19
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s2, s7
	s_and_b32 s27, s2, s22
	s_and_b32 s26, s2, s11
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v97, v154
	v_cmp_ge_i32_e64 s51, v97, v155
	v_cmp_ge_i32_e64 s41, v97, v156
	v_cmp_ge_i32_e64 s16, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v97, v158
	v_cmp_le_i32_e64 s52, v97, v159
	v_cmp_le_i32_e64 s42, v97, v160
	v_cmp_le_i32_e64 s17, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 5, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s21, s59
	s_and_b32 s28, s51, s52
	s_and_b32 s0, s2, s20
	s_and_b32 s7, s2, s28
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:92
	scratch_load_b32 v112, off, off offset:96
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s25, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v97, v154
	v_cmp_ge_i32_e64 s53, v97, v155
	v_cmp_ge_i32_e64 s43, v97, v156
	v_cmp_ge_i32_e64 s23, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v97, v158
	v_cmp_le_i32_e64 s54, v97, v159
	v_cmp_le_i32_e64 s44, v97, v160
	v_cmp_le_i32_e64 s24, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 6, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s60, s61
	s_and_b32 s51, s53, s54
	s_and_b32 s20, s2, s21
	s_and_b32 s22, s2, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v102, 0x80000000, v102, s20
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s45, s47
	s_and_b32 s30, s30, s35
	s_and_b32 s35, s36, s37
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v97, v154
	v_cmp_ge_i32_e64 s55, v97, v155
	v_cmp_ge_i32_e64 s46, v97, v156
	v_cmp_ge_i32_e64 s33, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v97, v158
	v_cmp_le_i32_e64 s56, v97, v159
	v_cmp_le_i32_e64 s48, v97, v160
	v_cmp_le_i32_e64 s38, v97, v161
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, 7, v129
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s62, s63
	s_and_b32 s52, s55, s56
	s_and_b32 s6, s2, s59
	s_and_b32 s11, s2, s52
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v103, 0x80000000, v103, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s2, s3
	s_and_b32 s36, s41, s42
	s_and_b32 s29, s2, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v97, v154
	v_cmp_ge_i32_e64 s57, v97, v155
	v_cmp_ge_i32_e64 s49, v97, v156
	v_cmp_ge_i32_e64 s39, v97, v157
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v97, v158
	v_cmp_le_i32_e64 s58, v97, v159
	v_cmp_le_i32_e64 s50, v97, v160
	v_cmp_le_i32_e64 s40, v97, v161
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v97, s102, v163, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s64, s65
	s_and_b32 s53, s57, s58
	s_and_b32 s21, s2, s60
	s_and_b32 s28, s2, s53
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	v_cndmask_b32_e64 v104, 0x80000000, v104, s21
	s_clause 0x7
	buffer_load_u16 v97, v97, s[80:83], 0 offen
	buffer_load_u16 v98, v98, s[80:83], 0 offen
	buffer_load_u16 v100, v100, s[80:83], 0 offen
	buffer_load_u16 v105, v101, s[80:83], 0 offen
	buffer_load_u16 v106, v102, s[80:83], 0 offen
	buffer_load_u16 v103, v103, s[80:83], 0 offen
	buffer_load_u16 v104, v104, s[80:83], 0 offen
	buffer_load_u16 v99, v99, s[80:83], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s43, s44
	s_and_b32 s41, s46, s48
	s_and_b32 s44, s49, s50
	s_and_b32 s35, s2, s35
	s_and_b32 s42, s2, s36
	s_and_b32 s30, s2, s30
	s_and_b32 s36, s2, s37
	s_and_b32 s43, s2, s41
	s_and_b32 s37, s2, s44
	s_and_b32 s1, s1, s9
	s_and_b32 s3, s31, s34
	s_and_b32 s9, s12, s13
	s_and_b32 s12, s14, s15
	s_and_b32 s14, s23, s24
	s_and_b32 s23, s2, s1
	s_and_b32 s13, s16, s17
	s_and_b32 s24, s2, s3
	s_and_b32 s15, s33, s38
	s_and_b32 s16, s39, s40
	s_and_b32 s39, s2, s12
	s_and_b32 s31, s2, s13
	s_and_b32 s38, s2, s9
	s_and_b32 s40, s2, s14
	s_and_b32 s33, s2, s15
	s_and_b32 s41, s2, s16
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v116, s102, v116, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v116, 0x80000000, v116, s41
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v107, s102, v107, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v108, s102, v108, 1
	v_cndmask_b32_e64 v107, 0x80000000, v107, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v108, 0x80000000, v108, s28
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v111, s102, v111, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v112, s102, v112, 1
	v_cndmask_b32_e64 v111, 0x80000000, v111, s43
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v112, 0x80000000, v112, s37
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v101.l, 0xff80, v97.l, s4
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v101.h, 0xff80, v98.l, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v97.h, 0xff80, v100.l, s19
	scratch_load_b32 v100, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v102.l, 0xff80, v105.l, s0
	scratch_load_b32 v105, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v98.h, 0xff80, v104.l, s21
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v97.l, 0xff80, v99.l, s18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off
	scratch_load_b32 v104, off, off offset:12
	v_cndmask_b16 v98.l, 0xff80, v106.l, s20
	v_cndmask_b16 v102.h, 0xff80, v103.l, s6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:20
	scratch_load_b32 v103, off, off offset:4
	v_mov_b16_e64 v151.h, v101.l
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v100, s102, v100, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v105, s102, v105, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v99, s102, v99, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v104, s102, v104, 1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s10
	v_cndmask_b32_e64 v105, 0x80000000, v105, s7
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v106, s102, v106, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v103, s102, v103, 1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s8
	v_cndmask_b32_e64 v104, 0x80000000, v104, s27
	v_cndmask_b32_e64 v106, 0x80000000, v106, s22
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v103, 0x80000000, v103, s26
	s_clause 0x7
	buffer_load_u16 v99, v99, s[80:83], 0 offen
	buffer_load_u16 v100, v100, s[80:83], 0 offen
	buffer_load_u16 v104, v104, s[80:83], 0 offen
	buffer_load_u16 v109, v105, s[80:83], 0 offen
	buffer_load_u16 v110, v106, s[80:83], 0 offen
	buffer_load_u16 v107, v107, s[80:83], 0 offen
	buffer_load_u16 v108, v108, s[80:83], 0 offen
	buffer_load_u16 v103, v103, s[80:83], 0 offen
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v105.l, 0xff80, v99.l, s8
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v105.h, 0xff80, v100.l, s10
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v99.h, 0xff80, v104.l, s27
	scratch_load_b32 v104, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v106.l, 0xff80, v109.l, s7
	scratch_load_b32 v109, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v100.h, 0xff80, v108.l, s28
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v99.l, 0xff80, v103.l, s26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:32
	scratch_load_b32 v108, off, off offset:44
	v_cndmask_b16 v100.l, 0xff80, v110.l, s22
	v_cndmask_b16 v106.h, 0xff80, v107.l, s11
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v110, off, off offset:88
	scratch_load_b32 v115, off, off offset:72
	scratch_load_b32 v107, off, off offset:36
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v104, s102, v104, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v109, s102, v109, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v103, s102, v103, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v108, s102, v108, 1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s29
	v_cndmask_b32_e64 v109, 0x80000000, v109, s42
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v110, s102, v110, 1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s25
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v107, s102, v107, 1
	v_cndmask_b32_e64 v108, 0x80000000, v108, s35
	v_add_lshl_u32 v115, s102, v115, 1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v107, 0x80000000, v107, s30
	s_clause 0x7
	buffer_load_u16 v103, v103, s[80:83], 0 offen
	buffer_load_u16 v104, v104, s[80:83], 0 offen
	buffer_load_u16 v108, v108, s[80:83], 0 offen
	buffer_load_u16 v113, v109, s[80:83], 0 offen
	buffer_load_u16 v114, v110, s[80:83], 0 offen
	buffer_load_u16 v111, v111, s[80:83], 0 offen
	buffer_load_u16 v112, v112, s[80:83], 0 offen
	buffer_load_u16 v107, v107, s[80:83], 0 offen
	v_cndmask_b32_e64 v115, 0x80000000, v115, s33
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v109.l, 0xff80, v103.l, s25
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v109.h, 0xff80, v104.l, s29
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v103.h, 0xff80, v108.l, s35
	scratch_load_b32 v108, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v110.l, 0xff80, v113.l, s42
	scratch_load_b32 v113, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v104.h, 0xff80, v112.l, s37
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v103.l, 0xff80, v107.l, s30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:48
	scratch_load_b32 v112, off, off offset:60
	v_cndmask_b16 v104.l, 0xff80, v114.l, s36
	v_cndmask_b16 v110.h, 0xff80, v111.l, s43
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v114, off, off offset:68
	scratch_load_b32 v111, off, off offset:52
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v108, s102, v108, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v113, s102, v113, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v107, s102, v107, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v112, s102, v112, 1
	v_cndmask_b32_e64 v108, 0x80000000, v108, s24
	v_cndmask_b32_e64 v113, 0x80000000, v113, s31
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v114, s102, v114, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v111, s102, v111, 1
	v_cndmask_b32_e64 v107, 0x80000000, v107, s23
	v_cndmask_b32_e64 v112, 0x80000000, v112, s39
	v_cndmask_b32_e64 v114, 0x80000000, v114, s40
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v111, 0x80000000, v111, s38
	s_clause 0x7
	buffer_load_u16 v107, v107, s[80:83], 0 offen
	buffer_load_u16 v108, v108, s[80:83], 0 offen
	buffer_load_u16 v112, v112, s[80:83], 0 offen
	buffer_load_u16 v113, v113, s[80:83], 0 offen
	buffer_load_u16 v114, v114, s[80:83], 0 offen
	buffer_load_u16 v115, v115, s[80:83], 0 offen
	buffer_load_u16 v116, v116, s[80:83], 0 offen
	buffer_load_u16 v111, v111, s[80:83], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v123.l, 0xff80, v107.l, s23
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v123.h, 0xff80, v108.l, s24
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v107.h, 0xff80, v112.l, s39
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v124.l, 0xff80, v113.l, s31
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v108.l, 0xff80, v114.l, s40
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v124.h, 0xff80, v115.l, s33
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v108.h, 0xff80, v116.l, s41
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v107.l, 0xff80, v111.l, s38
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v203, v[101:102], v[105:106] offset1:16
	ds_store_2addr_b64 v203, v[97:98], v[99:100] offset0:64 offset1:80
	ds_store_2addr_b64 v203, v[109:110], v[123:124] offset0:32 offset1:48
	ds_store_2addr_b64 v203, v[103:104], v[107:108] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:100
	scratch_load_b32 v115, off, off offset:104
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v111, 0, v184
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v101.l, v151.l
	ds_load_b64 v[111:112], v111
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v101
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s15, s5, s3
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[113:114], v113
	s_waitcnt vmcnt(0)
	ds_load_b64 v[119:120], v115
	scratch_load_b32 v115, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v125, 16, v114
	v_and_b32_e32 v126, 0xffff0000, v114
	s_waitcnt vmcnt(0)
	ds_load_b64 v[121:122], v115
	v_lshlrev_b32_e32 v115, 16, v111
	v_and_b32_e32 v111, 0xffff0000, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v114, 0x3fb8aa3b, v111 :: v_dual_lshlrev_b32 v117, 16, v112
	v_mul_f32_e32 v117, 0x3fb8aa3b, v117
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v114, s97, v82
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v116, 0x3fb8aa3b, v115
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v117, s97, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v115, 0x3fb8aa3b, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v82, 0xffff0000, v119
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v116, s97, v81 :: v_dual_fmac_f32 v115, s97, v84
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v111, 0x3fb8aa3b, v126 :: v_dual_lshlrev_b32 v118, 16, v113
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v113, 0xffff0000, v113
	v_and_b32_e32 v84, 0xffff0000, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v118 :: v_dual_lshlrev_b32 v81, 16, v119
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v111, s97, v88 :: v_dual_mul_f32 v118, 0x3fb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v88, 0x3fb8aa3b, v84 :: v_dual_mul_f32 v119, 0x3fb8aa3b, v81
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v112, s97, v85
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v85, 16, v121
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v118, s97, v86 :: v_dual_lshlrev_b32 v83, 16, v120
	v_fmac_f32_e32 v88, s97, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v86, 0x3fb8aa3b, v85
	v_dual_mul_f32 v120, 0x3fb8aa3b, v83 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v125
	v_mul_f32_e32 v81, 0x3fb8aa3b, v82
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	scratch_load_b32 v83, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, s97, v93
	v_fmac_f32_e32 v120, s97, v91
	v_fmac_f32_e32 v113, s97, v87
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v87, 0xffff0000, v121
	scratch_load_b32 v91, off, off offset:120 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v121, 16, v122
	v_and_b32_e32 v122, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v82, 0x3fb8aa3b, v87 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v122
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v82, s97, v94 :: v_dual_fmac_f32 v119, s97, v89
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	scratch_load_b32 v89, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_b64 v[83:84], v83
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v81, s97, v90
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	ds_load_b64 v[89:90], v89
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v87, 0x3fb8aa3b, v121
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[121:122], v91
	scratch_load_b32 v91, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v84
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, s97, v95 :: v_dual_and_b32 v84, 0xffff0000, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v94, 0x3fb8aa3b, v84
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v94, s97, v68 :: v_dual_lshlrev_b32 v93, 16, v89
	v_fmac_f32_e32 v85, s97, v96
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v96, 0x3fb8aa3b, v92
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v89, 0xffff0000, v89
	v_lshlrev_b32_e32 v127, 16, v90
	v_and_b32_e32 v90, 0xffff0000, v90
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v68, 0xffff0000, v122
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v96, s97, v67
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v92, 0x3fb8aa3b, v93
	v_mul_f32_e32 v84, 0x3fb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v92, s97, v69
	v_fmac_f32_e32 v84, s97, v70
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(0)
	ds_load_b64 v[125:126], v91
	v_lshlrev_b32_e32 v91, 16, v83
	v_and_b32_e32 v83, 0xffff0000, v83
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v95, 0x3fb8aa3b, v91
	v_mul_f32_e32 v83, 0x3fb8aa3b, v83
	v_mul_f32_e32 v91, 0x3fb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v95, s97, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v65, 16, v121
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v93, 0x3fb8aa3b, v127 :: v_dual_mul_f32 v150, 0x3fb8aa3b, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v102.l
	v_mov_b16_e64 v102.l, v151.l
	v_mov_b16_e64 v65.l, v151.l
	v_lshlrev_b32_e32 v69, 16, v125
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v93, s97, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v71, 0xffff0000, v125
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v91, s97, v72 :: v_dual_lshlrev_b32 v72, 16, v126
	v_dual_fmac_f32 v83, s97, v66 :: v_dual_and_b32 v66, 0xffff0000, v121
	v_dual_fmac_f32 v150, s97, v73 :: v_dual_and_b32 v121, 0xffff0000, v126
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v68
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v102
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v67, 16, v122
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v122, 0x3fb8aa3b, v72
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v126, s97, v76
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v69 :: v_dual_mul_f32 v89, 0x3fb8aa3b, v66
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s1, s0, s1
	s_and_b32 s0, s6, s9
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v151
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v70, s97, v77 :: v_dual_fmac_f32 v89, s97, v74
	v_fmac_f32_e32 v122, s97, v79
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s0
	v_cndmask_b32_e64 v74, 0, 1, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v66, 0x3fb8aa3b, v121 :: v_dual_mul_f32 v153, 0x3fb8aa3b, v67
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v68.h, v106.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_mov_b16_e32 v67.l, v74.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v106.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s4, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v68.l, v151.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v66, s97, v80 :: v_dual_fmac_f32 v153, s97, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v74.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s15
	v_cndmask_b32_e64 v75, 0, 1, s17
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v106
	v_cmp_neq_f32_e64 s3, 0xff800000, v68
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v67.h, v105.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_mov_b16_e32 v67.l, v75.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v105.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s7, s3
	s_and_b32 s7, s11, s13
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v74.l, v67.l, v65.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v67.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s7
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v105
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v71.h, v110.l
	v_mov_b16_e64 v110.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v67
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s9
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s13, s10, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v110
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s8, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v71.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v68.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s13
	v_cndmask_b32_e64 v67, 0, 1, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v69.h, v109.l
	v_mov_b16_e64 v109.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v71
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s5, s43, s14
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v69.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v109
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s8, s42, s3
	v_or_b16 v68.l, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s5
	v_cndmask_b32_e64 v67, 0, 1, s8
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v73.h, v124.l
	v_mov_b16_e64 v124.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v69
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s12, s29, s34
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v73.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v124
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s14, s25, s4
	v_or_b16 v69.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s12
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v72.h, v123.l
	v_mov_b16_e64 v123.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v73
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v72.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s33, s45
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v123
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s31, s3
	v_or_b16 v69.l, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s4
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s6
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v72.h, v104.l
	v_mov_b16_e64 v104.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s11, s23, s10
	s_and_b32 s10, s24, s44
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v71.h, v103.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v104
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v65.h, v67.l, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s10
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v103.l, v151.l
	v_mov_b16_e32 v73.h, v107.l
	v_mov_b16_e64 v107.l, v151.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, s97, v78
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v65.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s11
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s42, 0xff800000, v103
	v_cmp_neq_f32_e64 s44, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.l, v67.l, v65.l
	scratch_load_b32 v67, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, 0, v67
	ds_store_2addr_b32 v67, v74, v68 offset1:32
	ds_store_2addr_b32 v67, v69, v65 offset0:64 offset1:96
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v67.h, v98.l
	v_mov_b16_e64 v98.l, v151.l
	v_mov_b16_e64 v67.l, v151.l
	v_mov_b16_e32 v65.h, v97.l
	v_mov_b16_e64 v65.l, v151.l
	v_mov_b16_e64 v97.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v98
	v_cmp_neq_f32_e64 s24, 0xff800000, v67
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v69.h, v100.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v65
	v_cmp_neq_f32_e64 s3, 0xff800000, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v100.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s20, s24
	s_and_b32 s24, s21, s23
	v_cndmask_b32_e64 v67, 0, 1, s25
	v_cndmask_b32_e64 v65, 0, 1, s24
	s_and_b32 s34, s18, s33
	s_and_b32 s33, s19, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v69.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v100
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v68.h, v99.l
	v_mov_b16_e64 v99.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v69
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v68.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v75.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s33
	v_cndmask_b32_e64 v67, 0, 1, s34
	s_and_b32 s23, s22, s3
	s_and_b32 s22, s28, s31
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v99
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v68
	v_cmp_neq_f32_e64 s3, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s37, s43
	s_and_b32 s29, s27, s29
	v_or_b16 v75.l, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	v_cndmask_b32_e64 v67, 0, 1, s23
	s_and_b32 s31, s26, s18
	s_and_b32 s21, s36, s3
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v74.h, v108.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v108.l, v151.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v71
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s27, s35, s42
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v74.l, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v68.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s29
	v_cndmask_b32_e64 v67, 0, 1, s31
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v108
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s30, s18
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v73
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s41, s45
	s_and_b32 s19, s40, s3
	v_or_b16 v68.l, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s20
	v_cndmask_b32_e64 v67, 0, 1, s21
	s_and_b32 s28, s38, s26
	s_and_b32 s26, s39, s44
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s94, s95
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s27
	v_cndmask_b32_e64 v67, 0, 1, s30
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.l, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s18
	v_cndmask_b32_e64 v67, 0, 1, s19
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v65.h, v67.l, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s26
	v_mov_b16_e32 v65.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.l, v67.l, v65.l
	ds_store_2addr_b32 v211, v75, v68 offset1:32
	ds_store_2addr_b32 v211, v69, v65 offset0:64 offset1:96
	v_mad_u64_u32 v[67:68], null, s66, s92, v[136:137]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v75, v67, s92, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v65, 0, v185
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v76, v67, s99, 1
	v_lshlrev_b32_e32 v74, 1, v67
	v_add_lshl_u32 v77, v67, s100, 1
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v73, v65
	scratch_load_b32 v65, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v68, 0x1000000, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s64, 0, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v115, s64
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v78, v65
	scratch_load_b32 v65, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v69, 1, v78
	v_and_b32_e32 v72, 0x1000000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s63, 1, v69
	v_cmp_ne_u32_e64 s62, 0, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v112, s63
	v_cndmask_b32_e64 v72, 0xff800000, v111, s62
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v79, v65
	scratch_load_b32 v65, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v101, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s55, 1, v101
	v_and_b32_e32 v101, 0x1000000, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, 0xff800000, v119, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v101
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v88, s54
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v80, v65
	scratch_load_b32 v65, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v88, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s53, 1, v88
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v86, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v86, 0x1000000, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s51, 0, v86
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v85, s51
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v97, v65
	scratch_load_b32 v65, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v85, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s50, 1, v85
	v_and_b32_e32 v85, 0x1000000, v97
	v_cmp_ne_u32_e64 s49, 0, v85
	s_waitcnt vmcnt(0)
	ds_load_b32 v98, v65
	scratch_load_b32 v65, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v85, 1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s46, 1, v85
	v_and_b32_e32 v85, 0x1000000, v98
	v_cmp_ne_u32_e64 s45, 0, v85
	s_waitcnt vmcnt(0)
	ds_load_b32 v99, v65
	scratch_load_b32 v65, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v85, 1, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s42, 1, v85
	v_and_b32_e32 v85, 0x1000000, v99
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v150, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v85
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v126, s41
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v100, v65
	v_and_b32_e32 v65, 0x10000, v73
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s60, 0, v65
	v_and_b32_e32 v65, 0x10000, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v117, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s59, 0, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v92, s46
	v_cndmask_b32_e64 v71, 0xff800000, v113, s59
	v_cndmask_b32_e64 v113, 0xff800000, v95, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v85, 1, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s39, 1, v85
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v70, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v70, 0x1000000, v100
	v_and_b32_e32 v65, 0x10000, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s38, 0, v70
	v_cmp_ne_u32_e64 s47, 0, v65
	v_lshrrev_b16 v70.l, 8, v78.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v66, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v66.l, 8, v73.l
	v_and_b16 v70.l, 1, v70.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v120, s47
	v_cndmask_b32_e64 v120, 0xff800000, v91, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v66.l, 1, v66.l
	v_cmp_eq_u16_e64 s65, 1, v70.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s66, 1, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v118, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v66, 0xff800000, v114, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v65, 0x10000, v80
	v_cmp_ne_u32_e64 s43, 0, v65
	v_and_b32_e32 v65, 0x10000, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, 0xff800000, v87, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s40, 0, v65
	v_and_b32_e32 v65, 0x10000, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v96, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v65
	v_and_b32_e32 v65, 0x10000, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v93, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v65
	v_and_b32_e32 v65, 0x10000, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v153, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v65
	v_and_b32_e32 v65, 1, v73
	v_lshrrev_b16 v73.l, 8, v79.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v122, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s61, 1, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b16 v73.l, 1, v73.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v150, 0, v189
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v116, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v73.l
	v_lshrrev_b16 v73.l, 8, v80.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v94, s49
	v_cndmask_b32_e64 v122, 0xff800000, v81, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v73.l, 1, v73.l
	v_cmp_eq_u16_e64 s57, 1, v73.l
	v_lshrrev_b16 v73.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v82, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v73.l, 1, v73.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v153, v125, v126, v127
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s56, 1, v73.l
	v_lshrrev_b16 v73.l, 8, v98.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v83, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v73.l, 1, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s52, 1, v73.l
	v_lshrrev_b16 v73.l, 8, v99.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v84, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v73.l, 1, v73.l
	v_cmp_eq_u16_e64 s48, 1, v73.l
	v_lshrrev_b16 v73.l, 8, v100.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v89, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v73.l, 1, v73.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s44, 1, v73.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v73, 0, v186
	ds_store_b128 v73, v[65:68]
	ds_store_b128 v73, v[113:116] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v73, 0x80000000, v74 :: v_dual_cndmask_b32 v74, 0x80000000, v75
	v_dual_cndmask_b32 v75, 0x80000000, v76 :: v_dual_cndmask_b32 v76, 0x80000000, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v90, s44
	ds_store_b128 v219, v[69:72]
	ds_store_b128 v219, v[117:120] offset:2048
	ds_store_b128 v220, v[121:124]
	ds_store_b128 v220, v[105:108] offset:2048
	ds_store_b128 v221, v[125:128]
	ds_store_b128 v221, v[109:112] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[173:176], v73, s[88:91], 0 offen
	buffer_load_b128 v[223:226], v75, s[88:91], 0 offen
	buffer_load_b128 v[165:168], v76, s[88:91], 0 offen
	buffer_load_b128 v[169:172], v74, s[88:91], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[101:104], v222
	ds_load_b128 v[93:96], v222 offset:256
	ds_load_b128 v[97:100], v222 offset:1024
	ds_load_b128 v[89:92], v222 offset:1280
	ds_load_b128 v[85:88], v222 offset:512
	ds_load_b128 v[77:80], v222 offset:768
	ds_load_b128 v[81:84], v222 offset:1536
	ds_load_b128 v[73:76], v222 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v177.l, v173.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v178.l, v223.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v178.h, v165.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v177.h, v169.l
	v_mov_b16_e64 v169.l, v173.h
	v_mov_b16_e64 v165.l, v223.h
	v_mov_b16_e64 v173.l, v175.l
	v_mov_b16_e64 v173.h, v171.l
	ds_store_b64 v150, v[177:178]
	scratch_load_b32 v150, off, off offset:156 ; 4-byte Folded Reload
	v_mov_b32_e32 v164, v169
	v_mov_b16_e64 v178.l, v224.l
	v_mov_b16_e64 v178.h, v166.l
	v_mov_b16_e64 v177.l, v174.l
	v_mov_b16_e64 v177.h, v170.l
	v_mov_b16_e64 v170.l, v174.h
	v_mov_b16_e64 v166.l, v224.h
	v_mov_b16_e64 v174.l, v225.l
	v_mov_b16_e64 v174.h, v167.l
	v_mov_b16_e64 v171.l, v175.h
	v_mov_b16_e64 v167.l, v225.h
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[164:165]
	scratch_load_b32 v150, off, off offset:160 ; 4-byte Folded Reload
	v_mov_b32_e32 v165, v170
	v_mov_b16_e64 v164.l, v176.l
	v_mov_b16_e64 v164.h, v172.l
	v_mov_b16_e64 v172.l, v176.h
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[177:178]
	scratch_load_b32 v150, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[165:166]
	scratch_load_b32 v150, off, off offset:168 ; 4-byte Folded Reload
	v_mov_b32_e32 v166, v171
	v_mov_b16_e64 v165.h, v168.l
	v_mov_b16_e64 v165.l, v226.l
	v_mov_b16_e64 v168.l, v226.h
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[173:174]
	scratch_load_b32 v150, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b32_e32 v173, v168
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[166:167]
	scratch_load_b32 v150, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[164:165]
	scratch_load_b32 v150, off, off offset:180 ; 4-byte Folded Reload
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v164, v128, v113, v114
	v_max3_f32 v165, v105, v106, v107
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v150, v[172:173]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v168, off, off offset:184 ; 4-byte Folded Reload
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v150, v122, v123, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v150, v150, v153, v164
	v_max3_f32 v153, v115, v116, v117
	v_max3_f32 v164, v118, v119, v120
	v_max3_f32 v153, v153, v164, v165
	v_max_f32_e32 v164, v65, v66
	v_max3_f32 v165, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v164, v164, v67, v165
	v_max3_f32 v165, v71, v72, v121
	v_max3_f32 v150, v164, v165, v150
	v_dual_max_f32 v164, v108, v109 :: v_dual_max_f32 v165, v111, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v164, v164, v110, v165
	v_max3_f32 v150, v150, v153, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v153, v150, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v150, v152, v150, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v151.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v150
	v_sub_f32_e32 v65, v65, v150
	v_sub_f32_e32 v68, v68, v150
	v_sub_f32_e32 v67, v67, v150
	v_sub_f32_e32 v70, v70, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v150
	v_sub_f32_e32 v72, v72, v150
	v_sub_f32_e32 v71, v71, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s66
	v_cndmask_b32_e64 v65, 0, v65, s61
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s64
	v_cndmask_b32_e64 v67, 0, v67, s60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v153.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s61, v65, v65
	v_cmp_o_f32_e64 s60, v67, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v153, 0x7fff
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v65.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s62
	v_cndmask_b32_e64 v71, 0, v71, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v153, 0x7fff
	v_cmp_o_f32_e64 s59, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s61
	v_permlanex16_b32 v153, v66, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v153, v66, v194
	v_perm_b32 v66, v153, v66, v195
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v68.h
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v153, 0x7fff
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v67, v67, v153, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s60
	v_cmp_o_f32_e64 s60, v69, v69
	v_permlanex16_b32 v153, v68, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v153, v68, v194
	v_perm_b32 v68, v153, v68, v195
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v70.h
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v153, 0x7fff
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v69, v69, v153, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s60
	v_permlanex16_b32 v153, v70, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v153, v70, v194
	v_perm_b32 v70, v153, v70, v195
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v72.h
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v153, 0x7fff
	v_mov_b16_e64 v153.h, v151.l
	v_mov_b16_e64 v153.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v71, v71, v153, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s59
	v_permlanex16_b32 v153, v72, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v153, v72, v194
	v_perm_b32 v72, v153, v72, v195
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v153, v152, v150 :: v_dual_add_nc_u32 v152, 0, v191
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[168:171], v168
	ds_load_b128 v[172:175], v143
	ds_load_b128 v[223:226], v152 offset:2048
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v153, v153
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[164:167], v152
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v153, 0, v153, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v153
	v_mul_f32_e32 v58, v58, v153
	v_mul_f32_e32 v59, v59, v153
	v_mul_f32_e32 v60, v60, v153
	v_mul_f32_e32 v61, v61, v153
	v_mul_f32_e32 v62, v62, v153
	v_mul_f32_e32 v63, v63, v153
	v_mul_f32_e32 v64, v64, v153
	v_mul_f32_e32 v17, v17, v153
	v_mul_f32_e32 v18, v18, v153
	v_mul_f32_e32 v19, v19, v153
	v_mul_f32_e32 v20, v20, v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[164:171], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[164:167], v206
	ds_load_b128 v[168:171], v207
	ds_load_b128 v[227:230], v208
	ds_load_b128 v[235:238], v205
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v153
	v_mul_f32_e32 v22, v22, v153
	v_mul_f32_e32 v23, v23, v153
	v_mul_f32_e32 v24, v24, v153
	v_mul_f32_e32 v9, v9, v153
	v_mul_f32_e32 v10, v10, v153
	v_mul_f32_e32 v11, v11, v153
	v_mul_f32_e32 v12, v12, v153
	v_mul_f32_e32 v13, v13, v153
	v_mul_f32_e32 v14, v14, v153
	v_mul_f32_e32 v15, v15, v153
	v_mul_f32_e32 v16, v16, v153
	v_mul_f32_e32 v1, v1, v153
	v_mul_f32_e32 v2, v2, v153
	v_mul_f32_e32 v3, v3, v153
	v_mul_f32_e32 v4, v4, v153
	v_mul_f32_e32 v5, v5, v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[164:171], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[164:167], v214
	ds_load_b128 v[168:171], v215
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v153
	v_mul_f32_e32 v7, v7, v153
	v_mul_f32_e32 v8, v8, v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[164:171], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[164:167], v180
	ds_load_b128 v[168:171], v181
	ds_load_b128 v[239:242], v182
	ds_load_b128 v[251:254], v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v122, v150
	v_sub_f32_e32 v65, v121, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v121.h, v151.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v124, v150
	v_sub_f32_e32 v67, v123, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v126, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v125, v150
	v_sub_f32_e32 v72, v128, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v127, v150
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[164:167], v216
	ds_load_b128 v[168:171], v188
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s58
	v_cndmask_b32_e64 v65, 0, v65, s55
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s54
	v_cndmask_b32_e64 v67, 0, v67, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v121.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s55, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s47, v67, v67
	v_and_b32_e32 v121, 1, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[125:128], v193
	ds_load_b128 v[231:234], v204
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v121, 0x7fff
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v121, 1, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s51
	v_cndmask_b32_e64 v71, 0, v71, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v121, 0x7fff
	v_cmp_o_f32_e64 s43, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s55
	v_permlanex16_b32 v121, v66, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v121, v66, v194
	v_perm_b32 v66, v121, v66, v195
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v68.h
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v121, 0x7fff
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v67, v67, v121, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s47
	v_cmp_o_f32_e64 s47, v69, v69
	v_permlanex16_b32 v121, v68, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v121, v68, v194
	v_perm_b32 v68, v121, v68, v195
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v70.h
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v121, 0x7fff
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v69, v69, v121, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s47
	v_permlanex16_b32 v121, v70, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v121, v70, v194
	v_perm_b32 v70, v121, v70, v195
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v72.h
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v121, 0x7fff
	v_mov_b16_e64 v121.h, v151.l
	v_mov_b16_e32 v121.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v71, v71, v121, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s43
	v_permlanex16_b32 v121, v72, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v121, v72, v194
	v_perm_b32 v72, v121, v72, v195
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[176:179], v192
	ds_load_b128 v[121:124], v187
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[164:171], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[243:246], v183
	ds_load_b128 v[164:167], v255
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[223:230], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[172:179], v[65:72], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[239:246], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v114, v150
	v_sub_f32_e32 v65, v113, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v113.h, v151.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v116, v150
	v_sub_f32_e32 v67, v115, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v118, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v117, v150
	v_sub_f32_e32 v72, v120, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v119, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s56
	v_cndmask_b32_e64 v65, 0, v65, s50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s49
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v67, 0, v67, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v113.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s43, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v67, v67
	v_and_b32_e32 v113, 1, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s46
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v113, 0x7fff
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v65.h
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v113, 1, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v71, 0, v71, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v71, v71
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v113, v66, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v113, v66, v194
	v_perm_b32 v66, v113, v66, v195
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v68, v68, v113, 0x7fff
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v113, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s40
	v_cmp_o_f32_e64 s40, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v113, v68, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v113, v68, v194
	v_perm_b32 v68, v113, v68, v195
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v70.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v70, v70, v113, 0x7fff
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v113, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v113, v70, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v113, v70, v194
	v_perm_b32 v70, v113, v70, v195
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v72, v72, v113, 0x7fff
	v_mov_b16_e64 v113.h, v151.l
	v_mov_b16_e32 v113.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v113, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v113, v72, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v113, v72, v194
	v_perm_b32 v72, v113, v72, v195
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[113:116], v209
	ds_load_b128 v[117:120], v210
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[121:128], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[168:171], v145
	ds_load_b128 v[125:128], v144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[113:116], v152 offset:4096
	ds_load_b128 v[117:120], v217
	ds_load_b128 v[247:250], v218
	ds_load_b128 v[121:124], v152 offset:6144
	v_mov_b32_e32 v152, v150
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[65:72], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v106, v150
	v_sub_f32_e32 v65, v105, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v105.h, v151.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v108, v150
	v_sub_f32_e32 v67, v107, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v110, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v109, v150
	v_sub_f32_e32 v72, v112, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v111, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s48
	v_cndmask_b32_e64 v65, 0, v65, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s41
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v67, 0, v67, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v105.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s37, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v67, v67
	v_and_b32_e32 v105, 1, v105
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v66, v66, v105, 0x7fff
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v65.h
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v105, 1, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v71, 0, v71, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v71, v71
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v105, v66, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v105, v66, v194
	v_perm_b32 v66, v105, v66, v195
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v105, 1, v105
	v_add3_u32 v68, v68, v105, 0x7fff
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v105, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s36
	v_cmp_o_f32_e64 s36, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v105, v68, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v105, v68, v194
	v_perm_b32 v68, v105, v68, v195
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v70.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v105, 1, v105
	v_add3_u32 v70, v70, v105, 0x7fff
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v105, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v105, v70, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v105, v70, v194
	v_perm_b32 v70, v105, v70, v195
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v105, 1, v105
	v_add3_u32 v72, v72, v105, 0x7fff
	v_mov_b16_e64 v105.h, v151.l
	v_mov_b16_e32 v105.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v105, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v105, v72, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v105, v72, v194
	v_perm_b32 v72, v105, v72, v195
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[105:108], v212
	ds_load_b128 v[109:112], v213
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[231:238], v[65:72], v[57:64]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[247:254], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[65:72], v[17:24]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v100, v100
	v_max_f32_e32 v66, v104, v104
	v_max3_f32 v67, v98, v103, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v66, v101, v97, v102
	v_max3_f32 v65, v66, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v137, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v137, v66, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v98, v137
	v_sub_f32_e32 v72, v99, v137
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v92, v92
	v_dual_max_f32 v99, v96, v96 :: v_dual_sub_f32 v70, v97, v137
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v97, v100, v137
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v100, v90, v95, v91
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v101, v137
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v99, v98
	v_max3_f32 v99, v93, v89, v94
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v102, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v103, v137
.Ltmp22:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v98, v99, v100, v98
	v_max_f32_e32 v100, v88, v88
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v82, v87, v83
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v99, v98
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s34
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v74, v79, v75
.Ltmp29:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v99
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v99, v98
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v72
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	v_max_f32_e32 v98, v98, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s25
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v99, v98 :: v_dual_add_f32 v68, v68, v70
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s24
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v98, v98, v99 :: v_dual_max_f32 v99, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v141, v99, v98
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v84, v84
.Ltmp53:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v141
	v_sub_f32_e32 v93, v93, v141
	v_sub_f32_e32 v89, v89, v141
	v_sub_f32_e32 v94, v94, v141
	v_sub_f32_e32 v90, v90, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v95, v95, v141
	v_sub_f32_e32 v91, v91, v141
.Ltmp54:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v100, v99
	v_max3_f32 v100, v85, v81, v86
.Ltmp55:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v96, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v100, v101, v99
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s22
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v104, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v101, v80, v80 :: v_dual_mov_b32 v100, v99
.Ltmp59:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v149
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp65:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v91
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v100, v99 :: v_dual_add_f32 v67, v68, v69
	v_mov_b32_e32 v68, v132
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s23
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v100, v100 :: v_dual_mov_b32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s29
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v100, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v67, v66 :: v_dual_max_f32 v100, v100, v100
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v99, v99, v100 :: v_dual_max_f32 v100, v138, v138
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v138, v100, v99 :: v_dual_mov_b32 v67, v66
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v76, v76 :: v_dual_sub_f32 v85, v85, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v138
	v_sub_f32_e32 v86, v86, v138
	v_sub_f32_e32 v82, v82, v138
	v_dual_sub_f32 v87, v87, v138 :: v_dual_add_f32 v132, v66, v67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v93
	v_exp_f32_e32 v67, v89
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v83, v83, v138 :: v_dual_max_f32 v100, v101, v100
.Ltmp85:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v77, v73, v78
.Ltmp86:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v138
	v_sub_f32_e32 v84, v84, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v100, v101, v102, v100
.Ltmp88:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v67, 0, v67, s31
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v101, v100 :: v_dual_add_f32 v66, v66, v67
.Ltmp90:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v94
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v101 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s20
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s13
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp97:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v95
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v101, v100 :: v_dual_add_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v101, v101 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v101
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v101, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s7
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp108:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v83
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v69, v70
	v_mov_b32_e32 v69, v134
.Ltmp111:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v82
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v100, v101 :: v_dual_max_f32 v101, v139, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp114:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v139, v101, v100
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v139
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp117:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v139
	v_sub_f32_e32 v78, v78, v139
	v_sub_f32_e32 v74, v74, v139
	v_sub_f32_e32 v79, v79, v139
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp120:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v139
	v_sub_f32_e32 v80, v80, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v76, v76, v139 :: v_dual_mov_b32 v67, v66
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v66, v67
.Ltmp125:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v85
	v_exp_f32_e32 v67, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s14
	v_cndmask_b32_e64 v67, 0, v67, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp127:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v86
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp129:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v87
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s8
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp133:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s5
.Ltmp134:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp135:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v70, v71 :: v_dual_mov_b32 v70, v133
.Ltmp137:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v74
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp139:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s19
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s26
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v66, v67
.Ltmp148:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v77
	v_exp_f32_e32 v67, v73
	v_exp_f32_e32 v73, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s28
	v_cndmask_b32_e64 v73, 0, v73, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp149:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp150:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v71
.Ltmp152:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v79
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s6
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp156:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s4
.Ltmp157:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v67, v71, v72
	v_dual_mov_b32 v71, v135 :: v_dual_add_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v135, v66, v67 :: v_dual_max_f32 v66, v149, v149
.Ltmp164:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v149, v65
	v_mov_b32_e32 v149, v65
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v66, 0, v66, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v148
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v132, v68, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v148, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v98
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v148, v66 :: v_dual_mov_b32 v148, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v67, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v134, v69, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v147, v147
	v_max_f32_e32 v67, v67, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v147, v67
	v_mov_b32_e32 v147, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v68, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v140
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v133, v70, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v140, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v100
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v140, v68
	v_mov_b32_e32 v140, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v69, 0, v69, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v135, v71, v69
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v26, off, off offset:212
	scratch_load_b32 v27, off, off offset:208
	scratch_load_b32 v67, off, off offset:188
	scratch_load_b32 v28, off, off offset:192
	scratch_load_b32 v68, off, off offset:196
	scratch_load_b32 v69, off, off offset:200
	scratch_load_b32 v70, off, off offset:204
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v0, 4, v67
	v_and_b32_e32 v25, 0x80, v27
	v_add_nc_u32_e32 v26, 0, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, 0, v70
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v27, v[132:133], v[134:135] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v26, v25, v0
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v27, 4, v68
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v29, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v69
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v25, 32, v27
	v_or_b32_e32 v26, 16, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v28, v0, v28
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, s79, v28
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v28, s78, v28
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v30
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v28, s92, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v30, null, v29, v29, v57
	v_div_scale_f32 v32, null, v29, v29, v58
	v_div_scale_f32 v36, null, v29, v29, v60
	v_div_scale_f32 v34, null, v29, v29, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v30
	v_rcp_f32_e32 v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v36
	v_rcp_f32_e32 v40, v34
	v_div_scale_f32 v44, null, v29, v29, v62
	v_div_scale_f32 v42, null, v29, v29, v61
	v_div_scale_f32 v31, vcc_lo, v57, v29, v57
	v_fma_f32 v46, -v30, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v47, -v32, v39, 1.0
	v_fma_f32 v49, -v36, v41, 1.0
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v33, s1, v58, v29, v58
	v_div_scale_f32 v37, s3, v60, v29, v60
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v48, -v34, v40, 1.0
	v_dual_fmac_f32 v38, v46, v38 :: v_dual_fmac_f32 v39, v47, v39
	v_fmac_f32_e32 v41, v49, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v44, v50, 1.0
	v_dual_fmac_f32 v40, v48, v40 :: v_dual_mul_f32 v47, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v33, v39
	v_dual_mul_f32 v51, v37, v41 :: v_dual_fmac_f32 v50, v52, v50
	v_div_scale_f32 v35, s2, v59, v29, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v42, v45, 1.0
	v_fma_f32 v53, -v30, v47, v31
	v_fma_f32 v54, -v32, v48, v33
	v_fma_f32 v56, -v36, v51, v37
	v_mul_f32_e32 v49, v35, v40
	v_div_scale_f32 v43, s4, v61, v29, v61
	v_fmac_f32_e32 v45, v46, v45
	v_dual_fmac_f32 v47, v53, v38 :: v_dual_fmac_f32 v48, v54, v39
	v_fmac_f32_e32 v51, v56, v41
	v_fma_f32 v55, -v34, v49, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v43, v45
	v_fma_f32 v30, -v30, v47, v31
	v_fma_f32 v31, -v32, v48, v33
	v_fma_f32 v33, -v36, v51, v37
	v_div_scale_f32 v36, null, v29, v29, v63
	v_fmac_f32_e32 v49, v55, v40
	v_div_fmas_f32 v30, v30, v38, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v37, v36
	v_div_scale_f32 v38, null, v29, v29, v64
	v_fma_f32 v32, -v34, v49, v35
	v_div_fmas_f32 v31, v31, v39, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, s2, v62, v29, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v40, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v42, v46, v43
	v_div_fmas_f32 v33, v33, v41, v51
	v_fma_f32 v40, -v36, v37, 1.0
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v34, v50 :: v_dual_fmac_f32 v46, v35, v45
	v_div_scale_f32 v47, null, v29, v29, v17
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s3, v63, v29, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v44, v39, v34
	v_fma_f32 v42, -v42, v46, v43
	v_fma_f32 v48, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v43, v40, v37
	v_rcp_f32_e32 v49, v47
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v52, null, v29, v29, v21
	v_fmac_f32_e32 v41, v48, v41
	v_fmac_f32_e32 v39, v35, v50
	v_div_scale_f32 v48, s5, v64, v29, v64
	v_div_fmas_f32 v35, v42, v45, v46
	v_fma_f32 v42, -v36, v43, v40
	v_div_scale_f32 v46, null, v29, v29, v18
	v_fma_f32 v34, -v44, v39, v34
	v_mul_f32_e32 v44, v48, v41
	v_fma_f32 v45, -v47, v49, 1.0
	v_fmac_f32_e32 v43, v42, v37
	v_rcp_f32_e32 v42, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v30, v30, v29, v57
	v_div_fmas_f32 v39, v34, v50, v39
	v_fma_f32 v50, -v38, v44, v48
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v45, s2, v17, v29, v17
	v_div_fixup_f32 v34, v35, v29, v61
	v_div_fixup_f32 v35, v39, v29, v62
	v_fma_f32 v36, -v36, v43, v40
	v_fmac_f32_e32 v44, v50, v41
	v_mul_f32_e32 v39, v45, v49
	v_fma_f32 v40, -v46, v42, 1.0
	v_div_scale_f32 v50, null, v29, v29, v19
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v29, v58
	v_div_fmas_f32 v36, v36, v37, v43
	v_fma_f32 v37, -v38, v44, v48
	v_fma_f32 v38, -v47, v39, v45
	v_fmac_f32_e32 v42, v40, v42
	v_rcp_f32_e32 v40, v50
	v_div_scale_f32 v48, null, v29, v29, v20
	v_div_scale_f32 v43, s3, v18, v29, v18
	v_fmac_f32_e32 v39, v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v48
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v41, v44
	v_mul_f32_e32 v41, v43, v42
	v_fma_f32 v44, -v50, v40, 1.0
	v_fma_f32 v45, -v47, v39, v45
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v32, v29, v59
	v_fma_f32 v47, -v46, v41, v43
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s4, v19, v29, v19
	v_fma_f32 v51, -v48, v38, 1.0
	v_div_fmas_f32 v39, v45, v49, v39
	v_fmac_f32_e32 v41, v47, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v40
	v_rcp_f32_e32 v47, v52
	v_fmac_f32_e32 v38, v51, v38
	v_div_scale_f32 v49, s2, v20, v29, v20
	v_div_scale_f32 v51, null, v29, v29, v22
	v_div_fixup_f32 v17, v39, v29, v17
	v_fma_f32 v39, -v46, v41, v43
	v_fma_f32 v43, -v50, v45, v44
	v_mul_f32_e32 v46, v49, v38
	v_rcp_f32_e32 v53, v51
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v54, -v52, v47, 1.0
	v_div_fmas_f32 v39, v39, v42, v41
	v_fmac_f32_e32 v45, v43, v40
	v_fma_f32 v41, -v48, v46, v49
	v_div_scale_f32 v42, s3, v21, v29, v21
	v_fmac_f32_e32 v47, v54, v47
	v_div_fixup_f32 v18, v39, v29, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v51, v53, 1.0
	v_fma_f32 v39, -v50, v45, v44
	v_fmac_f32_e32 v46, v41, v38
	v_div_scale_f32 v44, null, v29, v29, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v41, v42, v47
	v_fmac_f32_e32 v53, v43, v53
	v_div_scale_f32 v43, s5, v22, v29, v22
	v_div_fmas_f32 v39, v39, v40, v45
	v_fma_f32 v40, -v48, v46, v49
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, null, v29, v29, v24
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v45, -v52, v41, v42
	v_mul_f32_e32 v49, v43, v53
	v_div_fmas_f32 v38, v40, v38, v46
	v_rcp_f32_e32 v40, v50
	v_div_fixup_f32 v19, v39, v29, v19
	v_fmac_f32_e32 v41, v45, v47
	v_fma_f32 v45, -v51, v49, v43
	v_fma_f32 v46, -v44, v48, 1.0
	v_div_fixup_f32 v20, v38, v29, v20
	v_div_scale_f32 v39, s2, v23, v29, v23
	v_fma_f32 v38, -v52, v41, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v49, v45, v53 :: v_dual_fmac_f32 v48, v46, v48
	v_fma_f32 v42, -v50, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, s3, v24, v29, v24
	v_div_fmas_f32 v38, v38, v47, v41
	v_fma_f32 v41, -v51, v49, v43
	v_mul_f32_e32 v43, v39, v48
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v29, v29, v9
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v44, v43, v39
	v_div_fmas_f32 v41, v41, v53, v49
	v_rcp_f32_e32 v46, v42
	v_mul_f32_e32 v49, v45, v40
	v_div_scale_f32 v51, null, v29, v29, v10
	v_fmac_f32_e32 v43, v47, v48
	v_div_fixup_f32 v21, v38, v29, v21
	v_div_fixup_f32 v22, v41, v29, v22
	v_fma_f32 v38, -v50, v49, v45
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v46, 1.0
	v_div_scale_f32 v44, null, v29, v29, v11
	v_fmac_f32_e32 v49, v38, v40
	v_div_scale_f32 v38, s4, v9, v29, v9
	v_fmac_f32_e32 v46, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v44
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v52, -v51, v41, 1.0
	v_div_fmas_f32 v39, v39, v48, v43
	v_fma_f32 v43, -v50, v49, v45
	v_mul_f32_e32 v45, v38, v46
	v_div_scale_f32 v48, s2, v10, v29, v10
	v_fmac_f32_e32 v41, v52, v41
	v_div_scale_f32 v53, null, v29, v29, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v44, v47, 1.0
	v_fma_f32 v52, -v42, v45, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v54, v48, v41
	v_rcp_f32_e32 v55, v53
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, s5, v11, v29, v11
	v_div_fmas_f32 v40, v43, v40, v49
	v_fmac_f32_e32 v45, v52, v46
	v_fma_f32 v43, -v51, v54, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v49, v50, v47
	v_div_fixup_f32 v23, v39, v29, v23
	v_div_fixup_f32 v24, v40, v29, v24
	v_fma_f32 v38, -v42, v45, v38
	v_div_scale_f32 v42, null, v29, v29, v13
	v_fma_f32 v39, -v44, v49, v50
	v_fmac_f32_e32 v54, v43, v41
	v_fma_f32 v40, -v53, v55, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v33, v33, v29, v60
	v_fmac_f32_e32 v49, v39, v47
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v43, -v51, v54, v48
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s3, v12, v29, v12
	v_div_fmas_f32 v38, v38, v46, v45
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v45, null, v29, v29, v14
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v44, v49, v50
	v_mul_f32_e32 v44, v40, v55
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v38, v29, v9
	v_div_fmas_f32 v43, v43, v47, v49
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v48, -v53, v44, v40
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s2, v13, v29, v13
	v_div_fixup_f32 v10, v41, v29, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v48, v55
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v46, v39
	v_div_fixup_f32 v11, v43, v29, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v45, v47, 1.0
	v_fma_f32 v40, -v53, v44, v40
	v_div_scale_f32 v43, null, v29, v29, v15
	v_fma_f32 v48, -v42, v38, v46
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v29, v14
	v_div_fmas_f32 v40, v40, v55, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v48, v39
	v_rcp_f32_e32 v49, v43
	v_mul_f32_e32 v44, v41, v47
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v40, v29, v12
	v_fma_f32 v40, -v42, v38, v46
	v_div_scale_f32 v48, null, v29, v29, v16
	v_fma_f32 v42, -v45, v44, v41
	v_div_fixup_f32 v36, v36, v29, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v29, v29, v1
	v_fma_f32 v46, -v43, v49, 1.0
	v_rcp_f32_e32 v50, v48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v40, s2, v15, v29, v15
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v29, v29, v2
	v_div_fixup_f32 v13, v38, v29, v13
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v50, 1.0
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s3, v16, v29, v16
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v29, v29, v3
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v44, -v43, v45, v40
	v_mul_f32_e32 v47, v38, v50
	v_div_scale_f32 v53, s4, v1, v29, v1
	v_fma_f32 v54, -v46, v52, 1.0
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_mul_f32_e32 v56, v53, v42
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v2, v29, v2
	v_div_fixup_f32 v14, v41, v29, v14
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v44, -v51, v55, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s2, v3, v29, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v44, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v29, v29, v4
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v40, v29, v15
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v29, v16
	v_div_fixup_f32 v1, v39, v29, v1
	v_div_scale_f32 v39, null, v29, v29, v5
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v49, null, v29, v29, v8
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v51, v41, v44
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v51, v49
	v_div_fixup_f32 v2, v42, v29, v2
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v29, v29, v6
	v_div_scale_f32 v42, null, v29, v29, v7
	v_div_scale_f32 v43, vcc_lo, v4, v29, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v3, v38, v29, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fma_f32 v55, -v49, v51, 1.0
	v_div_fixup_f32 v37, v37, v29, v64
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v29, v5
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v38, v41 :: v_dual_fmac_f32 v51, v55, v51
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v29, v6
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s4, v7, v29, v7
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v52, -v39, v54, v38
	v_div_scale_f32 v55, s5, v8, v29, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v56, v50, v44 :: v_dual_mul_f32 v57, v53, v46
	v_fmac_f32_e32 v54, v52, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v45, v44 :: v_dual_fmac_f32 v57, v52, v46
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v58, v39, v51
	v_div_fmas_f32 v38, v38, v41, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v49, v58, v55
	v_div_fixup_f32 v4, v43, v29, v4
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v29, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v29, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s92, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v29, v7
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s92, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v28, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v29, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s1
	v_cndmask_b32_e64 v30, 0, v31, s1
	v_cndmask_b32_e64 v31, 0, v32, s1
	v_cndmask_b32_e64 v32, 0, v33, s1
	v_cndmask_b32_e64 v33, 0, v34, s1
	v_cndmask_b32_e64 v34, 0, v35, s1
	v_cndmask_b32_e64 v35, 0, v36, s1
	v_cndmask_b32_e64 v36, 0, v37, s1
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v28, v27, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 8, v37
	v_add_nc_u32_e32 v38, 16, v37
	v_cndmask_b32_e32 v39, 0x80000000, v37, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v29, v39, s[76:79], 0 offen
	buffer_store_b32 v30, v27, s[76:79], 0 offen
	buffer_store_b32 v31, v38, s[76:79], 0 offen
	v_add_nc_u32_e32 v27, 24, v37
	v_add_nc_u32_e32 v29, 32, v37
	v_add_nc_u32_e32 v30, 40, v37
	v_add_nc_u32_e32 v31, 48, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_add_nc_u32 v38, 56, v37
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s92, v26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v26, v28, v26, 2
	s_clause 0x4
	buffer_store_b32 v32, v27, s[76:79], 0 offen
	buffer_store_b32 v33, v29, s[76:79], 0 offen
	buffer_store_b32 v34, v30, s[76:79], 0 offen
	buffer_store_b32 v35, v31, s[76:79], 0 offen
	buffer_store_b32 v36, v38, s[76:79], 0 offen
	v_add_nc_u32_e32 v27, 0x48, v37
	v_add_nc_u32_e32 v29, 0x50, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v30, 0x58, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	v_add_nc_u32_e32 v31, 0x60, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v26, s[76:79], 0 offen
	buffer_store_b32 v18, v27, s[76:79], 0 offen
	buffer_store_b32 v19, v29, s[76:79], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v37
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s92, v25
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v31, vcc_lo
	buffer_store_b32 v20, v30, s[76:79], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v37
	v_add_nc_u32_e32 v20, 0x78, v37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v28, v25, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[76:79], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[76:79], 0 offen
	buffer_store_b32 v24, v20, s[76:79], 0 offen
	buffer_store_b32 v9, v17, s[76:79], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[76:79], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[76:79], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[76:79], 0 offen
	buffer_store_b32 v13, v17, s[76:79], 0 offen
	buffer_store_b32 v14, v18, s[76:79], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_nc_u32_e32 v11, 0xc8, v37
	v_add_nc_u32_e32 v12, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[76:79], 0 offen
	buffer_store_b32 v16, v10, s[76:79], 0 offen
	buffer_store_b32 v1, v0, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v37
	v_add_nc_u32_e32 v1, 0xe0, v37
	v_add_nc_u32_e32 v2, 0xe8, v37
	v_add_nc_u32_e32 v3, 0xf0, v37
	v_add_nc_u32_e32 v9, 0xf8, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp165:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 220
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
		.amdhsa_next_free_sgpr 103
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 220
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19720
; TotalNumSgprs: 105
; NumVgprs: 256
; ScratchSize: 220
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 105
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
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
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
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
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 220
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 54
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
