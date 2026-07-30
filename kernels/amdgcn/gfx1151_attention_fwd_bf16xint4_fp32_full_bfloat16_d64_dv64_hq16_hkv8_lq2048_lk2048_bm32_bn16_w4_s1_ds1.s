	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v60, 15, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v13, 7, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s22, s2, 5
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s22, v2
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s15, s22, s2
	.loc	1 598 79 is_stmt 0              ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v13
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	v_mov_b32_e32 v4, v17
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v19, 1, v0
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s16, v2, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s10, s16, 4
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s16, s15, v[57:58]
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v19, 0x70, v19
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v14, 2, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s10, 1
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, s22, v14
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v15, 3, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v20, 32, v0
	s_clause 0x1
	buffer_load_b128 v[5:8], v1, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v2, s[24:27], 0 offen
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s3, s1, s0
	.loc	1 599 26                        ; attention.py:599:26
	v_bfe_i32 v21, v0, 5, 1
	v_and_b32_e32 v25, 31, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v67, 0, v18
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v14
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s3, s3
	v_mul_lo_u32 v14, s9, v14
	s_ashr_i32 s3, s3, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v61, 64, v0
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v16, 48, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v22, 0x70, v0
	v_and_b32_e32 v24, 12, v0
	v_and_b32_e32 v59, 16, v0
	v_lshrrev_b32_e32 v26, 1, v0
	v_dual_mov_b32 v92, 0xff800000 :: v_dual_lshlrev_b32 v27, 7, v0
	v_bfe_i32 v28, v0, 0, 1
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_lshlrev_b32 v29, 5, v0
	v_bfe_i32 v30, v0, 2, 1
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v13, 4, v13
	v_lshlrev_b32_e32 v32, 3, v60
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v36, 2, v25
	v_and_b32_e32 v21, 0x84, v21
	.loc	1 734 33                        ; attention.py:734:33
	s_lshl3_add_u32 s3, s2, s3
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s2, s19, s2
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s4, s8, s1
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v58, 1, v16
	s_add_i32 s4, s4, s2
	v_lshlrev_b32_e32 v25, 4, v25
	v_and_b32_e32 v26, 12, v26
	v_and_b32_e32 v27, 0x700, v27
	v_and_b32_e32 v28, 0x90, v28
	v_and_b32_e32 v29, 0x160, v29
	v_and_b32_e32 v30, 0x90, v30
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v63, v60, 7, v13
	v_lshl_or_b32 v13, v16, 5, v32
	v_xor_b32_e32 v19, v21, v36
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v62, 0x7c, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v23, 4, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_lshlrev_b32_e32 v0, 2, v60
	v_lshlrev_b32_e32 v40, 1, v60
	v_xor_b32_e32 v13, v13, v58
	v_xor_b32_e32 v32, 0x70, v63
	v_lshl_or_b32 v74, s3, 10, v23
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s18, s18, 0x3fb8aa3b
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s23, 0
	v_add_nc_u32_e32 v81, 0, v32
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s38
	s_mov_b32 s38, s26
	.loc	1 734 32                        ; attention.py:734:32
	s_lshl_b32 s19, s3, 11
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s34, s3, 7
	s_mov_b32 s41, s39
	s_mov_b32 s39, s27
	s_mov_b32 s24, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[5:8]
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[9:12] offset:2048
	v_mov_b32_e32 v7, v17
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v35, 2, v20
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v31, 2, v15
	v_lshlrev_b32_e32 v15, 5, v15
	v_lshrrev_b32_e32 v38, 4, v20
	v_dual_mov_b32 v8, v17 :: v_dual_lshlrev_b32 v43, 4, v20
	v_lshrrev_b32_e32 v37, 5, v61
	v_add3_u32 v87, s4, v31, v14
	v_mov_b32_e32 v9, 0
	v_lshrrev_b32_e32 v22, 2, v22
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v34, 1, v24
	v_mov_b32_e32 v95, 0xff800000
	v_lshl_or_b32 v15, v24, 7, v15
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v41, 2, v59
	v_lshl_or_b32 v16, v59, 4, v35
	v_lshrrev_b32_e32 v42, 1, v61
	v_lshl_add_u32 v33, v61, 1, 0
	v_or3_b32 v64, v25, v38, v26
	v_add3_u32 v21, 0, v41, v20
	v_xor_b32_e32 v22, v28, v22
	v_add_nc_u32_e32 v25, 0, v27
	v_or3_b32 v66, v30, v43, v29
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v18, v20, 6, v63
	v_or3_b32 v68, v15, v16, v34
	v_or_b32_e32 v69, v19, v37
	v_add_nc_u32_e32 v24, 0, v42
	v_lshlrev_b32_e32 v39, 1, v20
	v_xor_b32_e32 v26, 32, v63
	v_xor_b32_e32 v27, 48, v63
	v_xor_b32_e32 v28, 64, v63
	v_xor_b32_e32 v29, 0x50, v63
	v_xor_b32_e32 v30, 0x60, v63
	v_xor_b32_e32 v34, 16, v66
	v_add_nc_u32_e32 v71, v21, v40
	v_add_nc_u32_e32 v73, v25, v22
	v_add_nc_u32_e32 v21, 0, v18
	v_xor_b32_e32 v25, 8, v68
	v_xor_b32_e32 v35, 16, v68
	v_xor_b32_e32 v36, 24, v68
	v_xor_b32_e32 v37, 0x108, v69
	v_add_nc_u32_e32 v82, v33, v13
	v_mov_b32_e32 v13, v17
	v_add_nc_u32_e32 v65, 0, v0
	v_xad_u32 v22, v18, 16, 0
	v_xad_u32 v23, v18, 32, 0
	v_add_nc_u32_e32 v72, v24, v40
	v_xad_u32 v24, v18, 48, 0
	v_xad_u32 v41, v18, 64, 0
	v_xad_u32 v45, 0x50, v18, 0
	v_xad_u32 v49, 0x60, v18, 0
	v_add_nc_u32_e32 v70, v65, v39
	v_xad_u32 v18, 0x70, v18, 0
	v_add_nc_u32_e32 v76, 0, v26
	v_add_nc_u32_e32 v77, 0, v27
	v_add_nc_u32_e32 v78, 0, v28
	v_add_nc_u32_e32 v79, 0, v29
	v_add_nc_u32_e32 v80, 0, v30
	v_add_nc_u32_e32 v86, 0, v34
	v_add_nc_u32_e32 v88, 0, v25
	v_add_nc_u32_e32 v89, 0, v35
	v_add_nc_u32_e32 v90, 0, v36
	v_add_nc_u32_e32 v91, 0, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v21
	ds_load_b128 v[29:32], v22
	ds_load_b128 v[33:36], v23
	ds_load_b128 v[37:40], v24
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v18
	v_xor_b32_e32 v20, 16, v63
	v_xor_b32_e32 v15, 4, v64
	v_xor_b32_e32 v16, 8, v64
	v_xor_b32_e32 v19, 12, v64
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s17, v0
	v_add_nc_u32_e32 v75, 0, v20
	v_add_nc_u32_e32 v83, 0, v15
	v_add_nc_u32_e32 v84, 0, v16
	v_add_nc_u32_e32 v85, 0, v19
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v16, v17
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s2, s23, s19
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v24, v17
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s2, s2, s16
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v97, 0, v63
	v_dual_mov_b32 v19, v17 :: v_dual_add_nc_u32 v96, 0, v68
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v99, s2, v57, 1
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v111, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v109, v22 :: v_dual_mov_b32 v110, v23
	v_dual_mov_b32 v107, v20 :: v_dual_mov_b32 v106, v19
	v_dual_mov_b32 v108, v21 :: v_dual_mov_b32 v105, v18
	v_mov_b32_e32 v104, v17
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v18, 0x80000000, v99, vcc_lo
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v98, v87, s23, 2
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s2, s23, 1
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s23, 4
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v95
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v22, 0x80000000, v98, s0
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s34
	.loc	1 763 25                        ; attention.py:763:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s17
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 763 25                        ; attention.py:763:25
	v_add_nc_u32_e32 v103, 0, v69
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[18:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_b128 v[20:23], v22, s[40:43], 0 offen
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[112:115], v97
	ds_load_b128 v[116:119], v75
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[112:119], v[25:32], v[104:111]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[112:115], v76
	ds_load_b128 v[116:119], v77
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[112:119], v[33:40], v[104:111]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[112:115], v78
	ds_load_b128 v[116:119], v79
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[112:119], v[41:48], v[104:111]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[112:115], v80
	ds_load_b128 v[116:119], v81
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[104:111], v[112:119], v[49:56], v[104:111]
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v119, 0, v66
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v19, 0xff800000, v23, s0
	v_cndmask_b32_e64 v18, 0xff800000, v21, s0
	v_cndmask_b32_e64 v21, 0xff800000, v22, s0
	v_cndmask_b32_e64 v20, 0xff800000, v20, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v18
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b64 v82, v[20:21], v[18:19] offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[22:23], v96
	ds_load_b64 v[99:100], v88
	ds_load_b64 v[101:102], v89
	ds_load_b64 v[112:113], v90
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v20
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s5, s0, s5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s4, s0, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0, 1, s4
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	v_dual_mul_f32 v98, 0x3fb8aa3b, v22 :: v_dual_mul_f32 v97, 0x3fb8aa3b, v23
	v_dual_mul_f32 v99, 0x3fb8aa3b, v99 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v113
	v_mul_f32_e32 v22, 0x3fb8aa3b, v100
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v98, s18, v104 :: v_dual_fmac_f32 v97, s18, v105
	.loc	1 774 30 is_stmt 1              ; attention.py:774:30
	v_add_nc_u32_e32 v105, s2, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v99, s18, v106 :: v_dual_mul_f32 v100, 0x3fb8aa3b, v101
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_mul_f32_e32 v101, 0x3fb8aa3b, v112
	.loc	1 763 34 is_stmt 1              ; attention.py:763:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v21
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[105:106], null, v105, s17, v[0:1]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v100, s18, v108 :: v_dual_fmac_f32 v101, s18, v110
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s2, s0, s2
	v_cndmask_b32_e64 v21, 0, 1, s5
	v_cndmask_b32_e64 v18, 0, 1, s2
	v_add_nc_u32_e32 v104, 0, v64
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v110, 0x80000000, v105, s1
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v105, s3, v0, 1
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v19
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	v_lshlrev_b16 v18.l, 8, v18.l
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	v_dual_mul_f32 v23, 0x3fb8aa3b, v102 :: v_dual_fmac_f32 v22, s18, v107
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v24, s18, v111
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v18.l, v20.l, v18.l
	v_cndmask_b32_e64 v19, 0, 1, s3
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v23, s18, v109
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v111, 0x80000000, v105, s1
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v107.l, 0
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v18.h, 8, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v108.h, v107.l
	v_mov_b16_e32 v109.h, v107.l
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v18.h, v21.l, v18.h
	ds_store_b16 v103, v18
	ds_store_b16_d16_hi v91, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v18, v84
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v85
	ds_load_u16_d16 v19, v104
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v19, v83
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v20.l, 1, v18.l
	v_and_b16 v20.h, 1, v18.h
	v_lshrrev_b16 v18.l, 8, v18.l
	v_lshrrev_b16 v18.h, 8, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s6, 1, v20.l
	v_and_b16 v20.l, 1, v19.l
	v_lshrrev_b16 v19.l, 8, v19.l
	v_cmp_eq_u16_e64 s7, 1, v20.h
	v_lshrrev_b16 v20.h, 8, v19.h
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v19.l, 1, v19.l
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s8, 1, v20.l
	v_cmp_eq_u16_e64 s9, 1, v19.h
	v_cmp_eq_u16_e64 s10, 1, v19.l
	v_cmp_eq_u16_e64 s12, 1, v18.l
	v_cmp_eq_u16_e64 s11, 1, v20.h
	v_cmp_eq_u16_e64 s13, 1, v18.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v98, 0xff800000, v98, s8
	v_cndmask_b32_e64 v103, 0xff800000, v99, s9
	v_cndmask_b32_e64 v99, 0xff800000, v97, s10
	v_cndmask_b32_e64 v104, 0xff800000, v22, s11
	v_cndmask_b32_e64 v100, 0xff800000, v100, s6
	v_cndmask_b32_e64 v105, 0xff800000, v101, s7
	v_cndmask_b32_e64 v101, 0xff800000, v23, s12
	v_cndmask_b32_e64 v106, 0xff800000, v24, s13
	ds_store_b64 v96, v[98:99]
	ds_store_b64 v88, v[103:104]
	ds_store_b64 v89, v[100:101]
	ds_store_b64 v90, v[105:106]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v110, v110, s[28:31], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[96:97], v111, s[36:39], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v18, v98, v99, v103
	v_max3_f32 v19, v104, v100, v101
	v_max_f32_e32 v20, v105, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max3_f32 v22, v18, v19, v20
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b64 v[18:21], v82 offset1:32
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v23, v22, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp4:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v127, v95, v22, v23
	.loc	1 815 23                        ; attention.py:815:23
	v_add_nc_u32_e32 v102, v65, v61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v22, v98, v127
	v_sub_f32_e32 v23, v99, v127
	v_sub_f32_e32 v98, v104, v127
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v104, v95, v127
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v99, v100, v127
	v_sub_f32_e32 v100, v101, v127
	v_sub_f32_e32 v101, v105, v127
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v22, v22
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v104, v104
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v23, v23
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v105.h, v107.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v24, v103, v127
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v98, v98
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v103, v106, v127
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v101, v101
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v95, 0, v104, s14
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v22, 0, v22, s8
	v_cndmask_b32_e64 v23, 0, v23, s10
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v103, v103
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v98, 0, v98, s11
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	ds_store_b32 v70, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v95, v22, 16, 1
	v_bfe_u32 v104, v23, 16, 1
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v24, 0, v24, s9
	v_cndmask_b32_e64 v99, 0, v99, s6
	v_cndmask_b32_e64 v100, 0, v100, s12
	v_cndmask_b32_e64 v101, 0, v101, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v22, v22
	v_cmp_o_f32_e64 s7, v23, v23
	v_add3_u32 v22, v22, v95, 0x7fff
	v_bfe_u32 v95, v24, 16, 1
	v_add3_u32 v23, v23, v104, 0x7fff
	v_bfe_u32 v104, v98, 16, 1
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v103, 0, v103, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v24, v24
	v_cmp_o_f32_e64 s9, v98, v98
	v_add3_u32 v24, v24, v95, 0x7fff
	v_bfe_u32 v95, v99, 16, 1
	v_add3_u32 v98, v98, v104, 0x7fff
	v_bfe_u32 v104, v100, 16, 1
	v_cmp_o_f32_e64 s10, v99, v99
	v_cmp_o_f32_e64 s11, v100, v100
	v_add3_u32 v95, v99, v95, 0x7fff
	v_bfe_u32 v99, v101, 16, 1
	v_add3_u32 v100, v100, v104, 0x7fff
	v_bfe_u32 v104, v103, 16, 1
	v_cmp_o_f32_e64 s12, v101, v101
	v_cmp_o_f32_e64 s13, v103, v103
	v_add3_u32 v99, v101, v99, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s6
	v_add3_u32 v103, v103, v104, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s7
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s8
	v_cndmask_b16 v23.h, 0x7fff, v98.h, s9
	v_cndmask_b16 v24.l, 0x7fff, v95.h, s10
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v101, v102
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v24.h, 0x7fff, v100.h, s11
	v_cndmask_b16 v95.l, 0x7fff, v99.h, s12
	v_cndmask_b16 v95.h, 0x7fff, v103.h, s13
	ds_store_b16 v71, v22
	ds_store_b16_d16_hi v71, v22 offset:128
	ds_store_b16 v71, v23 offset:256
	ds_store_b16_d16_hi v71, v23 offset:384
	ds_store_b16 v71, v24 offset:512
	ds_store_b16_d16_hi v71, v24 offset:640
	ds_store_b16 v71, v95 offset:768
	ds_store_b16_d16_hi v71, v95 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v101
	v_mul_f32_e32 v1, v1, v101
	v_mul_f32_e32 v3, v3, v101
	v_mul_f32_e32 v14, v14, v101
	v_mul_f32_e32 v16, v16, v101
	v_mul_f32_e32 v5, v5, v101
	v_mul_f32_e32 v7, v7, v101
	v_mul_f32_e32 v9, v9, v101
	v_mul_f32_e32 v11, v11, v101
	v_mul_f32_e32 v13, v13, v101
	v_mul_f32_e32 v15, v15, v101
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(1)
	v_and_b16 v22.l, v110.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v22.h, 4, v110.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v95, 8, v110
	v_bfe_i32 v24, v110, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v95.h, v97.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s6, 7, v22.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v22.h, v22.h, 15
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v98, 0xffff0000, v96
	v_mov_b16_e32 v107.h, v96.l
	v_and_b32_e32 v96, 0xffff0000, v97
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v23.h, 0, -16, s6
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v97.l, v110.h
	v_bfe_i32 v103, v95, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v24.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v23.l, v110.h, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v104.l, v22.l, v23.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v22.l, v22.h, -16
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v99, 24, v110
	v_bfe_i32 v97, v97, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v24.l, v103.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s6, 7, v23.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v105.l, v22.h, v22.l, s7
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v22.l, 4, v95.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v22.h, v95.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v24.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v103, v99, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v24.l, v97.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v22.l, v22.l, 15
	v_lshrrev_b32_e32 v100, 20, v110
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v104, v104, 0, 16
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v95.l, v103.l
	v_cmp_gt_i16_e64 s8, 0, v24.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v24.l, 0, -16, s6
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s6, 7, v22.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v24.h, v22.l, -16
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v23.h, v100.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s9, 0, v95.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v97.l, v23.l, v24.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v23.l, v99.l, 15
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v95.l, v22.l, v24.h, s7
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v22.l, 0, -16, s6
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v24.l, 4, v99.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v97, v97, 0, 16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s6, 7, v23.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v99.l, v22.h, v22.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v22.l, v23.h, -16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v22.h, v107.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v99, v99, 0, 16
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b16 v100.l, v23.h, v22.l, s8
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v22.l, 0, -16, s6
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v23.h, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v23.l, v23.l, v22.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v22.l, v24.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v103, v23, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v22.l, v24.l, v22.l, s9
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v24, v95, 0, 16
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v95.l, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v97, v95, v97 :: v_dual_mul_f32 v24, v98, v24
	v_mul_f32_e32 v98, v98, v99
	v_bfe_i32 v99, v100, 0, 16
	v_bfe_i32 v100, v22, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s8, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v23.l, v98.h
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s10, v98, v98
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v95, v95, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v99.h, v107.l
	v_mov_b16_e32 v99.l, v97.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v100, v96, v100
	v_mul_f32_e32 v96, v96, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v103.h, v107.l
	v_mov_b16_e32 v103.l, v95.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v104, v107, v104 :: v_dual_and_b32 v99, 1, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v22.l, v24.h
	v_cmp_o_f32_e64 s13, v96, v96
	v_add3_u32 v23, v98, v23, 0x7fff
	v_cmp_o_f32_e64 s9, v24, v24
	v_add3_u32 v97, v97, v99, 0x7fff
	v_and_b32_e32 v99, 1, v103
	v_mov_b16_e32 v108.l, v104.h
	v_cmp_o_f32_e64 s6, v104, v104
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s11, v95, v95
	v_cmp_o_f32_e64 s12, v100, v100
	v_and_b32_e32 v106, 1, v108
	v_add3_u32 v95, v95, v99, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v97.h, s8
	v_cndmask_b16 v97.l, 0x7fff, v23.h, s10
	v_add3_u32 v104, v104, v106, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v106, v105, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v105.l, v100.h
	v_cndmask_b16 v97.h, 0x7fff, v22.h, s9
	v_cndmask_b16 v22.h, 0x7fff, v95.h, s11
	v_cndmask_b16 v24.l, 0x7fff, v104.h, s6
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v103, 1, v105
	v_mov_b32_e32 v95, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v106, v107, v106
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v107.h, v107.l
	v_mov_b16_e32 v107.l, v96.h
	v_add3_u32 v98, v100, v103, 0x7fff
	v_and_b32_e32 v105, 1, v107
	v_mov_b16_e32 v109.l, v106.h
	v_cmp_o_f32_e64 s7, v106, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v23.h, 0x7fff, v98.h, s12
	v_add3_u32 v96, v96, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v108, 1, v109
	v_cndmask_b16 v23.l, 0x7fff, v96.h, s13
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v106, v106, v108, 0x7fff
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	ds_load_u16_d16 v103, v72
	ds_load_u16_d16 v104, v72 offset:128
	ds_load_u16_d16 v105, v72 offset:256
	ds_load_u16_d16 v106, v72 offset:384
	ds_load_u16_d16 v107, v72 offset:512
	ds_load_u16_d16 v108, v72 offset:640
	ds_load_u16_d16 v109, v72 offset:768
	ds_load_u16_d16 v110, v72 offset:896
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v24.h, 0x7fff, v106.h, s7
	.loc	1 816 30                        ; attention.py:816:30
	ds_load_u16_d16_hi v103, v72 offset:64
	ds_load_u16_d16_hi v104, v72 offset:192
	ds_load_u16_d16_hi v105, v72 offset:320
	ds_load_u16_d16_hi v106, v72 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v72 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v72 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v72 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v72 offset:960
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v73, v24, v97 offset1:8
	ds_store_2addr_b32 v73, v22, v23 offset0:16 offset1:24
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v22, v20, v20 :: v_dual_max_f32 v23, v18, v18
.Ltmp6:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[115:118], v86
	ds_load_b128 v[111:114], v119
	ds_load_b128 v[119:122], v119 offset:1024
	ds_load_b128 v[123:126], v86 offset:1024
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v22, v22, v19, v21
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, v22, v23
.Ltmp10:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v4, v4, v101 :: v_dual_mov_b32 v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v2, v2, v101 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v22, v22, v23 :: v_dual_max_f32 v23, v92, v92
.Ltmp14:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v92, v23, v22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v8, v8, v101 :: v_dual_sub_f32 v19, v19, v92
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v18, v18, v92
	v_sub_f32_e32 v20, v20, v92
	v_sub_f32_e32 v21, v21, v92
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[111:118], v[103:110], v[1:8]
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v19, 0, v19, s2
	v_cndmask_b32_e64 v18, 0, v18, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v94
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp16:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v20, v21
	v_mov_b32_e32 v21, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v20, 0, v20, s3
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v18, v18, v19
.Ltmp18:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v19, v94, v94
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v20, v18 :: v_dual_max_f32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v22, v94, v19
	v_mov_b32_e32 v94, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp22:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v20, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v22, v18
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v101
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s2, s23, 16
	s_cmpk_lt_u32 s23, 0x7f0
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v93, v18, v22
.Ltmp26:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v101
	s_mov_b32 s23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v93, v21, v20
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[119:126], v[103:110], v[9:16]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_add_nc_u32_e32 v0, 0, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b32 v0, v93
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v17, v102
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 2, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v18, v0, v60
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 32, v58
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s22, v18
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v19
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v19, null, v17, v17, v1
	v_div_scale_f32 v21, null, v17, v17, v2
	v_div_scale_f32 v25, null, v17, v17, v4
	v_rcp_f32_e32 v27, v19
	v_div_scale_f32 v23, null, v17, v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v21
	v_rcp_f32_e32 v30, v25
	v_div_scale_f32 v20, vcc_lo, v1, v17, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v29, v23
	v_div_scale_f32 v31, null, v17, v17, v5
	v_fma_f32 v34, -v19, v27, 1.0
	v_div_scale_f32 v24, s2, v3, v17, v3
	v_fma_f32 v35, -v21, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v25, v30, 1.0
	v_fmac_f32_e32 v27, v34, v27
	v_rcp_f32_e32 v37, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v23, v29, 1.0
	v_fmac_f32_e32 v28, v35, v28
	v_dual_fmac_f32 v30, v38, v30 :: v_dual_mul_f32 v35, v20, v27
	v_div_scale_f32 v22, s1, v2, v17, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v26, s3, v4, v17, v4
	v_fma_f32 v41, -v19, v35, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v31, v37, 1.0
	v_mul_f32_e32 v38, v24, v29
	v_div_scale_f32 v32, s4, v5, v17, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v35, v41, v27 :: v_dual_mul_f32 v36, v22, v28
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v33, null, v17, v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v19, v35, v20
	v_dual_mul_f32 v40, v26, v30 :: v_dual_mul_f32 v41, v32, v37
	v_fma_f32 v42, -v21, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v19, v19, v27, v35
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v23, v38, v24
	v_fma_f32 v39, -v25, v40, v26
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v19, v17, v1
	v_fma_f32 v19, -v31, v41, v32
	v_fmac_f32_e32 v36, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v19, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v21, v36, v22
	v_fma_f32 v22, -v33, v34, 1.0
	v_div_fmas_f32 v20, v20, v28, v36
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v22, v34
	v_div_scale_f32 v28, null, v17, v17, v9
	v_div_fixup_f32 v2, v20, v17, v2
	v_div_scale_f32 v20, s2, v6, v17, v6
	v_fmac_f32_e32 v38, v43, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v19, v20, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v23, v38, v24
	v_div_scale_f32 v23, null, v17, v17, v7
	v_div_fmas_f32 v21, v21, v29, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v21, v17, v3
	v_rcp_f32_e32 v21, v23
	v_fmac_f32_e32 v40, v39, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v24, -v25, v40, v26
	v_fma_f32 v25, -v33, v19, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v21, 1.0
	v_fmac_f32_e32 v21, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v24, v30, v40
	v_div_scale_f32 v24, null, v17, v17, v8
	v_div_scale_f32 v30, null, v17, v17, v10
	v_div_fixup_f32 v4, v22, v17, v4
	v_fma_f32 v22, -v31, v41, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v27, v24
	v_rcp_f32_e32 v26, v28
	v_rcp_f32_e32 v32, v30
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v22, v22, v37, v41
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v5, v22, v17, v5
	v_fma_f32 v22, -v24, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v28, v26, 1.0
	v_fma_f32 v35, -v30, v32, 1.0
	v_fmac_f32_e32 v19, v25, v34
	v_div_scale_f32 v25, s3, v7, v17, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v22, v27 :: v_dual_fmac_f32 v26, v31, v26
	v_div_scale_f32 v31, null, v17, v17, v11
	v_dual_mul_f32 v29, v25, v21 :: v_dual_fmac_f32 v32, v35, v32
	v_fma_f32 v20, -v33, v19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v31
	v_div_scale_f32 v22, s4, v8, v17, v8
	v_div_scale_f32 v35, s5, v10, v17, v10
	v_div_fmas_f32 v19, v20, v34, v19
	v_fma_f32 v20, -v23, v29, v25
	v_div_scale_f32 v34, s2, v9, v17, v9
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v19, v17, v6
	v_fmac_f32_e32 v29, v20, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v19, -v23, v29, v25
	v_fma_f32 v25, -v31, v36, 1.0
	v_mul_f32_e32 v33, v22, v27
	v_mul_f32_e32 v23, v35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v21, v29
	v_fmac_f32_e32 v36, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v24, v33, v22
	v_mul_f32_e32 v37, v34, v26
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v25, null, v17, v17, v12
	v_fmac_f32_e32 v33, v20, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v28, v37, v34
	v_div_fixup_f32 v7, v19, v17, v7
	v_fma_f32 v21, -v24, v33, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v20, v26
	v_fma_f32 v20, -v30, v23, v35
	v_div_scale_f32 v22, s3, v11, v17, v11
	v_div_fmas_f32 v21, v21, v27, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v28, v37, v34
	v_fmac_f32_e32 v23, v20, v32
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v20, v22, v36
	v_rcp_f32_e32 v28, v25
	v_div_fmas_f32 v24, v24, v26, v37
	v_fma_f32 v26, -v30, v23, v35
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v27, -v31, v20, v22
	v_div_fixup_f32 v8, v21, v17, v8
	v_div_scale_f32 v21, null, v17, v17, v13
	v_div_fmas_f32 v23, v26, v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v27, v36
	v_div_scale_f32 v30, null, v17, v17, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v23, v17, v10
	v_div_scale_f32 v23, null, v17, v17, v15
	v_fma_f32 v19, -v31, v20, v22
	v_fma_f32 v22, -v25, v28, 1.0
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_div_fixup_f32 v9, v24, v17, v9
	v_div_fmas_f32 v19, v19, v36, v20
	v_rcp_f32_e32 v20, v21
	v_fmac_f32_e32 v28, v22, v28
	v_div_scale_f32 v22, null, v17, v17, v14
	v_div_scale_f32 v24, vcc_lo, v12, v17, v12
	v_div_fixup_f32 v11, v19, v17, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v23, v27, 1.0
	v_rcp_f32_e32 v26, v22
	v_fma_f32 v36, -v30, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v21, v20, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s4, v15, v17, v15
	v_fmac_f32_e32 v20, v19, v20
	v_div_scale_f32 v19, s2, v13, v17, v13
	v_fmac_f32_e32 v32, v36, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v38, v34, v27 :: v_dual_mul_f32 v29, v24, v28
	v_fma_f32 v31, -v22, v26, 1.0
	v_mul_f32_e32 v35, v19, v20
	v_div_scale_f32 v36, s5, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v25, v29, v24
	v_fmac_f32_e32 v26, v31, v26
	v_div_scale_f32 v31, s3, v14, v17, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v36, v32
	v_fmac_f32_e32 v29, v33, v28
	v_fma_f32 v33, -v21, v35, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v31, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v24, -v25, v29, v24
	v_fmac_f32_e32 v35, v33, v20
	v_fma_f32 v25, -v22, v37, v31
	v_fma_f32 v33, -v23, v38, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v24, v24, v28, v29
	v_fma_f32 v19, -v21, v35, v19
	v_fma_f32 v21, -v30, v39, v36
	v_fmac_f32_e32 v37, v25, v26
	v_fmac_f32_e32 v38, v33, v27
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v24, v17, v12
	v_fmac_f32_e32 v39, v21, v32
	v_div_fmas_f32 v19, v19, v20, v35
	v_fma_f32 v20, -v22, v37, v31
	v_fma_f32 v21, -v23, v38, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v22, -v30, v39, v36
	v_div_fixup_f32 v13, v19, v17, v13
	v_div_fmas_f32 v20, v20, v26, v37
	s_mov_b32 vcc_lo, s4
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v19, v3, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v21, v21, v27, v38
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v20, v17, v14
	v_div_fmas_f32 v22, v22, v32, v39
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v15, v21, v17, v15
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v20, v4, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v16, v22, v17, v16
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v17, s15, v18
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s4, v4, v4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v1, v2, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v3, v19, 0x7fff
	v_add3_u32 v3, v4, v20, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_cmp_o_f32_e64 s5, v16, v16
	v_cndmask_b16 v18.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v1, v5, v1, 0x7fff
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v3, v7, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v9, 16, 1
	v_bfe_u32 v6, v10, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s4
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v4, v9, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v10, v10
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v11, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v13, 16, 1
	v_add3_u32 v5, v11, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v7, v12, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_add3_u32 v6, v13, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v9, v15, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s4
	v_add3_u32 v7, v14, v8, 0x7fff
	v_add3_u32 v8, v15, v9, 0x7fff
	v_bfe_u32 v9, v16, 16, 1
	v_cmp_eq_u32_e64 s4, 0, v59
	v_mov_b32_e32 v10, 0x5410
	v_mov_b32_e32 v11, 0x7632
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s3, v15, v15
	v_add3_u32 v9, v16, v9, 0x7fff
	v_cndmask_b32_e64 v10, 0x1054, v10, s4
	v_cndmask_b32_e64 v11, 0x3276, v11, s4
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s5
	v_lshl_or_b32 v8, v10, 8, v10
	v_lshl_or_b32 v9, v11, 8, v11
	v_cndmask_b32_e64 v10, v3, v2, s4
	v_cndmask_b32_e64 v2, v2, v3, s4
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v17, s17, v17
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v3, 0x540054, v8
	v_and_b32_e32 v8, 0x760076, v9
	v_cndmask_b32_e64 v9, v6, v4, s4
	v_cndmask_b32_e64 v4, v4, v6, s4
	s_mov_b32 s3, 0x76543210
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v6, v8, 4, v8
	v_cndmask_b32_e64 v11, v7, v5, s4
	v_cndmask_b32_e64 v5, v5, v7, s4
	v_permlanex16_b32 v14, v4, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x5040504, v3
	v_and_b32_e32 v13, 0x7060706, v6
	v_permlanex16_b32 v6, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v12, v1, v18, s4
	v_cndmask_b32_e64 v1, v18, v1, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s17, v58
	v_cmp_gt_i32_e64 s2, s17, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v15, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v10, v8
	v_perm_b32 v4, v6, v10, v13
	v_perm_b32 v5, v14, v9, v8
	v_perm_b32 v6, v14, v9, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v9, v17, v58, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v7, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v17, v0, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v7, v12, v8
	v_perm_b32 v2, v7, v12, v13
	v_perm_b32 v7, v15, v11, v8
	v_perm_b32 v8, v15, v11, v13
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v0, s[20:23], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp27:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 128
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
		.amdhsa_inst_pref_size 56
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 128
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7052
; TotalNumSgprs: 46
; NumVgprs: 128
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 128
; Occupancy: 10
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     128
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
